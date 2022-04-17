#!/bin/bash
crontab -l > foocron
echo "0 0 * * * rm -rf /home/sadmin/backup-postgre-4-5/script.sh" >> foocron
crontab foocron
rm foocron
