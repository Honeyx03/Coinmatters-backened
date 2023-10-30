\c coinmatters_dev;

INSERT INTO users (username, email, password, created_at)
VALUES ('testuser', 'testuser@example.com', 'password123', CURRENT_TIMESTAMP);



-- //psql -U postgres -f db/schema.sql
-- //psql -U postgres -f db/seed.sql