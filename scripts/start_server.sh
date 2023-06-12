#!/bin/bash
# Stop all servers and start the server
set -e
cd /usr/share/nginx/html
pm2 stop all
sudo -E pm2 start server.js