# docker compose for Symfony 4
A simple docker wrapper for Symfony 4.4.* with symfony binary. Initially composed by https://phpdocker.io/generator

## Components
### master (as dev) brunch:
* PHP 7.2
* Xdebug
* Mysql 5.7
* Symfony CLI (inside php-fpm container)
* composer

### prod branch
* Certbot
* mysql-client
* Xdebug is removed

Other items the same as master (dev).

## Certbot usage guide
Go inside nginx container using this command:
```bash
docker-compose exec webserver bash
```
Then run `certbot --nginx`. After running Certbot answer its questions to create a HTTPS certificate.
