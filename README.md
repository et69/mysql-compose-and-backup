# MySQL with docker compose
MySQL container is created with docker compose and create a persistent volume for database.

## docker-compose.yaml:
1. Define the name for the project(optional). Default will be project folder.
    ```bash
    name:
    ```
2. Add the mysql username, password, db name in the environment file, just the password for now:
   ```bash
   $ echo MYSQL_ROOT_PASSWORD=your_secret_password > pass.env
   ```
3. Create a persistent volume for mysql data and bind mount for backups in the compose.yaml:
    ```bash
    volumes:
      - mysql-db:/var/lib/mysql
      - ./backup:/backup
    ```

4. Finally run:
` $ docker compose up -d`


## Backup and Restore

1. Just a simple script for backup, nothing special:

>Need to escape $ with \\$ or using double quote inside single quote. Using each format in each file.

`$ ./backup.sh`



