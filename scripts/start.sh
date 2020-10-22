#!/bin/bash

wget -O go1.15.3.linux-amd64.tar.gz https://dl.google.com/go/go1.15.3.linux-amd64.tar.gz
tar -C /usr/local -xzf go1.15.3.linux-amd64.tar.gz
echo "export PATH=$PATH:/usr/local/go/bin" >> ~/.bashrc
. ~/.bashrc

ls -al /home
ls -al /home/ec2-user

go build -o /home/ec2-user/bin/server /home/ec2-user/cmd/server/main.go

/home/ec2-user/bin/server --PORT=80