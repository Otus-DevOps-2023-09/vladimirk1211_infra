#!/bin/bash

until apt-get update 2>&1;
do
 sleep 1
done
until apt install mongodb -y 2>&1;
do
 sleep 1
done

systemctl start mongodb
systemctl enable mongodb
