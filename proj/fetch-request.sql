SELECT * FROM "user" WHERE "id" = 1;
SELECT * FROM "contact_person" WHERE "id" = 1;
SELECT * FROM "customer" WHERE "id" = 1;
SELECT * FROM "phone" WHERE "number" = '+375 (29) 123-45-67';
SELECT * FROM "email" WHERE "email" = 'vasy@mail.ru';
SELECT * FROM "project" WHERE "id" = 1;
SELECT * FROM "requiments" WHERE "id" = 1;
SELECT * FROM "planning_test" WHERE "id" = 1;
SELECT * FROM "finished_test" WHERE "id" = 1;

SELECT "email" FROM "email" WHERE "contact_person_id" = 1;
SELECT "name" FROM "project" WHERE "customer_id" = 1;
