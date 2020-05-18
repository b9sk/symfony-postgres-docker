#!/bin/bash
socat TCP-LISTEN:5432,fork TCP:postgres:5432 &
/usr/sbin/php-fpm7.4 -O
