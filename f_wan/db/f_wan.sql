DROP TABLE IF EXISTS results ;
DROP TABLE IF EXISTS drivers ;
DROP TABLE IF EXISTS teams ;
DROP TABLE IF EXISTS races ;




CREATE TABLE races (
    id SERIAL PRIMARY KEY,
    location VARCHAR(255),
    date VARCHAR(255)
);

CREATE TABLE teams (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255)
);

CREATE TABLE drivers (
    id SERIAL PRIMARY KEY,
    first_name VARCHAR(255),
    last_name VARCHAR(255),
    team_id INT REFERENCES teams(id) ON DELETE CASCADE
);

CREATE TABLE results (
    id SERIAL PRIMARY KEY,
    position INT,
    driver_id INT REFERENCES drivers(id) ON DELETE CASCADE,
    race_id INT REFERENCES races(id) ON DELETE CASCADE
);

