#!/bin/bash
 
warp-svc > /var/log/warp/log &
(
sleep 10
warp-cli --accept-tos set-mode proxy
warp-cli --accept-tos set-proxy-port 40000
warp-cli --accept-tos connect
) && \
/usr/bin/v2ray -config /etc/v2ray/v2f-config.json
