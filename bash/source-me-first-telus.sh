#!/bin/bash

# first thing "source source-me-first.sh"

export KUBECONFIG=$(readlink -f ./config)

cp KeyPair00001.pem.vault KeyPair00001.pem
ansible-vault decrypt KeyPair00001.pem
chmod 0400 KeyPair00001.pem
eval $(ssh-agent)
ssh-add KeyPair00001.pem
rm -f KeyPair00001.pem

export REGISTRY_AUTH_FILE=$(readlink -f ./podman-auth.json)
# podman will tell you if your credentials are already in the REGISTRY_AUTH_FILE
podman login registry.nfvdev.teluslabs.net
podman login docker.io
