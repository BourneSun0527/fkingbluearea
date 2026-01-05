#pkill -9 python | pkill -9 sglang
echo performance | tee /sys/devices/system/cpu/cpu*/cpufreq/scaling_governor
sysctl -w vm.swappiness=0
sysctl -w kernel.numa_balancing=0
sysctl -w kernel.sched_migration_cost_ns=50000

export SGLANG_SET_CPU_AFFINITY=1
# 设置PYTHONPATH

cd /home/chenxu/sglang
export PYTHONPATH=${PWD}/python:$PYTHONPATH
unset https_proxy
unset http_proxy
unset HTTPS_PROXY
unset HTTP_PROXY
unset ASCEND_LAUNCH_BLOCKING
source /usr/local/Ascend/ascend-toolkit/set_env.sh
source /usr/local/Ascend/nnal/atb/set_env.sh
source /usr/local/Ascend/ascend-toolkit/latest/opp/vendors/customize/bin/set_env.bash
export PATH=/usr/local/Ascend/8.5.0/compiler/bishengir/bin:$PATH

export ASCEND_RT_VISIBLE_DEVICES=4,5,6,7
#export PYTORCH_NPU_ALLOC_CONF=expandable_segments:True

MODEL_PATH=/data/ascend-ci-share-pkking-sglang/modelscope/hub/models/Qwen/Qwen3-30B-A3B-w8a8
MODEL_PATH_SPECULATIVE=/data/ascend-ci-share-pkking-sglang/modelscope/hub/models/Qwen/Qwen3-32B-Eagle3
export SGLANG_DISAGGREGATION_BOOTSTRAP_TIMEOUT=600

LOCAL_HOST1=`hostname -I|awk -F " " '{print$1}'`
LOCAL_HOST2=`hostname -I|awk -F " " '{print$2}'`

echo "${LOCAL_HOST1}"
echo "${LOCAL_HOST2}"

export HCCL_BUFFSIZE=400
export HCCL_SOCKET_IFNAME=lo
export GLOO_SOCKET_IFNAME=lo
export HCCL_OP_EXPANSION_MODE="AIV"
export SGLANG_ENABLE_OVERLAP_PLAN_STREAM=1
export SGLANG_ENABLE_SPEC_V2=1
#export ENABLE_PROFILING=1

python -m sglang.launch_server --model-path $MODEL_PATH \
    --host 127.0.0.1 --port 7239 --trust-remote-code --nnodes 1 --node-rank 0  \
    --attention-backend ascend --device npu  --quantization modelslim  \
    --max-running-requests 78 \
    --disable-radix-cache --speculative-draft-model-quantization unquant \
    --chunked-prefill-size -1 --max-prefill-tokens 65536  \
    --speculative-algorithm EAGLE3 --speculative-draft-model-path $MODEL_PATH_SPECULATIVE \
    --speculative-num-steps 2 --speculative-eagle-topk 1 --speculative-num-draft-tokens 3 \
    --tp-size 4  --mem-fraction-static 0.72 --cuda-graph-bs 16 32 64 68 72 78 --dtype bfloat16

#--disable-cuda-graph --disable-radix-cache
#--speculative-algorithm EAGLE3 --speculative-draft-model-path /mnt/share/chenxu/Qwen3-32B-Eagle3 \
#--speculative-num-steps 1 --speculative-eagle-topk 1 --speculative-num-draft-tokens 2 \

exit 1
python3 -m sglang.bench_serving     --dataset-path /home/s30055683/GSM8K-in520-bs2.jsonl     --dataset-name gsm8k --backend sglang     --host 127.0.0.1 --port 7239     --max-concurrency 78 --random-output-len 1500 --random-input-len 3500 --num-prompts 312
