<<<<<<< HEAD
-- DROP TABLE "Types";
CREATE TABLE "Types" (
    "id" INT NOT NULL PRIMARY KEY,
	"TID" INT  NOT NULL UNIQUE,
    "Type" VARCHAR(255)   NOT NULL
);

-- DROP TABLE "Pokemon";
CREATE TABLE "Pokemon" (
    "Pokemon_Name" VARCHAR(255)  NOT NULL PRIMARY KEY,
    "TID" INT NOT NULL REFERENCES "Types"("TID"),
	"Type" VARCHAR(255)   NOT NULL,
    "Attack" INT   NOT NULL,
    "Defense" INT   NOT NULL,
    "Speed" INT   NOT NULL
);

-- DROP TABLE "Moves";
CREATE TABLE "Moves" (
    "MID" INT   NOT NULL PRIMARY KEY,
    "Moves" VARCHAR(255)   NOT NULL,
    "TID" INT   NOT NULL REFERENCES "Types"("TID")
);
=======
﻿-- DROP TABLE "Pokemon";
CREATE TABLE "Pokemon" (
    "Pokemon_Name" VARCHAR(255)   NOT NULL PRIMARY KEY,
    "Types" VARCHAR   NOT NULL,
    "Attack" INT   NOT NULL,
    "Defense" INT   NOT NULL,
    "Speed" INT   NOT NULL
);

CREATE TABLE "Types" (
    "TID" INT   NOT NULL PRIMARY KEY,
    "Type" VARCHAR(255)   NOT NULL
);

CREATE TABLE "Moves" (
    "MID" INT   NOT NULL PRIMARY KEY,
    "Moves" VARCHAR(255)   NOT NULL,
    "TID" INT   NOT NULL
);

ALTER TABLE "Pokemon" ADD CONSTRAINT fk_Pokemon_Type FOREIGN KEY("TID")
REFERENCES "Types" ("TID");

ALTER TABLE "Moves" ADD CONSTRAINT "fk_Moves_TID" FOREIGN KEY("TID")
REFERENCES "Types" ("TID");
>>>>>>> origin/master
