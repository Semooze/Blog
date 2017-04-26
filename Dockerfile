FROM ubuntu:xenial
LABEL version="0.7"
RUN printf "deb http://mirror1.ku.ac.th/ubuntu xenial main restricted universe multiverse\n" > /etc/apt/sources.list \
      && printf "deb http://mirror1.ku.ac.th/ubuntu xenial-updates main restricted universe multiverse\n" >> /etc/apt/sources.list \
      && printf "deb http://mirror1.ku.ac.th/ubuntu xenial-backports main restricted universe multiverse\n" >> /etc/apt/sources.list \
      && printf "deb http://security.ubuntu.com/ubuntu xenial-security main restricted universe multiverse\n" >> /etc/apt/sources.list \
      && printf "deb-src http://mirror1.ku.ac.th/ubuntu xenial main " >> /etc/apt/sources.list \
      && apt-get update && apt-get install -y curl \
      && curl -sL https://deb.nodesource.com/setup_6.x | bash - && apt-get install -y nodejs \
      && apt-get -y install php7.0 \
      && apt-get -y install mysql-client \
      && apt-get install -y git nano && curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer \
      && mkdir /usr/src/app
RUN apt-get install -y php-zip php-mbstring php-xml php-mcrypt php-mysql && composer global require "laravel/installer"
RUN echo 'export PATH="$PATH:$HOME/.composer/vendor/bin"' >> ~/.bashrc && /bin/bash -c "source ~/.bashrc"
COPY ./ /usr/src/app/
WORKDIR /usr/src/app/blog/
RUN mv .env.example .env && composer install