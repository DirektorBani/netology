- name: Install Clickhouse - Объявляется handler для перезапуска сервиса
- name: Get clickhouse distrib - С помощью встроенного модуля get_url скачиваются необходимые пакеты (подставляемые через переменные в groups_vars)
- name: Install clickhouse packages - Задача выполняется с повышением прав, устанавливаются скачанные пакеты
- name: Create database - Создаётся БД logs, регистрируется переменная для проверки на ошибки и записи статуса выполнения
- name: Download vector - С помощью встроенного модуля get_url скачиваются необходимые пакеты (подставляемые через переменные в groups_vars)
- name: Install vector - Задача выполняется с повышением прав, устанавливаются скачанные пакеты
- name: Install Lighthouse - Задача устанавливает Lighthouse. Перед установкой Lighthouse работает таска с установкой nginx и git. Настройка nginx происходит через файл /playbook/templates/nginx/ligthouse.conf.j2


