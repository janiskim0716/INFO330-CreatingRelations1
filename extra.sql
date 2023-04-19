CREATE TABLE timeslots (
  id INTEGER PRIMARY KEY,
  start_time TIMESTAMP NOT NULL,
  end_time TIMESTAMP NOT NULL
);

CREATE TABLE schedule (
  coursecode VARCHAR(40) NOT NULL,
  roomid INTEGER NOT NULL,
  timeslotid INTEGER NOT NULL,
  PRIMARY KEY (coursecode),
  UNIQUE (roomid, timeslotid),
  FOREIGN KEY (coursecode) REFERENCES courses (code),
  FOREIGN KEY (roomid) REFERENCES rooms (id),
  FOREIGN KEY (timeslotid) REFERENCES timeslots (id)
);