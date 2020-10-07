# Backup storage directory
backupfolder=/backup-db1

# MySQL user
user=root01

# MySQL password
password=P@ssw0rd

# Number of days to store the backup
keep_day=14

tanggal=$(date +%Y-%m-%d_%H-%M-%S)
hari=$(date +%Y-%m-%d)

sqlfile=all-database-$tanggal.sql
zipfile=all-database-$tanggal.zip

# Create a backup
cd $backupfolder
sudo mysqldump -u $user -p$password --all-databases > $sqlfile

if [ $? == 0 ]; then
  echo 'Backup SQL berhasil pada '$hari >> log-db.txt
else
  echo 'Backup SQL gagal pada '$hari >> log-db.txt
  exit
fi

# Compress backup
zip $zipfile $sqlfile
if [ $? == 0 ]; then
  echo 'File backup terkompres pada '$hari >> log-db.txt
else
  echo 'File gagal kompres pada '$hari >> log-db.txt
  exit
fi

rm $sqlfile
echo $zipfile ' berhasil backup' >> log-db.txt

# Delete old backups
find $backupfolder -mtime +$keep_day -delete

#copy file backup dan lognya
scp log-db.txt root@192.168.1.111:/backup-db1
scp $zipfile root@192.168.1.111:/backup-db1
