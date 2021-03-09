CREATE TABLE "location" (
	"state"	TEXT NOT NULL UNIQUE,
	"state_short"	TEXT NOT NULL,
	"id"	INTEGER NOT NULL UNIQUE,
	"city"	TEXT,
	"people" TEXT,
    "companies" TEXT,
	PRIMARY KEY("id" AUTOINCREMENT)
);

CREATE TABLE "people" (
	"id"	INTEGER NOT NULL UNIQUE,
	"first_name"	TEXT NOT NULL,
	"last_name"	TEXT NOT NULL,
	"company"	INTEGER,
    "past_companies" TEXT,
    "notes"     TEXT,
    "location" INTEGER,
	PRIMARY KEY("id" AUTOINCREMENT),
    FOREIGN KEY("location") REFERENCES "location"("id")
);

CREATE TABLE "communication" (
	"person"	INTEGER NOT NULL,
	"date"	TEXT NOT NULL,
	"conversation_id"	INTEGER NOT NULL,
	"id"	INTEGER NOT NULL UNIQUE,
	"details"	TEXT,
	"summary"	TEXT NOT NULL,
	PRIMARY KEY("id" AUTOINCREMENT),
	FOREIGN KEY("person") REFERENCES "people"("id")
);

CREATE TABLE "company" (
	"id"	INTEGER NOT NULL UNIQUE,
	"name"	TEXT NOT NULL UNIQUE,
    "people"    TEXT,
	PRIMARY KEY("id" AUTOINCREMENT)
);

CREATE TABLE "contact_info" (
	"id"	 INTEGER NOT NULL UNIQUE,
	"type"	 TEXT NOT NULL,
	"value"	 TEXT NOT NULL,
    "person" INTEGER,
    "company" INTEGER,
	PRIMARY KEY("id" AUTOINCREMENT),
    FOREIGN KEY("person") REFERENCES "people"("id"),
    FOREIGN KEY("company") REFERENCES "company"("id")
);