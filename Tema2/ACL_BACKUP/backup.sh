#!/bin/bash
fecha_backup=$(date "+%Y%m%d")
directorios_backup="/home /etc"
destino_backup= "vagrant@hostB:/home/hostA_$fecha_backup.tar.gz"
tar czf "/home/hostA_$fecha_backup.tar.gz" $directorios_backup
rsync -avc -e ssh "/home/hostA_$fecha_backup.tar.gz" "$destino_backup"



