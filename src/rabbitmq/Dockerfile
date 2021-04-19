FROM bitnami/rabbitmq:3.8.14
#FROM healthcheck/rabbitmq:alpine
#FROM bitnami/rabbitmq:3.8.14-debian-10-r39
LABEL MAINTAINER='Maksim Kostromin <daggerok@gmail.com>'
RUN rabbitmq-plugins enable rabbitmq_management rabbitmq_stomp --offline
EXPOSE 5672 15672
