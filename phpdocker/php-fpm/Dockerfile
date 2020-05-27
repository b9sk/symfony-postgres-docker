FROM phpdockerio/php74-fpm:latest
WORKDIR "/application"

# Fix debconf warnings upon build
ARG DEBIAN_FRONTEND=noninteractive

# Install selected extensions and other stuff
RUN apt-get update \
    && apt-get -y --no-install-recommends install git openssh-client vim less make php7.4-pgsql php7.4-intl php7.4-soap php-pear php7.4-dev \
    && apt-get clean; rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* /usr/share/doc/* \
    && curl https://get.symfony.com/cli/installer | bash \
    && mv /root/.symfony/bin/symfony /usr/local/bin/symfony \
    && pecl install mongodb && echo "extension=mongodb.so" | tee /etc/php/7.4/fpm/conf.d/26-mongodb.ini /etc/php/7.4/cli/conf.d/26-mongodb.ini
    
RUN mkdir -p /root/.ssh; ssh-keygen -f /root/.ssh/id_rsa -P ""

CMD ["/autorun.sh"]
