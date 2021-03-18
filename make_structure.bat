@set Path=%Path%;%cd%\bin
psql --username=root --password --dbname=postgres --file=.\proj\create-database.sql
psql --username=root --password --dbname=projects_db --file=.\proj\create-structure.sql

psql --username=root --password --dbname=projects_db