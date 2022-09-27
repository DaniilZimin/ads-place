-- liquibase formatted sql

-- changeset dzimin:1

CREATE TABLE IF NOT EXISTS ads
(
    pk          BIGSERIAL PRIMARY KEY,
    author      integer REFERENCES users (id),
    image       text,
    price       int NOT NULL,
    title       varchar,
    description text NOT NULL
)