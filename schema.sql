CREATE TABLE temperature (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  timestamp TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  value REAL NOT NULL
);

CREATE TABLE humidity (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  timestamp TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  value REAL NOT NULL
);

CREATE TABLE luminosity (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  timestamp TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  value REAL NOT NULL
);

CREATE TABLE movement (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  timestamp TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  value REAL NOT NULL       /*  A value which indicates the magnitude of the movement/ or just 0 and 1 for true or false*/
);

CREATE TABLE events (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  timestamp TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  event_location STRING NOT NULL,   /*  Could be one of the values: WINDOW, DOOR*/
  state REAL NOT NULL               /* 0 indicates closed, 1 indicates open, other has a custom meaning*/
);