# Blog application

This is a simple blog application.Right now, this is just simple CRUD app but I'll extending its feature later.

### How to use

__prerequisite__

1. PHP >= 5.6.4
2. MySQL
3. Laravel

In order to install _Laravel_ you can follow these instructions [click](https://laravel.com/docs/5.4/installation)
In order to install _MySQL_ you can follow these instructions

[Linux](https://dev.mysql.com/doc/refman/5.7/en/linux-installation.html)
[OS X](https://dev.mysql.com/doc/refman/5.7/en/osx-installation.html)
[Windows](https://dev.mysql.com/doc/refman/5.7/en/windows-installation.html)

*If you use ubuntu you can follow this easy step to install php and MySQL [click](https://www.digitalocean.com/community/tutorials/how-to-install-linux-apache-mysql-php-lamp-stack-on-ubuntu).

After set up environment you can start application by following these steps:

1. Create database named __blog__
2. Clone this repository
```
git clone https://github.com/Semooze/Blog.git
```
3. Go to root app directory (blog)
4. Run this command to install dependency packages
```
composer install
```
5. create file named __.env__
6. Run this command to get app's key
```
php artisan key:generate
```
7. Open __.env__ file and write this config in the file (APP_KEY is the key that you got from step 6)
```APP_NAME=Laravel
APP_ENV=local
APP_KEY=[APP_KEY]
APP_DEBUG=false
APP_LOG_LEVEL=debug
APP_URL=http://localhost

DB_CONNECTION=mysql
DB_HOST=[YOUR_DATABASE_HOST]
DB_PORT=3306
DB_DATABASE=blog
DB_USERNAME=[YOUR_DATABSE_USERNAME]
DB_PASSWORD=[YOUR_DATABSE_PASSWORD]
```
Note that: _default port of MySQL is 3306_

8. Run this command in terminal to migrate and automatically create corresponding tables in the database.
```
php artisan migrate
```
8. Next, Run this command to turn built-in laravel server up (by defualt it will use http://localhost:8000)
```
php artisan serve
```
9. Open browser and type http://localhost:8000 in address bar
