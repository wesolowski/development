#!/usr/bin/env bash


docker exec  shopware_mysql /bin/sh -c "cd /etc/mysql/conf.d/; chmod 0444 dev.cnf remote-access.cnf"
docker restart shopware_mysql

echo "copy"
docker cp ./ shopware_data:/app
docker exec shopware_app /bin/sh -c "rm app/vendor/bin -rf"

echo "Config composer"
docker exec  shopware_app /bin/sh -c "mkdir /.composer;"
docker exec  shopware_app /bin/sh -c "composer global require hirak/prestissimo"
docker exec  shopware_app /bin/sh -c "chown application:application /.composer -Rf"
docker exec  shopware_app /bin/sh -c "chown application:application /app -Rf"

echo "Install"
docker exec -u application shopware_app  /bin/sh -c "cd /app; ./psh.phar install"

docker exec -u application shopware_app /bin/sh -c 'ln -s /app/bin/console /usr/local/bin/console'