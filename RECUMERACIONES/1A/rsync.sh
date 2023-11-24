#!/bin/bash
apt-get update
apt-get install -y tar.gz
apt-get install -y sshpass
apt-get install -y rsync
directorio="/home/luis/trabajos"
destino="vagrant@192.168.20.102:/home/luis/trabajos.tar.gz"
tar czf "/home/luis/trabajos.tar.gz" $directorio
sshpass -p 'vagrant' rsync -avc -e ssh "/home/luis/trabajos.tar.gz" "$destino"
