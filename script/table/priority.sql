CREATE TABLE LOG_AUDIT.T_priority(
  priority_level NUMBER(6),
  database VARCHAR2(30) not null unique,
  description VARCHAR2(120)
);

ALTER TABLE LOG_AUDIT.T_priority ADD CONSTRAINT PK_PRIORITY PRIMARY KEY(priority_level);