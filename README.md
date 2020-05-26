# docker compose for Symfony 5 with Postgresql 12
A simple docker wrapper for Symfony 4.4.*|5 with symfony binary.

## Usage
- install `docker` and `docker-compose`.
  + In Ubuntu 20.04 LTS just run: `sudo apt-get install docker-compose`.
  + [Debian and other OS manuals](https://docs.docker.com/engine/install/debian/).
- clone the repository
- copy `.env.dist` into  `.env`
- set up values for `APP_SRC` and `PROJECT_NAME` vars in `.env` file
- run `docker-compose up -d`

## Components of php container
* PHP 7.4
* Git
* Symfony binary
* composer

## Notes
- it was tested only in Ubuntu/Debian Linux
- this build was created for a dev environment
- php container creates ssh-keys if you need to push commits from non-host env
