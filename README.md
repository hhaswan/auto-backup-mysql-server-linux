# auto-backup-mysql-server-linux
Skenario terdiri dari 2 serve : 
1. Database server
2. backup server

##Beberapa hal penting yang perlu diperhatikan :
* Backup folder /backup-db1
* Buat user tersendiri khusus untuk backup DB
* Keep day 14 hari. Artinya file backup yang lebih dari 14 hari akan terhapus
* File backup tersimpan di local dan diduplikasi ke server backup
