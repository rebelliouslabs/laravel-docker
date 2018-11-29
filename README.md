# Laravel Local Development

This repo contains a set of docker files and supporting files to run a Lavarel project with docker. This example includes the following services.

- Nginx
- MySql
- Redis


**Contents**

- [Getting started]( #Getting Started)
- [Initial Migrations and Seed Data]( #Initial Migrations and Seed Data)
- [Connecting to the project's database]( #Connecting to the project's database)

## Getting started

To install or be able to use this example within your project download or clone this repo to your computer. When that is complete copy the contents of the `src` folder into the root or base of your project.

To start the web server you need to run the following command.

```
docker-compose up
```

The `docker-compose up` command starts all of the docker containers needed to support a full and robust Laravel stack.

Once the containers are done building or launching your app will be running on [localhost:8000](http://localhost:8000).

## Migrations and Seeding

To run the migrations we need to have access to the `laravel-app` server. To gain access run `docker ps`. This will list all of the current running Docker containers. We need the container id for `laravel-app`. Once you have it run the following command, replacing **#container-id** with the real container id.

```
docker exec -it #container-id bash
```

This will start a bash client in the working directory of the project. Once there you have expected but limited control. Good thing is we can run php. So lets run our migration and seed commands to set up our database.

```
php artisan migrate
php artisan db:seed
```

## Connecting to the project's database

Using your favorite desktop database client you can connect to the database using the following credentials.

**host:** 127.0.0.1

**port:** 33062

**username:** laravel_user

**password:** laravel_password

**database:** laravel