-- all the queries to set up the database as requested in the task 1 and 2  

--task 1: create a user and grant privileges

CREATE USER IF NOT EXISTS 'holberton_user'@'localhost' IDENTIFIED BY '';
GRANT REPLICATION CLIENT ON *.* TO 'holberton_user'@'localhost';


--task 2: create a database and a table

CREATE DATABASE tyrell_corp;
USE tyrell_corp;

CREATE TABLE nexus6 ( id INT, name VARCHAR(256));

-- to see the table you created use the comment below
-- SHOW TABLES;

INSERT INTO nexus6 VALUES (1, 'test');

-- to see the data you added use the comment below
-- SELECT * FROM nexus6;

-- grant privileges to the user
GRANT SELECT ON tyrell_corp.nexus6 TO 'holberton_user'@'localhost';


--task 3: create a replica user and grant privileges

CREATE USER IF NOT EXISTS 'replica_user'@'%' IDENTIFIED BY ''; -- password is empty
GRANT REPLICATION SLAVE ON *.* TO 'replica_user'@'%';
GRANT SELECT ON mysql.user TO 'holberton_user'@'localhost';

-- to see the user you created use the comment below
-- SELECT user, Repl_slave_priv FROM mysql.user;
