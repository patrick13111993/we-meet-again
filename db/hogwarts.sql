DROP TABLE IF EXISTS students;
DROP TABLE IF EXISTS houses;


CREATE TABLE houses (
  id SERIAL8 primary key,
  house_name VARCHAR(255)
  );

CREATE TABLE students (
  id SERIAL8 primary key,
  first_name VARCHAR(255),
  surname VARCHAR(255),
  house_id SERIAL8 references houses(id),
  age INT2
  );