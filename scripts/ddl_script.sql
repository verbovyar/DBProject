CREATE SCHEMA IF NOT EXISTS fs;

CREATE TYPE ganre_enum AS ENUM('драма', 'фэнтези', 'криминал', 'биография', 'история'
    'военный', 'фантастика', 'триллер', 'детектив', 'боевик', 'приключения', 'криминал');

CREATE TABLE IF NOT EXISTS fs.genre(
    genre           ganre_enum              PRIMARY KEY,
    accept_age      INTEGER                 NOT NULL CHECK(accept_age >= 1)
);

CREATE TABLE IF NOT EXISTS fs.films(
    film_id         INTEGER                 PRIMARY KEY,
    film_title      CHARACTER VARYING(50)   NOT NULL CHECK(film_title != ''),
    rel_date        DATE                    NOT NULL,
    rel_country     CHARACTER VARYING(20)   NOT NULL,
    genre           ganre_enum              REFERENCES fs.genre(genre),
    box_office      INTEGER                 NOT NULL CHECK(box_office >= 0),
    director        CHARACTER VARYING(20)   NOT NULL
);

CREATE TABLE IF NOT EXISTS fs.halls(
    hall_name       CHARACTER VARYING(20)   PRIMARY KEY,
    seats_numb      INTEGER                 NOT NULL CHECK(seats_numb >= 1),
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
    firstname       CHARACTER VARYING(20)   NOT NULL CHECK(firstname != ''),
    surname         CHARACTER VARYING(20)   NOT NULL CHECK(surname != ''),
    sex             ENUM('male', 'female')  NOT NULL,
    age             INTEGER                 NOT NULL CHECK(age >= 1),
    comp_size       INTEGER                 NOT NULL CHECK(comp_size >= 1)
);

CREATE TABLE IF NOT EXISTS fs.seats(
    seat_id         INTEGER                 PRIMARY KEY,
    hall_name       CHARACTER VARYING(20)   REFERENCES fs.halls(hall_name),
    row             INTEGER                 NOT NULL CHECK(row >= 1),
    seat            INTEGER                 NOT NULL CHECK(seat >= 1)
);

CREATE TABLE IF NOT EXISTS fs.tickets(
    tick_id         INTEGER                 PRIMARY KEY,
    spect_id        INTEGER                 REFERENCES fs.spectators(spect_id),
    sess_id         INTEGER                 REFERENCES fs.sessions(sess_id),
    seat_id         INTEGER                 REFERENCES fs.seats(seat_id),
    start_time      TIMESTAMP               NOT NULL,
    cost            INTEGER                 NOT NULL CHECK(cost >= 0)
);

CREATE TABLE IF NOT EXISTS fs.history(
    sess_id         INTEGER                 NOT NULL REFERENCES fs.sessions(sess_id),
    film_id         INTEGER                 REFERENCES fs.films(film_id),
    hall_name       CHARACTER VARYING(20)   REFERENCES fs.halls(hall_name),
    start_time      TIMESTAMP               NOT NULL,
    modif_time      TIMESTAMP               NOT NULL,

    PRIMARY KEY (sess_id, modif_time)
);
