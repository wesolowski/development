#!/usr/bin/env bash


docker exec  development_app_mysql_1 /bin/sh -c 'cd /etc/mysql/conf.d/; chmod 0444 dev.cnf remote-access.cnf'
docker restart development_app_mysql_1

docker cp ./ shopware_data:/app
docker exec  development_app_server_1 /bin/sh -c 'mkdir /.composer;'
docker exec  development_app_server_1 /bin/sh -c 'composer global require hirak/prestissimo'
docker exec  development_app_server_1 /bin/sh -c 'chown application:application /.composer -Rf'
docker exec  development_app_server_1 /bin/sh -c 'chown application:application /app -Rf'