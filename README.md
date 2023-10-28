# vladimirk1211_infra
vladimirk1211 Infra repository

# Homework 4

Data for connect:
```
testapp_IP = 51.250.66.247
testapp_port = 9292
```



# Homework 3
How to connect to the internal computer from my computer with one command:
ssh -i ~/.ssh/appuser -A -J appuser@158.160.127.139 appuser@10.128.0.23

How to connect to the internal computer from my computer from alias:
1. Add record to "~/.ssh/config"
nano ~/.ssh/config
```
Host 10.128.0.23
 ProxyJump  appuser@158.160.127.139
```
2. Use alias
ssh -i ~/.ssh/appuser -A appuser@10.128.0.23

Configs:
```
bastion_IP = 158.160.127.139
someinternalhost_IP = 10.128.0.23
```
