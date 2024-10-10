#!/bin/bash
#Backup for container db
docker compose exec db bash -c "mysqladmin -uroot -p\${MYSQL_ROOT_PASSWORD} create sakila && mysql -uroot -p\${MYSQL_ROOT_PASSWORD} sakila < /backup/sakila.sql"
