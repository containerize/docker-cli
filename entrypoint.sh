#!/bin/bash

# generate host keys if not present & start sshd

if [ ! -z ${SSH_ENABLE} ]; then
    echo "enable ssh"
    ssh-keygen -A
    /usr/sbin/sshd
else
    echo "disable ssh"
fi

exec "$@"
