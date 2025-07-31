import socket

def get_local_ip():
    try:
        # 创建一个 socket
        s = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)
        # 连接到一个外部地址（不会实际发送数据）
        s.connect(("8.8.8.8", 80))
        # 获取本机连接时使用的 IP 地址
        local_ip = s.getsockname()[0]
        s.close()
        return local_ip
    except Exception as e:
        print(f"Error getting IP: {e}")
        return None

# 调用函数
ip = get_local_ip()
if ip:
    print(f"Local IP Address: {ip}")
