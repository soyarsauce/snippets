#you need to unpack any gzipped dbs

#backup
mysqldump -u root -p dbname > backup_this.sql

#restoring
mysql -u root -p dbname < restore_this.sql
