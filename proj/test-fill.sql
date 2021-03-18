INSERT INTO "user"
("id", "login"  , "password") VALUES
(  1 , 'root'   , 'root'),
(  2 , 'chel'  , '12345'),
(  3 , 'chelick'  , 'qwerty'),
(  4 , 'boss', 'megaboss'),
(  5 , 'user', '123321');

INSERT INTO "contact_person"
("id", "surname", "name", "patronymic") VALUES
(  4 , 'Ivanov' , 'Ivan', 'Ivanovich'),
(  2 , 'Petrov'  , 'Peter'   , 'Leontievich'),
(  3 , 'Sidorov' , 'Sidor'  , 'Andreevich'),
(  1 , 'Vasilyev', 'Vasiliy', 'Nikolaevich'),
(  5 , 'Musienko', 'Leo', 'Mikhaylovich');

INSERT INTO "phone"
("contact_person_id", "number") VALUES
(1, '+375 (29) 123-45-67'),
(2, '+375 (33) 890-12-34'),
(3, '+375 (25) 567-89-01'),
(4, '+375 (29) 234-56-78'),
(5, '+375 (29) 222-11-00');

INSERT INTO "email"
("contact_person_id", "email") VALUES
(1, 'vasy@mail.ru'),
(2, 'pety@mail.ru'),
(3, 'sidor@mail.ru'),
(4, 'vany@mail.ru'),
(5, 'leoooo@mail.ru');

INSERT INTO "customer" 
("id", "name", "project", "legal_addr", "bank_details") VALUES
(1, 'Anny', 'web calculator', 'Marksa st., 12', '2345 6789 1010 6733'),
(2, 'Kosty', 'iphone', 'Lenina pr., 23, 45', '6734 1888 9012 7810'),
(3, 'Den', 'smart watch', 'Engelsa st., 67/2, 89', '7781 6262 0129 8102'),
(4, 'Leo', 'face recognition', 'Stalina st., 123а, 45', '1111 2222 3333 4674'),
(5, 'Maks', 'voice assistant', 'Chkalova st., 47а, 1', '0987 6543 3126 9191');

INSERT INTO "project"
("id", "name", "start_date", "finish_date", "customer_id") VALUES
(1, 'web calculator', '2020-12-13', NULL, 2),
(2, 'iphone', '2019-10-13', '2020-03-18', 4),
(3, 'face recognition', '2020-03-19', NULL, 3),
(4, 'smart watch', '2020-05-13', NULL, 1),
(5, 'voice assistant', '2020-12-13', NULL, 5);

INSERT INTO "requiments"
("id", "project_id", "formulation", "start_date", "planning_time", "runtime_priority", "criticality_lvl", "complition_mark", "probability_of_change_requiments") VALUES
(1, 5, 'Can speak', NULL, '20 days', 1, 1, NULL, 1),
(2, 4, 'Show the time', NULL, '1 month', 2, 1, NULL, 2),
(3, 3, 'Recognizes face', '2020-03-21', '25 days 10:30:00', 2, 3, 4, 2),
(4, 2, 'Works', NULL, '67 days', 3, 2, NULL, 3),
(5, 1, 'Calculate', NULL, '1 day 01:00:00', 3, 1, NULL, 1);

INSERT INTO "planning_test"
("id", "requiments_id", "description", "expected_result", "planned_time", "test_lvl") VALUES
(1, 1, 'Ask question', 'Response', '20 days', 1),
(2, 2, 'Tic-toc', 'Yes', '1 month', 2),
(3, 2, 'Show a face', 'Recognizes', '25 days 10:30:00', 3),
(4, 3, 'Try to turn on', 'Turn on', '67 days', 1),
(5, 4, '2+2=?', '4', '1 day 01:00:00', 2);

INSERT INTO "finished_test"
("id", "start_date", "duration", "result") VALUES
(1, '2020-09-28 01:00:00', '20 days', 1),
(2, '2021-10-18 23:00:00', '1 month', 2),
(3, '2019-05-11 00:20:15', '25 days 10:30:00', 2),
(4, '2020-01-01 00:00:00', '67 days', 1),
(5, '2021-01-28 11:11:11', '1 day 01:00:00', 2);
