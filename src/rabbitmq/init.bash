#!/usr/bin/env bash

COMPLETED_FILE="$0.completed"

if [ -f "$COMPLETED_FILE" ] ; then
  echo "$0 $(date) $COMPLETED_FILE found, skipping run"
  exit 0
fi

# Wait for RabbitMQ startup
function wait3secForRabbit() {
  TIMEOUT=3
  for (( ; ; )) ; do
    echo "$0 $(date) waiting for rabbitmq startup"
    sleep "$TIMEOUT"
    rabbitmqctl -q node_health_check > /dev/null 2>&1
    if [ "$?" -eq 0 ] ; then
      echo "$0 $(date) rabbitmq is now running"
      break
    fi
  done
}

wait3secForRabbit

rabbitmq-plugins enable --offline rabbitmq_management

rabbitmqctl stop_app
rabbitmqctl reset
rabbitmqctl start_app
rabbitmqctl add_vhost a_vhost
rabbitmqctl add_user a_user a_user_password
rabbitmqctl set_permissions -p a_vhost a_user ".*" ".*" ".*"
rabbitmqctl add_user an_admin an_admin_password
rabbitmqctl set_user_tags an_admin administrator
rabbitmqctl set_permissions an_admin ".*" ".*" ".*"
rabbitmqctl set_permissions -p a_vhost an_admin ".*" ".*" ".*"
rabbitmqctl delete_user 'guest'

touch "$COMPLETED_FILE"
echo "$0 execution done at $(date) -> $COMPLETED_FILE"
