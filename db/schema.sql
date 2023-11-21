DROP DATABASE IF EXISTS coinmatters_dev;
CREATE DATABASE coinmatters_dev;

\c coinmatters_dev;

DROP TABLE IF EXISTS users;

CREATE TABLE users (
 user_id SERIAL PRIMARY KEY,
 username VARCHAR(255) UNIQUE NOT NULL,
 email TEXT UNIQUE NOT NULL,
 password TEXT NOT NULL,
 created_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP
);

DROP TABLE IF EXISTS lists;

CREATE TABLE lists (
 list_id SERIAL PRIMARY KEY,
 list_name TEXT,
 user_id INTEGER REFERENCES users(user_id)
 ON DELETE CASCADE
);

DROP TABLE IF EXISTS products;

CREATE TABLE products (
 product_id SERIAL PRIMARY KEY,
 product_name TEXT,
 source TEXT,
 list_id INTEGER REFERENCES lists(list_id)
 ON DELETE CASCADE
);

DROP TABLE IF EXISTS product_list;

CREATE TABLE product_list (
  product_id INTEGER,
  list_id INTEGER,
  PRIMARY KEY (product_id, list_id),
  FOREIGN KEY (product_id) REFERENCES products(product_id),
  FOREIGN KEY (list_id) REFERENCES lists(list_id)
);