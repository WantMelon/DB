INSERT INTO "user"
("login", "password") VALUES
('root', 'root'),
('Vanya', 'user'),
('Artem', 'qwerty'),
('Gena', '12345'),
('Cool4el', 'superpass');
/*
SELECT setval('user_id_seq', 8);
*/
INSERT INTO "contact_person"
("id", "surname"  , "name", "patronymic"   ) VALUES
(1, 'Smith'    , 'John', 'Johnsov'  ),
(2,'Ромашкина', 'Вера', 'Петровна'  ),
(3,'Ландышева', 'Надежда', 'Николаевна'),
(4,'Лютикова' , 'Любовь', 'Соболь' );
