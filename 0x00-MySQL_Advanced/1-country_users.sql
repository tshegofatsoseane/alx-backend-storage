-- Creates a table users with below attributes.
-- id, integer, never null, auto increment and primary key.
-- email, string (255 chars), never null and unique.
-- name, string (255 chars).
-- country, enum of countries: US, CO and TN, never null (default=US).
-- Script will not fail If table exists and can be executed on any database.

CREATE TABLE IF NOT EXISTS users (
       id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
       email VARCHAR(255) NOT NULL UNIQUE,
       name VARCHAR(255),
       country ENUM ('US', 'CO', 'TN') NOT NULL
);
