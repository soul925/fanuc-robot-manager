import socket
import concurrent.futures


# -------------------------
# CHECK SINGLE IP
# -------------------------

def check_ip(ip):

    try:
        sock = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
        sock.settimeout(0.25)

        result = sock.connect_ex((ip, 21))

        sock.close()

        if result == 0:
            return ip

    except:
        pass

    return None


# -------------------------
# NETWORK SCAN
# -------------------------

def scan_network(base_ip):

    robots = []

    prefix = ".".join(base_ip.split(".")[:3])

    ip_list = [f"{prefix}.{i}" for i in range(1, 255)]

    # run multi-threaded scan
    with concurrent.futures.ThreadPoolExecutor(max_workers=60) as executor:

        results = executor.map(check_ip, ip_list)

        for r in results:
            if r:
                robots.append(r)

    return robots