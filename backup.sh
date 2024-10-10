#!/bin/bash
#Backup for container db
docker compose exec db bash -c "mysqldump -uroot -p\${MYSQL_ROOT_PASSWORD} sakila > /backup/sakila.sql"
