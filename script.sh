#!/bin/bash
now=$(date "+%Y-%m-%d")
mkdir /var/log/backup
pg_dump --dbname=postgresql://database_user:1@localhost/database > /home/sadmin/backup_directory/database-$now.dump 1 > /var/log/backup/backup-$now.log 2 > /var/log/backup/backup-$now-erros.log

#crontab -l > foocron
#echo "0 0 * * * rm -rf /home/sadmin/backup-postgre-4-5/script.sh" >> foocron
#crontab foocron
#rm foocron
