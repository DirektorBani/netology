# Домашнее задание к занятию "6.6. Troubleshooting"

## Задача 1

Перед выполнением задания ознакомьтесь с документацией по [администрированию MongoDB](https://docs.mongodb.com/manual/administration/).

Пользователь (разработчик) написал в канал поддержки, что у него уже 3 минуты происходит CRUD операция в MongoDB и её
нужно прервать.

Вы как инженер поддержки решили произвести данную операцию:
- напишите список операций, которые вы будете производить для остановки запроса пользователя
- предложите вариант решения проблемы с долгими (зависающими) запросами в MongoDB

Определим текущую операци командой:  
db.currentOp()
Завершим операцию по opid
db.killOp()

Надо повести диагностику дефицита ресурсов. Так же можно автоматизировать зависающие запросы через maxTimeMS() для запросов CRUD

## Задача 2

Перед выполнением задания познакомьтесь с документацией по [Redis latency troobleshooting](https://redis.io/topics/latency).

Вы запустили инстанс Redis для использования совместно с сервисом, который использует механизм TTL.
Причем отношение количества записанных key-value значений к количеству истёкших значений есть величина постоянная и
увеличивается пропорционально количеству реплик сервиса.

При масштабировании сервиса до N реплик вы увидели, что:
- сначала рост отношения записанных значений к истекшим
- Redis блокирует операции записи

Как вы думаете, в чем может быть проблема?

Скорее всего из за роста отношений исчерпался лимит оперативной памяти и Redis стал блокировать операции записи

## Задача 3

Вы подняли базу данных MySQL для использования в гис-системе. При росте количества записей, в таблицах базы,
пользователи начали жаловаться на ошибки вида:
```python
InterfaceError: (InterfaceError) 2013: Lost connection to MySQL server during query u'SELECT..... '
```

Как вы думаете, почему это начало происходить и как локализовать проблему?

Какие пути решения данной проблемы вы можете предложить?

В этом кейсе скорее всего проблема в пакетах(max_allowed_packet)
Есть 2 способа решения проблемы:
1) Изменить max_allowed_packet=64M в файле /etc/mysql/my.cnf на сервере mysql и перезапустить сервер.
2) Выполнить sql на сервере mysql:set global max_allowed_packet=67108864;

## Задача 4


Вы решили перевести гис-систему из задачи 3 на PostgreSQL, так как прочитали в документации, что эта СУБД работает с
большим объемом данных лучше, чем MySQL.

После запуска пользователи начали жаловаться, что СУБД время от времени становится недоступной. В dmesg вы видите, что:

`postmaster invoked oom-killer`

Как вы думаете, что происходит?

Как бы вы решили данную проблему?

oom-killer защищает систему от аварийного завершения. 
Проблема заключается в недостатке памяти. PG съедает слишком много памяти и в какой то момент включается в работу oom-killer

Необходимо проверить настройки сервиса в части памяти, внести корректировки в соответствии с потребностями.

Так же можно увеличить объем ОЗУ или выставить ограничение в настройках PG на использование ресурсов хоста

---

### Как cдавать задание

Выполненное домашнее задание пришлите ссылкой на .md-файл в вашем репозитории.

---