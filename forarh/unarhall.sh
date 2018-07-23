#!/bin/sh
echo "Enter pass for archive"
openssl enc -rc5-cbc -d -pass stdin -in /usr/backup/lastbackup.rar -out /usr/backup/decbackup.tar.bzip2
mkdir /usr/backup/restore
tar -C /usr/backup/restore -xf /usr/backup/decbackup.tar.bzip2
rm /usr/backup/decbackup.tar.bzip2
mv /usr/backup/restore /usr/backup/restore`date +'%y-%m-%d_%H%M%S'`
