#!/bin/bash
# Stop all servers and start the server
set -e
cd /usr/share/nginx/html

pm2 stop all
sudo service pm2 stop
sudo rm -rf /root/.pm2
sudo rm -rf /home/username/.pm2
sudo service pm2 start
NODE_ENV=staging pm2 -x -i 1 start server.js