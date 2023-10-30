#!/bin/bash

apt-get update
sleep 10
apt install mongodb -y

systemctl start mongodb
systemctl enable mongodb
