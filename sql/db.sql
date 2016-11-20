CREATE DATABASE IF NOT EXISTS db_javaee;

-- table user
DROP TABLE IF EXISTS db_javaee.users;
CREATE TABLE db_javaee.users (
  id       INT AUTO_INCREMENT PRIMARY KEY,
  email    VARCHAR(255) NOT NULL
  COMMENT '',
  password VARCHAR(255) NOT NULL
  COMMENT '',
  cities   VARCHAR(255) COMMENT '',
  hobbies  VARCHAR(255) COMMENT ''
);

-- table book
DROP TABLE IF EXISTS db_javaee.book;
CREATE TABLE db_javaee.book (
  id      INT AUTO_INCREMENT PRIMARY KEY,
  title   VARCHAR(255) COMMENT '',
  author  VARCHAR(255) COMMENT '',
  publish VARCHAR(255) COMMENT '',
  date    DATE COMMENT '',
  price   DECIMAL(6,2) COMMENT '',
  amount  INT COMMENT ''
) COMMENT '';

-- select
SELECT *
FROM db_javaee.users;

SELECT *
FROM db_javaee.book;

DELETE FROM db_javaee.book WHERE id = 3;

TRUNCATE TABLE db_javaee.users;
TRUNCATE TABLE db_javaee.book;

SELECT *
FROM mysql.users;

UPDATE mysql.users
SET host = '%'
WHERE host = 'localhost';

FLUSH PRIVILEGES;