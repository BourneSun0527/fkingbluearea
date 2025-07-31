#!/bin/bash

# SGLang 容器启动脚本
# 适用于华为 Ascend NPU 环境

# 容器名称
CONTAINER_NAME="sglang_sbw"

# 镜像名称
IMAGE_NAME="sglang:sbw"

# 检查是否已有同名容器，如果有则删除
echo "🔍 正在检查是否已有容器 $CONTAINER_NAME..."
if docker ps -a | grep -q "$CONTAINER_NAME"; then
    echo "🔄 停止并删除已有容器: $CONTAINER_NAME"
    docker stop "$CONTAINER_NAME" > /dev/null 2>&1 || true
    docker rm "$CONTAINER_NAME" > /dev/null 2>&1
    echo "✅ 旧容器已清理"
else
    echo "🟢 无旧容器，继续启动..."
fi

# 启动新容器
echo "🚀 正在启动 SGLang 容器..."
docker run -itd \
  --name "$CONTAINER_NAME" \
  --shm-size=20g \
  --privileged=true \
  --net=host \
  --ipc=host \
  -v /var/queue_schedule:/var/queue_schedule \
  -v /usr/local/sbin:/usr/local/sbin \
  -v /data:/data \
  -v /etc/ascend_install.info:/etc/ascend_install.info \
  -v /home:/home \
  -v /usr/local/bin/npu-smi:/usr/local/bin/npu-smi \
  -v /usr/local/Ascend/driver:/usr/local/Ascend/driver \
  -v /usr/local/Ascend/firmware:/usr/local/Ascend/firmware \
  --device=/dev/davinci0:/dev/davinci0 \
  --device=/dev/davinci1:/dev/davinci1 \
  --device=/dev/davinci2:/dev/davinci2 \
  --device=/dev/davinci3:/dev/davinci3 \
  --device=/dev/davinci4:/dev/davinci4 \
  --device=/dev/davinci5:/dev/davinci5 \
  --device=/dev/davinci6:/dev/davinci6 \
  --device=/dev/davinci7:/dev/davinci7 \
  --device=/dev/davinci8:/dev/davinci8 \
  --device=/dev/davinci9:/dev/davinci9 \
  --device=/dev/davinci10:/dev/davinci10 \
  --device=/dev/davinci11:/dev/davinci11 \
  --device=/dev/davinci12:/dev/davinci12 \
  --device=/dev/davinci13:/dev/davinci13 \
  --device=/dev/davinci14:/dev/davinci14 \
  --device=/dev/davinci15:/dev/davinci15 \
  --device=/dev/davinci_manager:/dev/davinci_manager \
  --device=/dev/devmm_svm:/dev/devmm_svm \
  --device=/dev/hisi_hdc:/dev/hisi_hdc \
  "$IMAGE_NAME"

# 检查启动是否成功
if [ $? -eq 0 ]; then
  echo "🎉 容器 $CONTAINER_NAME 启动成功！"
  echo "💡 使用以下命令查看日志："
  echo "   docker logs -f $CONTAINER_NAME"
  echo "💡 进入容器："
  echo "   docker exec -it $CONTAINER_NAME bash"
else
  echo "❌ 容器启动失败，请检查镜像是否存在或设备权限。"
  exit 1
fi
