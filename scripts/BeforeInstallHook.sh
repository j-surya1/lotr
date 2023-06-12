#!/bin/bash
set -e
yum update -y
yum install -y gcc-c++ make
curl -sL https://rpm.nodesource.com/setup_10.x | sudo bash -
yum install -y nodejs
