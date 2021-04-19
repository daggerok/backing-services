FROM mysql:8.0
LABEL MAINTAINER='Maksim Kostromin <daggerok@gmail.com>'
ENV MYSQL_ROOT_PASSWORD='root password'
ADD --chown=mysql my.cnf /etc/mysql/conf/my.cnf
ADD --chown=mysql schema.sql /docker-entrypoint-initdb.d/
EXPOSE 3306
#ENTRYPOINT /usr/local/bin/docker-entrypoint.sh --default-authentication-plugin=mysql_native_password --character-set-server=utf8mb4
