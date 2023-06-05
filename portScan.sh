#!/bin/bash

for port in $(seq 1 65535); do
        timeout 1 bash -c "echo '' > /dev/tcp/192.168.0.1/$port" 2>/dev/null && echo "[+] Puerto $port - ABIERTO" &
done; wait
# Remember to change the IP.
