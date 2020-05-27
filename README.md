# docker compose for Symfony 5 with Postgresql 12
A simple docker wrapper for Symfony 4.4.* with symfony binary. Initially composed by https://phpdocker.io/generator

## dev branch notes
- mongodb
- mongodb support by `php` container

## Usage
- install Docker and docker-compose
- clone the repository
- copy `.env.dist` into  `.env`
- set up values for `APP_SRC` and `PROJECT_NAME`
- run docker-compose up -d

## Components of php container
* PHP 7.4
* Git
* Symfony binary
* composer

## Notes
- it was tested only in Ubuntu/Debian Linux
- this build was created for a dev environment
- php container creates ssh-keys if you need to push commits from non-host env
