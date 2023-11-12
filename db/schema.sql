DROP DATABASE IF EXISTS coinmatters_dev;
CREATE DATABASE coinmatters_dev;

\c coinmatters_dev;

DROP TABLE IF EXISTS users;

CREATE TABLE users (
 id SERIAL PRIMARY KEY,
 username VARCHAR(255) UNIQUE NOT NULL,
 email TEXT UNIQUE NOT NULL,
 password TEXT NOT NULL,
 created_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP
);

DROP TABLE IF EXISTS list;

CREATE TABLE list (
 id SERIAL PRIMARY KEY,
 list_name TEXT,
 user_id INTEGER REFERENCES users(id)
 ON DELETE CASCADE
);

DROP TABLE IF EXISTS products;

CREATE TABLE products (
 id SERIAL PRIMARY KEY,
 title TEXT,
 source TEXT,
 list_id INTEGER REFERENCES list(id)
 ON DELETE CASCADE
);



-- DROP TABLE IF EXISTS products;

-- CREATE TABLE products (
--  id SERIAL PRIMARY KEY,
--  name TEXT NOT NULL,
--  url TEXT,
--  category TEXT,
--  is_favorite BOOLEAN
-- );