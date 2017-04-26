#!/bin/bash

#Migrate table and start laravel up

php artisan migrate && php artisan serve --host 0.0.0.0 --port 8001
