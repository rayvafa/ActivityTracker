
create table tbl_tracker (
  ID INT AUTO_INCREMENT,
  NAME VARCHAR(100),
  PRIMARY KEY (ID)
);

create table track_point (
  ID INT AUTO_INCREMENT,
  TRACKER_ID INT,
  QUANTITY INT,
  TRACK_DATE TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (ID),
  FOREIGN KEY (TRACKER_ID) REFERENCES tbl_tracker(ID) ON DELETE RESTRICT
);