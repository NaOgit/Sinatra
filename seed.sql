DROP TABLE IF EXISTS post;
-- remove table called "post"

CREATE TABLE post (
  -- create table called "post"

  id SERIAL PRIMARY KEY,
  title VARCHAR(255),
  post_body TEXT

);

INSERT INTO post (title , post_body) VALUES ('Post 1' , 'Body text 1');
INSERT INTO post (title , post_body) VALUES ('Post 2' , 'Body text 2');
INSERT INTO post (title , post_body) VALUES ('Post 3' , 'Body text 3');
INSERT INTO post (title , post_body) VALUES ('Post 4' , 'Body text 4');

-- template
-- create table for database
