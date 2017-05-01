FROM phusion/baseimage:latest
LABEL version="1.0"

# Change repository mirror to THAILAND
RUN printf "deb http://mirror1.ku.ac.th/ubuntu xenial main restricted universe multiverse\n" > /etc/apt/sources.list \
      && printf "deb http://mirror1.ku.ac.th/ubuntu xenial-updates main restricted universe multiverse\n" >> /etc/apt/sources.list \
      && printf "deb http://mirror1.ku.ac.th/ubuntu xenial-backports main restricted universe multiverse\n" >> /etc/apt/sources.list \
      && printf "deb http://security.ubuntu.com/ubuntu xenial-security main restricted universe multiverse\n" >> /etc/apt/sources.list \
      && printf "deb-src http://mirror1.ku.ac.th/ubuntu xenial main " >> /etc/apt/sources.list

# Install "PHP Extentions", "libraries", "Software's"
RUN apt-get update && \
    apt-get install -y --allow-downgrades --allow-remove-essential \
        --allow-change-held-packages \
        php-cli \
        php-common \
        php-curl \
        php-json \
        php-xml \
        php-mbstring \
        php-mcrypt \
        php-mysql \
        php-pgsql \
        php-sqlite3 \
        php-zip \
        php-bcmath \
        php-memcached \
        php-gd \
        php-dev \
        pkg-config \
        libcurl4-openssl-dev \
        libedit-dev \
        libssl-dev \
        libxml2-dev \
        xz-utils \
        libsqlite3-dev \
        sqlite3 \
        git \
        curl \
        vim \
        nano \
        mysql-client \
        postgresql-client \
    && apt-get clean

# Install Node.js
RUN curl -sL https://deb.nodesource.com/setup_6.x | bash - && apt-get install -y nodejs

# Install Composer and export its path to bin
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer \
    && echo 'export PATH="$PATH:$HOME/.composer/vendor/bin"' >> ~/.bashrc && /bin/bash -c "source ~/.bashrc"

#Install Laravel
RUN composer global require "laravel/installer"

WORKDIR /usr/src/