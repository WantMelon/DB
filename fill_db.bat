set Path=%Path%;%cd%\bin
psql --username=root --password --dbname=projects_db --file=.\proj\test-fill.sql

psql --username=root --password --dbname=projects_db