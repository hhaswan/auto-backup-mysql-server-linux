# Auto backup MySQL server linux
Skenario terdiri dari 2 server : 
1. Database server (192.168.1.100)
2. Backup server (192.168.1.111)

## Beberapa hal penting yang perlu diperhatikan :
* Backup folder /backup-db1
* Buat user tersendiri khusus untuk backup DB
* Keep day 14 hari. Artinya file backup yang lebih dari 14 hari akan terhapus
* File backup tersimpan di local dan diduplikasi ke server backup

Baca selengkapnya di [Blog saya](https://hasbullahmarwan.com/linux-server/script-auto-backup-mysql-linux)
