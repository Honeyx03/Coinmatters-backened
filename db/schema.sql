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

DROP TABLE IF EXISTS products_list;

CREATE TABLE products_list (
 id SERIAL PRIMARY KEY,
 title TEXT,
 source TEXT,
 price NUMERIC,
 thumbnail TEXT,
 product_href ,
 user_id INTEGER REFERENCES users (id)
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