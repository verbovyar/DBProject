CREATE SCHEMA IF NOT EXISTS fs;

CREATE TABLE IF NOT EXISTS fs.genre(
    genre           VARCHAR(20)             PRIMARY KEY,
    accept_age      INTEGER                 NOT NULL
);

CREATE TABLE IF NOT EXISTS fs.films(
    film_id         INTEGER                 PRIMARY KEY,
    film_title      CHARACTER VARYING(50)   NOT NULL,
    rel_date        DATE                    NOT NULL,
    rel_country     CHARACTER VARYING(20)   NOT NULL,
    genre           VARCHAR(20)             REFERENCES fs.genre(genre),
    box_office      INTEGER                 NOT NULL,
    director        CHARACTER VARYING(20)   NOT NULL
);

CREATE TABLE IF NOT EXISTS fs.halls(
    hall_name       CHARACTER VARYING(20)   PRIMARY KEY,
    seats_numb      INTEGER                 NOT NULL,
    audio_format    CHARACTER VARYING(20)   NOT NULL
);

CREATE TABLE IF NOT EXISTS fs.sessions(
    sess_id         INTEGER                 PRIMARY KEY,
    film_id         INTEGER                 REFERENCES fs.films(film_id),
    hall_name       CHARACTER VARYING(20)   REFERENCES fs.halls(hall_name),
    start_time      TIMESTAMP               NOT NULL
);

CREATE TABLE IF NOT EXISTS fs.spectators(
    spect_id        INTEGER                 PRIMARY KEY,
    firstname       CHARACTER VARYING(20)   NOT NULL,
    surname         CHARACTER VARYING(20)   NOT NULL,
    sex             VARCHAR(10)             NOT NULL,
    age             INTEGER                 NOT NULL,
    comp_size       INTEGER                 NOT NULL
);

CREATE TABLE IF NOT EXISTS fs.seats(
    seat_id         INTEGER                 PRIMARY KEY,
    hall_name       CHARACTER VARYING(20)   REFERENCES fs.halls(hall_name),
    row             INTEGER                 NOT NULL,
    seat            INTEGER                 NOT NULL
);

CREATE TABLE IF NOT EXISTS fs.tickets(
    tick_id         INTEGER                 PRIMARY KEY,
    spect_id        INTEGER                 REFERENCES fs.spectators(spect_id),
    sess_id         INTEGER                 REFERENCES fs.sessions(sess_id),
    seat_id         INTEGER                 REFERENCES fs.seats(seat_id),
    start_time      TIMESTAMP               NOT NULL,
    cost            INTEGER                 NOT NULL
);

CREATE TABLE IF NOT EXISTS fs.history(
    sess_id         INTEGER                 PRIMARY KEY,
    film_id         INTEGER                 REFERENCES fs.films(film_id),
    hall_name       CHARACTER VARYING(20)   REFERENCES fs.halls(hall_name),
    start_time      TIMESTAMP               NOT NULL,
    history         TIMESTAMP               NOT NULL
);
