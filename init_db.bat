@set Path=%Path%;%cd%\bin

@rem Инициализация сервера
initdb --auth=password --pgdata=.\data --encoding=UTF8 --locale=Russian_Russia --username=root --pwprompt

@rem Запуск сервера
pg_ctl --pgdata=.\data --log=.\logfile start

@echo Press Enter to stop server
@pause

@rem Остановка сервера
pg_ctl --pgdata=.\data stop