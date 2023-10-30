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


-- DROP TABLE IF EXISTS saved_products_list;

-- CREATE TABLE saved_products_list (
--  id SERIAL PRIMARY KEY,
--  reviewer TEXT,
--  title TEXT,
--  content TEXT,
--  rating NUMERIC,
--  CHECK (rating >= 0 AND rating <= 5),
--  bookmark_id INTEGER REFERENCES bookmarks (id)
--  ON DELETE CASCADE
-- );

-- DROP TABLE IF EXISTS products;

-- CREATE TABLE products (
--  id SERIAL PRIMARY KEY,
--  name TEXT NOT NULL,
--  url TEXT,
--  category TEXT,
--  is_favorite BOOLEAN
-- );