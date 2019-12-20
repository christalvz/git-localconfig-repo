CREATE schema if not exists ACCOUNTS;
DROP TABLE IF EXISTS Account;
 
CREATE TABLE Account (
  id INT AUTO_INCREMENT  PRIMARY KEY,
  name VARCHAR(250) NOT NULL,
  username VARCHAR(250) NOT NULL,
  oldpassword VARCHAR(250) default null,
  password VARCHAR(250) Not NULL,
  lastModifiedDate DATE,
  CreateDate DATE,
  UNIQUE KEY acct_username_UNIQUE (username)
);
 
INSERT INTO Account (id, name, username, password, oldpassword, lastModifiedDate, CreateDate) VALUES
  (1, 'Dangote', 'user_name1', 'password', 'old_password', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
  (2, 'Dangote', 'user_name2', 'password', 'old_password', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()),
  (3, 'Dangote', 'user_name3', 'password', 'old_password', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP());