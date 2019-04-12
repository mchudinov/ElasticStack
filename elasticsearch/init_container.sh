#!/bin/bash

# set -e

sed -i "s/SSH_PORT/$SSH_PORT/g" /etc/ssh/sshd_config
echo "Starting SSH ..."
rc-service sshd start
