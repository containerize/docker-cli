#!/bin/sh

# generate host keys if not present
# ssh-keygen -A

# # check wether a AUTH_KEYS is provided
# if [ ! -z ${AUTH_KEYS} ]; then
#     echo "Environment variable AUTH_KEYS not set"
#     exit 1
# fi
# mkdir -p ~/.ssh

# echo "${AUTH_KEYS}" > ~/.ssh/authorized_keys

exec "$@"
