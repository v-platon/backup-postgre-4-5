#!/bin/bash
now=$(date "+%Y-%m-%d")
dir=$(pwd)
pg_dump database > backup_directory/database-$now.dump 1>/var/log/backup/backup-$now.log 2>/var/log/backup/backup-$now-erros.log

crontab -l > foocron
echo "0 0 * * * rm -rf $dir/script.sh" >> foocron
crontab foocron
rm foocron
