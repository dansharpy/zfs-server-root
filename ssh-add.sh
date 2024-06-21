#!/bin/bash
sudo useradd -gusers -s/bin/bash -d/home/someuser -m someuser
echo 'someuser:abc123' | chpasswd
echo "AllowUsers someuser " >> /etc/ssh/sshd_config
touch /etc/sudoers.d/someuser
echo "someuser  ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers.d/someuser
sudo service sshd restart
sudo service ssh restart
