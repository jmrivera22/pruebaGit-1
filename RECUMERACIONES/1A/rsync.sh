#!/bin/bash
apt-get install -y tar.gz
apt-get install -y rsync
directorio= /home/luis/trabajos
destino= "vagrant@hostB:/home/luis/trabajos.tar.gz"
tar czf "/home/luis/trabajos.tar.gz" $directorio
sshpass -p 'vagrant' rsync -avc -e ssh "/home/luis/trabajos.tar.gz" "$destino"