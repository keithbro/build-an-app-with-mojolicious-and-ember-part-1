DROP DATABASE IF EXISTS mojo_ember_tutorial;
CREATE DATABASE mojo_ember_tutorial;
USE mojo_ember_tutorial;

CREATE TABLE artist (
  id INTEGER AUTO_INCREMENT PRIMARY KEY,
  name TEXT NOT NULL
);

CREATE TABLE album (
  id INTEGER AUTO_INCREMENT PRIMARY KEY,
  artist_id INTEGER NOT NULL REFERENCES artist(id),
  title TEXT NOT NULL
);

INSERT INTO artist
  (name)
VALUES
  ("Michael Jackson"),
  ("Eminem");

INSERT INTO album
  (title, artist_id)
VALUES
  ("Thriller", 1),
  ("Bad", 1),
  ("The Marshall Mathers LP", 2);
