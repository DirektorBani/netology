# Домашнее задание к занятию "11.01 Введение в микросервисы"

## Задача 1: Интернет Магазин

Руководство крупного интернет магазина у которого постоянно растёт пользовательская база и количество заказов рассматривает возможность переделки своей внутренней ИТ системы на основе микросервисов.

Вас пригласили в качестве консультанта для оценки целесообразности перехода на микросервисную архитектуру.

Опишите какие выгоды может получить компания от перехода на микросервисную архитектуру и какие проблемы необходимо будет решить в первую очередь.


Микросервисная архитектура помогает ускорить разработку и сделать её более гибкой и управляемой.


Микросервисная архитектура имеет следующие преимущества.
- Непрерывная доставка и развертывание крупных, сложных приложений.
- Сервисы получаются небольшими и простыми в обслуживании.
- Сервисы развертываются независимо друг от друга.
- Сервисы масштабируются независимо друг от друга.
- Микросервисная архитектура обеспечивает автономность команд разработчиков.
- Она позволяет экспериментировать и внедрять новые технологии, подходящие конкретному сервису.
- В ней лучше изолированы неполадки, т.к. единая точка отказа отсутствует.


Проблемы:
- Проблемы разработки
    - Cовместимость API - требует повышенного внимания.
    - Версионирование артефактов - требуется четко понимать, какие версии, каких сервисов обрабатывают запросы пользователей.
    - Автоматизация сборки и тестирования - требуется для исключения рутинных операций и возможности обслуживать большое количество инстансов.
    - Документация - ее ведение позволит сократить затраты команд на коммуникации.
    - Инфраструктура разработки требует автоматизации, шаблонизации.

- Проблемы эксплуатации
    - Мониторинг - инстансов может быть очень много, требуется четко понимать, в каком состоянии сервисы.
    - Сбор логов - для решения возможных проблем и исправления ошибок
    - Управление настройками и инфраструктурой