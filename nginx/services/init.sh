#!/bin/bash
echo "Loading..."
sleep 3
nginx -c /etc/nginx/nginx.conf -g 'daemon off;'