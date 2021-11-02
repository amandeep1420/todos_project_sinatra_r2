CREATE TABLE lists(
id serial PRIMARY KEY,
name text UNIQUE NOT NULL
);

CREATE TABLE todo(
id serial PRIMARY KEY,
name text NOT NULL,
list_id integer NOT NULL REFERENCES lists(id),
completed boolean NOT NULL DEFAULT false
);