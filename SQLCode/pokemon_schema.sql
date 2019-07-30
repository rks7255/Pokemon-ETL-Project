-- Types (Parent Table)
-- DROP TABLE "Types";
CREATE TABLE "Types" (
    "id" INT NOT NULL PRIMARY KEY,
	"TID" INT  NOT NULL UNIQUE,
    "Type" VARCHAR(255)   NOT NULL
);

-- Pokemon (Child Table)
-- DROP TABLE "Pokemon";
CREATE TABLE "Pokemon" (
    "Pokemon_Name" VARCHAR(255)  NOT NULL PRIMARY KEY,
    "TID" INT NOT NULL REFERENCES "Types"("TID"),
	"Type" VARCHAR(255)   NOT NULL,
    "Attack" INT   NOT NULL,
    "Defense" INT   NOT NULL,
    "Speed" INT   NOT NULL
);

-- Moves (Child Table)
-- DROP TABLE "Moves";
CREATE TABLE "Moves" (
    "MID" INT   NOT NULL PRIMARY KEY,
    "Moves" VARCHAR(255)   NOT NULL,
    "TID" INT   NOT NULL REFERENCES "Types"("TID")
);
