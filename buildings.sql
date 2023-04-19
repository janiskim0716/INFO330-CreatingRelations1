CREATE TABLE buildings (
  name VARCHAR(80) NOT NULL,
  shortname VARCHAR(10) UNIQUE,
  id SERIAL PRIMARY KEY
);

CREATE TABLE rooms (
  number INTEGER,
  buildingid INTEGER REFERENCES buildings(id),
  seating INTEGER,
  PRIMARY KEY (number, buildingid)
);