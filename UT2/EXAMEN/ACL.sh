#!/bin/bash 

useradd -m antonio
useradd -m manolo
mkdir -p /home/clientes
mkdir -p /home/bakcups
chmod 644 /home/clientes
chown manolo:antonio /home/clientes
