## MySQL with docker compose

MySQL container is created with docker compose and create a persistent volume for database.

## docker-compose.yaml:

1.Define the name for the project(optional). Default will be project folder.

`name:`

1.  Add the mysql username, password, db name in the environment file, just the password for now:
    
    ```plaintext
    $ echo MYSQL_ROOT_PASSWORD=your_secret_password > pass.env
    ```
    
2.  Create a persistent volume for mysql data and bind mount for backups in the compose file:
    
    ```plaintext
    volumes:
      - mysql-db:/var/lib/mysql
      - ./backup:/backup
    ```
    
3.  Finally run:  
    `$ docker compose up -d`

