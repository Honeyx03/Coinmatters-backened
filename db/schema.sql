DROP DATABASE IF EXISTS coinsmatter_dev;
CREATE DATABASE coinsmatter_dev;

\c coinsmatter_dev;

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
 user_id INTEGER REFERENCES users(user_id)
 ON DELETE CASCADE,
 list_name TEXT NOT NULL,
 products TEXT[],
 note VARCHAR(255),
 date_created TEXT
);

DROP TABLE IF EXISTS retailers;

CREATE TABLE retailers (
  retailer_id SERIAL PRIMARY KEY,
  retailer_name VARCHAR(255) UNIQUE NOT NULL,
  zipcodes_array INTEGER[],
  website TEXT UNIQUE NOT NULL
);

DROP TABLE IF EXISTS products;

CREATE TABLE products (
 product_id SERIAL PRIMARY KEY,
 product_name TEXT,
 size TEXT,
 price DECIMAL,
 retailer_id INTEGER REFERENCES retailers(retailer_id),
 thumbnail TEXT
);

DROP TABLE IF EXISTS products_list;

CREATE TABLE products_list (
  product_id INTEGER,
  list_id INTEGER,
  quantity INTEGER,
  PRIMARY KEY (product_id, list_id),
  FOREIGN KEY (product_id) REFERENCES products(product_id),
  FOREIGN KEY (list_id) REFERENCES lists(list_id)
  ON DELETE CASCADE
);

-- DROP TABLE IF EXISTS user_list;

-- CREATE TABLE user_list (
--   id SERIAL PRIMARY KEY,
--   user_id INTEGER REFERENCES users(user_id)
--   ON DELETE CASCADE,
--   list_name TEXT NOT NULL,
--   products TEXT[],
--   note TEXT
-- );

-- DROP TABLE IF EXISTS prices;

-- CREATE TABLE prices (
--   price_id INTEGER,
--   product_id INTEGER,
--   retailer_id INTEGER,
--   PRIMARY KEY (price_id, product_id, retailer_id),
--   FOREIGN KEY (product_id) REFERENCES products(product_id),
--   FOREIGN KEY (retailer_id) REFERENCES retailers(retailer_id)
-- );