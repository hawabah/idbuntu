#!/bin/sh

SSHKEY=https://tom.leloop.org/id_rsa-bsf.pub

decho() {
    echo "[+] $@"
}

decho 'Install openssh-server...'
apt-get install -y openssh-server

decho 'Installing SSH keys...'
mkdir -p --mode 0700 /root/.ssh
wget -q $SSHKEY -O /root/.ssh/authorized_keys

decho 'And your IP is:'
hostname -I
