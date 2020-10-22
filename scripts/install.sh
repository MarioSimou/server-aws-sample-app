#!/bin/bash

set -e

sudo tar -C /usr/local -xzf go1.15.3.linux-amd64.tar.gz
echo "export PATH=$PATH:/usr/local/go/bin" >> ~/.bashrc
. ~/.bashrc

go version

exit 0