#!/bin/bash
set -e
yum update -y
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.3/install.sh | bash
. ~/.nvm/nvm.sh
nvm install 10