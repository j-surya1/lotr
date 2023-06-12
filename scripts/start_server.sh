#!/bin/bash
# Stop all servers and start the server
set -e
cd /usr/share/nginx/html
pm2 stop all
pm2 start /home/ubuntu/my-app1/app/index.js