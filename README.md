# vladimirk1211_infra
vladimirk1211 Infra repository

# Homework 10
- В директории ansible создал директорию roles и выполнил команды:
  ansible-galaxy init app
  ansible-galaxy init db
- Сконфигурировал ansible/roles/db
- Сконфигурировал ansible/roles/app
- Установил окружение stage и проверил роли
- Настроил окружения для stage и для prod
- Организовал плейбуки, лишнее убрал в папку Old
- Установил окружение stage и проверил работу окружений
- Установил community роль jdauphant.nginx
- Добавил вызов роли jdauphant.nginx в плейбук app.yml
- Применил плейбук site.yml для окружения stage, приложение доступно по 80 порту
- Создал vault.key и credentials.yml для двух окружений, зашифровал их
- Добавил плейбук для создания пользователей в site.yml
- Настроил окружения для stage, проверил, пользователи появились

# Homework 9
 - Создал файл reddit_app.yml в директории ansible
 - Внес в .gitignore *.retry
 - Сконфигурировал сценарий для MongoDB
 - Создал шаблон конфига MongoDB в templates/mongod.conf.j2
 - Попробовал пробный прогон, получил ошибку
 - Определил переменные, попробовал пробный прогон, успешно
 - Добавил handlers для MongoDB и применил плейбук
 - Создал директорию files внутри директории ansible и добавил туда файл puma.service
 - Дополнил сценарий
 - Добавил шаблон для приложения
 - Задал переменную db_host
 - Применил таски плейбука для приложения
 - Добавил таски для деплоя, выполнил деплой, проверил работу приложения
 - Создал файл reddit_app2.yml и разбил сценарий на два сценария (MongoDB, App)
 - Пересоздал инфраструктуру окружения stage, проверил работу сценариев
 - Добавил сценарий для деплоя приложения в плейбук reddit_app2.yml и проверил сценарий
 - Переименовал reddit_app.yml и reddit_app2.yml
 - В директории ansible создал три новых файла: app.yml, db.yml, deploy.yml
 - Настроил в них соответствующие сценарии
 - Создал файл ansible/site.yml
 - Пересоздал инфраструктуру окружения stage
 - Изменил провижининг в Packer на Ansible
 - Создал новые образовы с использованием новых провижинеров и пересоздал инфраструктуру окружения stage



# Homework 8
 - Проверил версию python и установил ansible
 - Подниял инфраструктуру, описанную в окружении stage
 - Создал инвентори файл ansible/inventory и описал параметры подключения по SSH
 - Проверил пинг через ansible
 - Создал ansible.cfg и упростил inventory
 - Проверил на команде uptime
 - Добавил в inventory группы хостов
 - Проверил на команде ping
 - Создал inventory.yml
 - Проверил на команде ping
 - Посмотрел версии ruby и bundler
 - Посмотрел статус mongodb
 - Установил в машины git и клонировал репозиторий
 - Создал плейбук clone.yml и запустил, было внесено 0 изменений, так как до этого репозиторий уже был склонирован
 - Удалил  "~/reddit"
 - Повторно выполнил плейбук clone.yml, было внесено 1 изменение, так как клон репозитория был удален

# Homework 7
 - Добавил с main.tf ресурсы yandex_vpc_network и yandex_vpc_subnet, затем созда ресурсы и удалил их
 - Добавил ресурс network_interface, затем созда ресурсы и удалил их
 - Создал два новых шаблона db.json и app.json
 - Создал два новых образа VM
 - Вынес конфигурацию их main.tf в app.tf, объявил переменную app_disk_image
 - Вынес конфигурацию их main.tf в db.tf, объявил переменную db_disk_image
 - Создал vpc.tf вынес в него ресурсы yandex_vpc_network и yandex_vpc_subnet
 - Оставил в main.tf только описание провайдера
 - Добавил переменные в outputs и применил новую конфигурацию
 - Создал директорию module, в ней директорию db и app
 - В директориях db и app сконфигурировал файлы main.tf, variables.tf, outputs.tf
 - Удвлил файлы db.tf, app.tf, vpc.tf в директории terraform
 - В файл main.tf добавил вызов модулей
 - Использовал команду terraform get
 - Отредактировал файл outputs.tf и вызвал terraform plan для проверки
 - В директории terrafrom создал две директории: stage и prod
 - В директории stage и prod скопировал файлы main.tf, variables.tf, outputs.tf, terraform.tfvars, key.json
 - Поменял пути к модулям в main.tf
 - В директории stage и prod выполнил: terraform get, terraform init, terraform plan, terraform apply, terraform destroy
 - Удалил из папки terraform файлы main.tf, outputs.tf, terraform.tfvars, variables.tf
 - Параметризировал конфигурацию модулей
 - Отфоровал конфигурационные файлы, используя команду terraform fmt

# Homework 6

- Пересобрал образ из прерыдущего ДЗ
- Установил terraform
- Добавил файлы в .gitignore
- Создал сервисный аккаунт
- Установил плагин на terraform для провайдера YC
- Сконфигурировал файл main.tf и создал VM
- Сгенерировал ключи для пользователя ubuntu
- Пересоздал VM с метаданными пользователя ubuntu
- Сконфигурировал файл outputs.tf
- Добавил провиженеры, файл puma.service, файл deploy.sh, раздел connection и пересоздал ресурс VM
- Создал файл variables.tf, параметризировал main.tf, создал файл terraform.tfvars и перксоздал VM
- Определил переменную private_key_path, переменную для зоны оставил по умолчанию.
- Отформатировал все конфигурационные файлы используя команду terraform fmt, создал файл terraform.tfvars.example
- Пересоздал VM

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
- Пересоздал VM с помощью параметризированного шаблона командой:
  packer build -var-file="./variables.json" ./ubuntu16.json

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
