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


## jenkins
. carlos

. 1712253

---
```
sudo docker build -t env -f Dockerfile2 .

sudo docker run -d --name env env

sudo docker exec -ti env bash
```
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