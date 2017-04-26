# Blog application

This is a simple blog application.This is just simple CRUD app but I'll extending its feature later.

### How to use

__prerequisite__

1. PHP >= 5.6.4
2. MySQL
3. Laravel

In order to install _Laravel_ you can follow these instructions [click](https://laravel.com/docs/5.4/installation)
In order to install _MySQL_ you can follow these instructions [click](https://dev.mysql.com/doc/refman/5.7/en/installing.html)
In order to install php you can follow these instructions [site](http://php.net/manual/en/install.php)


After set up environment you can start application.There are 2 way you can start this application.

_First way is following this step:_

1 Create database named __blog__

    __*Note that__: You can use any name but please make sure that you set corresponding name in seventh step

2 Clone this repository
```
git clone https://github.com/Semooze/Blog.git
```
3 Go to root app directory (blog)
4 Run this command to install dependency packages
```
composer install
```
5 create file named __.env__
6 Run this command to get app's key
```
php artisan key:generate
```
7 Open __.env__ file and write this config in the file (APP_KEY is the key that you got from step 6)
```APP_NAME=Laravel
APP_ENV=local
APP_KEY=[APP_KEY]
APP_DEBUG=false
APP_LOG_LEVEL=debug
APP_URL=http://localhost

DB_CONNECTION=mysql
DB_HOST=[YOUR_DATABASE_HOST]
DB_PORT=[MySQL_PORT]
DB_DATABASE=[YOUR_DATABASE_NAME]
DB_USERNAME=[YOUR_DATABSE_USERNAME]
DB_PASSWORD=[YOUR_DATABSE_PASSWORD]
```

__*Note that__: _default port of MySQL is __3306__ and DB_DATABASE must be the same name that we create in _first_ step (__blog__)

8 Run this command in terminal to migrate and automatically create corresponding tables in the database.
```
php artisan migrate
```
9 Next, Run this command to turn built-in laravel server up (by defualt it will use http://localhost:8000)
```
php artisan serve
```
10 Open browser and type http://localhost:8000 in address bar

_Second way is use docker_. 

1 Clone this repository
```
git clone https://github.com/Semooze/Blog.git
```

2 go inside root project directory (Directory that contains docker-compose.yml and Dockerfile files)

3 checkout to branch docker 

```
git checkout docker
```

4 Run docker compose

```
docker-compose up
```

__Plase make sure that__: your docker compose engine can use docker compose version 2.1 config file
If it work properly you will see something like this [This](assets/InitApp.PNG)

For more information about docker [click](https://www.docker.com/)
