#!/bin/bash

wget -O go1.15.3.linux-amd64.tar.gz https://dl.google.com/go/go1.15.3.linux-amd64.tar.gz
tar -C /usr/local -xzf go1.15.3.linux-amd64.tar.gz
echo "export PATH=$PATH:/usr/local/go/bin" >> ~/.bashrc
. ~/.bashrc

cd /home/ec2-user/server
ls -al

go build -o ./bin/server ./cmd/server/main.go

./bin/server --PORT=80