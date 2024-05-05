-- CRUD queries to fs.sessions:

INSERT INTO fs.sessions (sess_id, film_id, hall_name, start_time)
VALUES (66, 7, 'Малый зал', '2024-05-06 15:40:00');

-- Узнаем количество сеансов, проходивших 5-го мая:

SELECT count(*) AS sess_count
FROM fs.sessions
WHERE start_time BETWEEN '2024-05-05 00:00:00' AND '2024-05-06 00:00:00';

-- Изменим дату показа фильма для конкретного сеанса(перенос):

UPDATE fs.sessions
SET start_time = '2024-05-06 16:00:00'
WHERE sess_id = 66;

DELETE
FROM fs.sessions
WHERE sess_id = 66;


-- CRUD queries to fs.spectators:

INSERT INTO fs.spectators (spect_id, firstname, surname, sex, age, comp_size)
VALUES (16, 'Владимир', 'Лебедев', 'male', 23, 2);

-- Узнаем размер самой большой компании:

SELECT max(comp_size) AS max_comp
FROM fs.spectators;

-- Изменим размер компании конкретного человека(пришел друг):

UPDATE fs.spectators
SET comp_size = 2
WHERE spect_id = 4;

DELETE
FROM fs.spectators
WHERE spect_id = 16;