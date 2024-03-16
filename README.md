# TC1
To build a specific docker file with a custom name:
```
docker build -f Dockerfile2 -t your_image_name .
```


Para entrar a un contenedor:
```
docker exec -ti nombre bash
```

Para entrar como root:
```
sudo docker exec -u root -ti sad_haibt bash
```


To specify the dockerfile:
```
docker build -t name -f Dockerfile2 ???
```

To run it with a name:
```
docker run -dti --name nombre image
```

To add an environment variable, you need to add
```
-e "variable=value"
```

---
```
sudo docker build -t env -f Dockerfile2 .

sudo docker run -d --name env env

sudo docker exec -ti env bash
```
---


## jenkins
. carlos

. 1712253


After pulling the Jenkins image using `docker pull jenkins/jenkins`, you can create a Docker container from this image using the `docker run` command. 

Here's an example:

```bash
docker run -d -p 8080:8080 -p 50000:50000 --name jenkins jenkins/jenkins
```

Here's what each part of the command does:

- `docker run`: This is the command to start a new Docker container.
- `-d`: This option starts the container in detached mode, which means it runs in the background.
- `-p 8080:8080 -p 50000:50000`: These options map port 8080 and port 50000 inside the Docker container to port 8080 and port 50000 on your host machine. Jenkins runs on port 8080 and it uses port 50000 for slave agents.
- `--name myjenkins`: This option sets the name of the container to `myjenkins`.
- `jenkins/jenkins`: This is the name of the Docker image to use to create the container.

After running this command, you should have a Jenkins server running in a Docker container, and you can access it by navigating to `http://localhost:8080` in a web browser on your host machine.

---

# DB
Levantar y crear una db
**alumno**\
```
sudo docker run --name db -e POSTGRES_PASSWORD=1712253 -p 117:5432 -d postgres

**
The format is -p hostPort:containerPort.

The -p 117:5432 option is mapping port 5432 inside the Docker container to port 117 on your host machine.
**

# creating the database
sudo docker exec -ti db bash

su postgres
psql
CREATE DATABASE dev;

\c dev

```

---
#Mongo DB
On port 27017
```
docker run --name mongo -p 27017:27017 -d mongo
```

DB client studio 3t


---
#MySQL

```
docker run --name mysql -e MYSQL_ROOT_PASSWORD=1712253 -e MYSQL_DATABASE="docker-db" -e MYSQL_USER="docker-user" -e MYSQL_PASSWORD=1712253 -p 3306:3306 -d mysql
```
when connecting to the db
```
uri...?allowPublicKeyRetrieval=true&useSSL=false
```
