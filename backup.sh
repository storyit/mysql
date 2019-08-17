#!/bin/bash

. db.config
fn=`date -d "today" +"%Y_%m_%d_%H:%M"`
mysqldump -h 127.0.0.1 -u root -p$MYSQL_ROOT_PASSWORD main > /var/mysql_backups/$fn.sql
