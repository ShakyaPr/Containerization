#!/bin/bash
echo "Loading..."
sleep 5
nginx -c /etc/nginx/nginx.conf -g 'daemon off;'