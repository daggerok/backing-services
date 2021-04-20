FROM bitnami/rabbitmq:3.8.14-debian-10-r40
LABEL MAINTAINER='Maksim Kostromin <daggerok@gmail.com>'
#RUN rabbitmq-plugins enable rabbitmq_management rabbitmq_stomp --offline # see init.bash script...
EXPOSE 5672 15672
USER 1001
ADD --chown=1001 init.bash /tmp/
RUN chmod +x /tmp/init.bash
ENTRYPOINT ["/bin/bash", "-c", "( /tmp/init.bash & ) && /opt/bitnami/scripts/rabbitmq/entrypoint.sh rabbitmq-server" ]
