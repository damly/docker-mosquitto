#!/bin/bash

touch /etc/mosquitto/pwfile.conf

if [ -n "$AUTH_USERNAME" ] && [ -n "$AUTH_PASSWORD" ] ; then
  mosquitto_passwd -b /etc/mosquitto/pwfile.conf ${AUTH_USERNAME} ${AUTH_PASSWORD}
fi

mosquitto -c /etc/mosquitto/mosquitto.conf

