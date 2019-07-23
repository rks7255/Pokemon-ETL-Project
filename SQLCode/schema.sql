-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/M2UCNr
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "Pokemon" (
    "Pokemon_Name" VARCHAR(255)   NOT NULL,
    "Type" VARCHAR(255)   NOT NULL,
    "Attack" INT   NOT NULL,
    "Defense" INT   NOT NULL,
    "Speed" INT   NOT NULL,
    CONSTRAINT "pk_Pokemon" PRIMARY KEY (
        "Pokemon_Name"
     )
);

CREATE TABLE "Types" (
    "TID" INT   NOT NULL,
    "Type" VARCHAR(255)   NOT NULL,
    CONSTRAINT "pk_Types" PRIMARY KEY (
        "TID"
     )
);

CREATE TABLE "Moves" (
    "MID" INT   NOT NULL,
    "Moves" VARCHAR(255)   NOT NULL,
    "TID" INT   NOT NULL,
    CONSTRAINT "pk_Moves" PRIMARY KEY (
        "MID"
     )
);

ALTER TABLE "Pokemon" ADD CONSTRAINT "fk_Pokemon_Type" FOREIGN KEY("Type")
REFERENCES "Types" ("Type");

ALTER TABLE "Moves" ADD CONSTRAINT "fk_Moves_TID" FOREIGN KEY("TID")
REFERENCES "Types" ("TID");

