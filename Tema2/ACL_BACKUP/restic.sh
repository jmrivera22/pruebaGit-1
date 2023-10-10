#!/bin/bash
fecha=$(date "+%Y%m%d")
restic -r /home /etc --tag backup_$fecha
rsync -avc /home_$fecha.tar,gz vagrant@hostC:/home  



