#!/bin/bash

# Script para descargar e instalar docker machine en linux

# Instala docker-machine
base=https://github.com/docker/machine/releases/download/v0.14.0 &&
curl -L $base/docker-machine-$(uname -s)-$(uname -m) >/tmp/docker-machine &&
sudo install /tmp/docker-machine /usr/local/bin/docker-machine

# Instala herramientas básicas
base=https://raw.githubusercontent.com/docker/machine/v0.14.0
for i in docker-machine-prompt.bash docker-machine-wrapper.bash docker-machine.bash
do
wget "$base/contrib/completion/bash/${i}" -P /etc/bash_completion.d
done
