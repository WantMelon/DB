CREATE TABLE "user" (
    "id"                  SERIAL   PRIMARY KEY,
    "login"               TEXT     NOT NULL UNIQUE,
    "password"            TEXT     NOT NULL
);

CREATE TABLE "contact_person" (
    "id"                  INTEGER  PRIMARY KEY REFERENCES "user" ON UPDATE RESTRICT ON DELETE CASCADE, /* связь один-к-одному */
    "surname"             TEXT     NOT NULL,
    "name"                TEXT     NOT NULL,
	"patronymic"		  TEXT	   NOT NULL
);

CREATE TABLE "phone" (
    "number"              TEXT     PRIMARY KEY, /* пример строкового первичного ключа - лучше так не делать */
    "contact_person_id"   INTEGER  NOT NULL REFERENCES "contact_person" ON UPDATE RESTRICT ON DELETE CASCADE
);

CREATE TABLE "email" (
    "email"               TEXT     PRIMARY KEY, /* пример строкового первичного ключа - лучше так не делать */
    "contact_person_id"   INTEGER  NOT NULL REFERENCES "contact_person" ON UPDATE RESTRICT ON DELETE CASCADE
);

CREATE TABLE "customer" (
    "id"                  SERIAL   PRIMARY KEY REFERENCES "contact_person" ON UPDATE RESTRICT ON DELETE CASCADE,
    "name"                TEXT     NOT NULL,
    "project"             TEXT     NOT NULL,
    "legal_addr"          TEXT     NOT NULL,
    "bank_details"        TEXT     NOT NULL
);

CREATE TABLE "project" (
    "id"                  SERIAL   PRIMARY KEY,
    "name"                TEXT     NOT NULL,
	"start_date"          DATE     NOT NULL,
	"finish_date"         DATE,
	"customer_id"         INTEGER  NOT NULL REFERENCES "customer" ON UPDATE RESTRICT ON DELETE RESTRICT
);

CREATE TABLE "requiments" (
    "id"                  SERIAL   PRIMARY KEY,
    "project_id"          INTEGER  NOT NULL REFERENCES "project" ON UPDATE RESTRICT ON DELETE RESTRICT,
    "formulation"         TEXT     NOT NULL,
    "start_date"          DATE,
    "planning_time"   INTERVAL NOT NULL,
	"runtime_priority"    INTEGER  NOT NULL CHECK ("runtime_priority" IN (1, 2, 3)),
	/*
		1 - LOW
		2 - MEDIUM
		3 - HIGH
	*/
	"criticality_lvl"    INTEGER   NOT NULL CHECK ("criticality_lvl" IN (1, 2, 3)),
	/*
		1 - LOW
		2 - MEDIUM
		3 - HIGH
	*/
	"complition_mark"    INTEGER   CHECK ("complition_mark" IN (1, 2, 3, 4)),
	/*
		1 - implementation complete
		2 - tested and closed as successful
		3 - tested and closed as not successful
		4 - tested and returned for revision
	*/
	"probability_of_change_requiments"    INTEGER NOT NULL CHECK ("probability_of_change_requiments" IN (1, 2, 3))
	/*
		1 - LOW
		2 - MEDIUM
		3 - HIGH
	*/
);

CREATE TABLE "planning_test" (
	"id"                  SERIAL   PRIMARY KEY,
	"requiments_id"       INTEGER  NOT NULL REFERENCES "requiments" ON UPDATE RESTRICT ON DELETE RESTRICT,
	"description"         TEXT     NOT NULL,
	"expected_result"     TEXT     NOT NULL,
	"planned_time"    INTERVAL NOT NULL,
	"test_lvl"            INTEGER  NOT NULL CHECK ("test_lvl" IN (1, 2, 3))
	/*
		1 - superficial
		2 - medium
		3 - deep
	*/
);

CREATE TABLE "finished_test" (
	"id"                  SERIAL    PRIMARY KEY REFERENCES "planning_test" ON UPDATE RESTRICT ON DELETE CASCADE,
	"start_date"          TIMESTAMP NOT NULL,
	"duration"            INTERVAL  NOT NULL,
	"result"              INTEGER   NOT NULL CHECK ("result" IN (1, 2))
	/*
		1 - OK
		2 - ERROR
	*/
);
