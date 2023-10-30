# vladimirk1211_infra
vladimirk1211 Infra repository

# Homework 5

- Перенес наработки с предыдущего ДЗ в директорию config-scripts
- Установил Packer
- Создал сервисный аккаунт в yc
- Делегировал права сервисному аккаунту для Packer
- Создал IAM key и экспортировал его в файл.
- Создал файл шаблон packer ubuntu16.json
- Добавил скрипты install_mongodb.sh и install_ruby.sh в провиженеры
- Создал скрипты install_mongodb.sh и install_ruby.sh
- Провел проверку на ошибки шаблона packer
- Произвел сборку образа из шаблона
- Создал VM на основе образа
- Устновил reddit на созданной VM
- Параметризировал шаблон с помощью файла variables.json и создал альтернативный файл variables.json.examples
  файл variables.json добавил в .gitignore
- Пересоздал VM с помощью параметризированного шаблона

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
