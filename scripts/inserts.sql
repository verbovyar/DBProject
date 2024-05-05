-- insert into fs.genre

INSERT INTO fs.genre (genre, accept_age) VALUES ('драма, фэнтези, криминал', 16);
INSERT INTO fs.genre (genre, accept_age) VALUES ('драма', 16);
INSERT INTO fs.genre (genre, accept_age) VALUES ('драма, биография, история, военный', 16);
INSERT INTO fs.genre (genre, accept_age) VALUES ('фантастика, драма, приключения', 16);
INSERT INTO fs.genre (genre, accept_age) VALUES ('фантастика, комедия, приключения', 12);
INSERT INTO fs.genre (genre, accept_age) VALUES ('триллер, детектив, драма', 18);
INSERT INTO fs.genre (genre, accept_age) VALUES ('боевик, комедия, криминал', 18);
INSERT INTO fs.genre (genre, accept_age) VALUES ('триллер, детектив, криминал, драма, ужасы', 18);
INSERT INTO fs.genre (genre, accept_age) VALUES ('детектив, комедия, драма, криминал', 18);
INSERT INTO fs.genre (genre, accept_age) VALUES ('мультфильм, фэнтези, комедия, семейный', 12);
INSERT INTO fs.genre (genre, accept_age) VALUES ('фэнтези, приключения, семейный', 12);
INSERT INTO fs.genre (genre, accept_age) VALUES ('фэнтези, боевик, приключения', 12);
INSERT INTO fs.genre (genre, accept_age) VALUES ('фантастика, боевик', 16);
INSERT INTO fs.genre (genre, accept_age) VALUES ('мультфильм, комедия, приключения, семейный', 0);

-- insert into fs.films

INSERT INTO fs.films (film_id, film_title, rel_date, rel_country, genre, box_office, director)
VALUES (1, 'Зеленая миля', '1999-12-06', 'США', 'драма, фэнтези, криминал', 287, 'Фрэнк Дарабонт');

INSERT INTO fs.films (film_id, film_title, rel_date, rel_country, genre, box_office, director)
VALUES (2, 'Побег из Шоушенка', '1994-09-10', 'США', 'драма', 73, 'Фрэнк Дарабонт');

INSERT INTO fs.films (film_id, film_title, rel_date, rel_country, genre, box_office, director)
VALUES (3, 'Достать ножи', '2019-09-07', 'США', 'детектив, комедия, драма, криминал', 313, 'Райан Джонсон');

INSERT INTO fs.films (film_id, film_title, rel_date, rel_country, genre, box_office, director)
VALUES (4, 'Интерстеллар', '2014-10-26', 'США, Великобритания, Канада', 'фантастика, драма, приключения', 774, 'Кристофер Нолан');

INSERT INTO fs.films (film_id, film_title, rel_date, rel_country, genre, box_office, director)
VALUES (5, 'Дюна', '2024-07-03', 'США', 'фантастика, приключения', 381, 'Дени Вильнёв');

INSERT INTO fs.films (film_id, film_title, rel_date, rel_country, genre, box_office, director)
VALUES (6, 'Остров проклятых', '2010-02-13', 'США', 'триллер, детектив, драма', 295, 'Мартин Скорсезе');

INSERT INTO fs.films (film_id, film_title, rel_date, rel_country, genre, box_office, director)
VALUES (7, 'Большая гонка. Ауди против Лянчи', '2024-10-28', 'США', 'спорт', 539, 'Стефано Мордини');

INSERT INTO fs.films (film_id, film_title, rel_date, rel_country, genre, box_office, director)
VALUES (8, 'Молчание ягнят', '1991-01-30', 'США', 'триллер, детектив, криминал, драма, ужасы', 273, 'Джонатан Демме');

INSERT INTO fs.films (film_id, film_title, rel_date, rel_country, genre, box_office, director)
VALUES (9, 'Список Шиндлера', '1993-11-30', 'США', 'драма, биография, история, военный', 321, 'Стивен Спилберг');

INSERT INTO fs.films (film_id, film_title, rel_date, rel_country, genre, box_office, director)
VALUES (10, 'Шрэк', '2001-10-31', 'США, Канада, Швеция', 'мультфильм, фэнтези, комедия, семейный', 484, 'Эндрю Адамсон, Вики Дженсон');

INSERT INTO fs.films (film_id, film_title, rel_date, rel_country, genre, box_office, director)
VALUES (11, 'Гарри Поттер и узник Азкабана', '2004-05-23', 'Великобритания, США', 'фэнтези, приключения, семейный', 796, 'Альфонсо Куарон');

INSERT INTO fs.films (film_id, film_title, rel_date, rel_country, genre, box_office, director)
VALUES (12, 'Пираты Карибского моря: Проклятие Черной жемчужины', '2003-06-28', 'США', 'фэнтези, боевик, приключения', 654, 'Гор Вербински');

INSERT INTO fs.films (film_id, film_title, rel_date, rel_country, genre, box_office, director)
VALUES (13, 'Опенгеймер', '2023-08-23', 'Великобритания, США', 'биография, драма, история', 25, 'Кристофер Нолан');

INSERT INTO fs.films (film_id, film_title, rel_date, rel_country, genre, box_office, director)
VALUES (14, 'Матрица', '1999-03-24', 'США, Австралия', 'фантастика, боевик', 464, 'Лана Вачовски, Лилли Вачовски');

INSERT INTO fs.films (film_id, film_title, rel_date, rel_country, genre, box_office, director)
VALUES (15, 'В поисках Немо', '2003-05-18', 'США', 'мультфильм, комедия, приключения, семейный', 897, 'Эндрю Стэнтон, Ли Анкрич');

-- insert into fs.halls

INSERT INTO fs.halls (hall_name, seats_numb) VALUES ('Большой зал', 240);
INSERT INTO fs.halls (hall_name, seats_numb) VALUES ('Малый зал', 54);
INSERT INTO fs.halls (hall_name, seats_numb) VALUES ('VIP зал', 12);

-- insert into fs.sessions

INSERT INTO fs.sessions (sess_id, film_id, hall_name, start_time) VALUES (51, 10, 'Большой зал', '2024-05-02 11:00:00');
INSERT INTO fs.sessions (sess_id, film_id, hall_name, start_time) VALUES (52, 2, 'Большой зал', '2024-05-02 14:25:00');
INSERT INTO fs.sessions (sess_id, film_id, hall_name, start_time) VALUES (53, 12, 'Малый зал', '2024-05-02 18:40:00');
INSERT INTO fs.sessions (sess_id, film_id, hall_name, start_time) VALUES (54, 1, 'VIP зал', '2024-05-02 19:10:00');
INSERT INTO fs.sessions (sess_id, film_id, hall_name, start_time) VALUES (55, 15, 'Большой зал', '2024-05-03 10:25:00');
INSERT INTO fs.sessions (sess_id, film_id, hall_name, start_time) VALUES (56, 13, 'Малый зал', '2024-05-03 15:50:00');
INSERT INTO fs.sessions (sess_id, film_id, hall_name, start_time) VALUES (57, 11, 'Малый зал', '2024-05-03 18:00:00');
INSERT INTO fs.sessions (sess_id, film_id, hall_name, start_time) VALUES (58, 5, 'Большой зал', '2024-05-03 18:30:00');
INSERT INTO fs.sessions (sess_id, film_id, hall_name, start_time) VALUES (59, 8, 'Малый зал', '2024-05-04 14:50:00');
INSERT INTO fs.sessions (sess_id, film_id, hall_name, start_time) VALUES (60, 9, 'Большой зал', '2024-05-04 15:20:00');
INSERT INTO fs.sessions (sess_id, film_id, hall_name, start_time) VALUES (61, 14, 'Большой зал', '2024-05-04 18:05:00');
INSERT INTO fs.sessions (sess_id, film_id, hall_name, start_time) VALUES (62, 6, 'VIP зал', '2024-05-04 20:10:00');
INSERT INTO fs.sessions (sess_id, film_id, hall_name, start_time) VALUES (63, 7, 'Большой зал', '2024-05-05 12:50:00');
INSERT INTO fs.sessions (sess_id, film_id, hall_name, start_time) VALUES (64, 4, 'Малый зал', '2024-05-05 16:00:00');
INSERT INTO fs.sessions (sess_id, film_id, hall_name, start_time) VALUES (65, 3, 'VIP зал', '2024-05-05 20:45:00');

-- insert into fs.spectators

INSERT INTO fs.spectators (spect_id, firstname, surname, sex, age, comp_size)
VALUES (6, 'Ярослав', 'Вербов', 'male', 21, 2);

INSERT INTO fs.spectators (spect_id, firstname, surname, sex, age, comp_size)
VALUES (1, 'Сергей', 'Василенок', 'male', 19, 3);

INSERT INTO fs.spectators (spect_id, firstname, surname, sex, age, comp_size)
VALUES (2, 'Александр', 'Гаврилин', 'male', 21, 3);

INSERT INTO fs.spectators (spect_id, firstname, surname, sex, age, comp_size)
VALUES (3, 'Алексей', 'Зерцалов', 'male', 22, 3);

INSERT INTO fs.spectators (spect_id, firstname, surname, sex, age, comp_size)
VALUES (4, 'Николай', 'Алексеев', 'male', 21, 1);

INSERT INTO fs.spectators (spect_id, firstname, surname, sex, age, comp_size)
VALUES (5, 'Аделина', 'Заоева', 'female', 19, 2);

INSERT INTO fs.spectators (spect_id, firstname, surname, sex, age, comp_size)
VALUES (7, 'Кайрат', 'Жумаем', 'male', 23, 3);

INSERT INTO fs.spectators (spect_id, firstname, surname, sex, age, comp_size)
VALUES (8, 'Валерий', 'Зайнуллин', 'male', 22, 3);

INSERT INTO fs.spectators (spect_id, firstname, surname, sex, age, comp_size)
VALUES (9, 'Михаил', 'Ватаман', 'male', 19, 1);

INSERT INTO fs.spectators (spect_id, firstname, surname, sex, age, comp_size)
VALUES (10, 'Александр', 'Мошковский', 'male', 19, 1);

INSERT INTO fs.spectators (spect_id, firstname, surname, sex, age, comp_size)
VALUES (11, 'Азиз', 'Афиф', 'male', 19, 2);

INSERT INTO fs.spectators (spect_id, firstname, surname, sex, age, comp_size)
VALUES (12, 'Дмитрий', 'Авербух', 'male', 19, 3);

INSERT INTO fs.spectators (spect_id, firstname, surname, sex, age, comp_size)
VALUES (13, 'Анастасия', 'Золотова', 'female', 21, 2);

INSERT INTO fs.spectators (spect_id, firstname, surname, sex, age, comp_size)
VALUES (14, 'МАрия', 'Макарова', 'female', 22, 2);

INSERT INTO fs.spectators (spect_id, firstname, surname, sex, age, comp_size)
VALUES (15, 'Сергей', 'Спиридонов', 'male', 18, 2);

-- insert into fs.seats

INSERT INTO fs.seats (seat_id, hall_name, row, seat) VALUES (1, 'VIP зал', 1, 1);
INSERT INTO fs.seats (seat_id, hall_name, row, seat) VALUES (2, 'VIP зал', 1, 2);
INSERT INTO fs.seats (seat_id, hall_name, row, seat) VALUES (3, 'VIP зал', 1, 3);
INSERT INTO fs.seats (seat_id, hall_name, row, seat) VALUES (13, 'Малый зал', 1, 1);
INSERT INTO fs.seats (seat_id, hall_name, row, seat) VALUES (14, 'Малый зал', 1, 2);
INSERT INTO fs.seats (seat_id, hall_name, row, seat) VALUES (15, 'Малый зал', 1, 3);
INSERT INTO fs.seats (seat_id, hall_name, row, seat) VALUES (16, 'Малый зал', 1, 4);
INSERT INTO fs.seats (seat_id, hall_name, row, seat) VALUES (67, 'Большой зал', 1, 1);
INSERT INTO fs.seats (seat_id, hall_name, row, seat) VALUES (68, 'Большой зал', 1, 2);
INSERT INTO fs.seats (seat_id, hall_name, row, seat) VALUES (69, 'Большой зал', 1, 3);
INSERT INTO fs.seats (seat_id, hall_name, row, seat) VALUES (70, 'Большой зал', 1, 4);

-- insert into fs.tickets

INSERT INTO fs.tickets (tick_id, spect_id, sess_id, seat_id, cost) VALUES (1, 1, 54, 1, 550);
INSERT INTO fs.tickets (tick_id, spect_id, sess_id, seat_id, cost) VALUES (2, 2, 54, 2, 550);
INSERT INTO fs.tickets (tick_id, spect_id, sess_id, seat_id, cost) VALUES (3, 3, 54, 3, 550);
INSERT INTO fs.tickets (tick_id, spect_id, sess_id, seat_id, cost) VALUES (4, 13, 57, 15, 320);
INSERT INTO fs.tickets (tick_id, spect_id, sess_id, seat_id, cost) VALUES (5, 14, 57, 16, 320);
INSERT INTO fs.tickets (tick_id, spect_id, sess_id, seat_id, cost) VALUES (6, 11, 58, 67, 260);
INSERT INTO fs.tickets (tick_id, spect_id, sess_id, seat_id, cost) VALUES (7, 15, 60, 70, 260);
INSERT INTO fs.tickets (tick_id, spect_id, sess_id, seat_id, cost) VALUES (8, 7, 64, 13, 320);
INSERT INTO fs.tickets (tick_id, spect_id, sess_id, seat_id, cost) VALUES (9, 8, 64, 14, 320);
INSERT INTO fs.tickets (tick_id, spect_id, sess_id, seat_id, cost) VALUES (10, 12, 64, 15, 320);

-- insert into fs.history

INSERT INTO fs.history (sess_id, film_id, hall_name, start_time, history)
VALUES (40, 1, 'Большой зал', '2024-04-26 13:55:00', '2024-05-01 10:00:00');

INSERT INTO fs.history (sess_id, film_id, hall_name, start_time, history)
VALUES (41, 7, 'Большой зал', '2024-04-27 11:15:00', '2024-05-01 10:00:00');

INSERT INTO fs.history (sess_id, film_id, hall_name, start_time, history)
VALUES (42, 3, 'Большой зал', '2024-04-27 14:35:00', '2024-05-01 10:00:00');

INSERT INTO fs.history (sess_id, film_id, hall_name, start_time, history)
VALUES (43, 5, 'Малый зал', '2024-04-27 18:45:00', '2024-05-01 10:00:00');

INSERT INTO fs.history (sess_id, film_id, hall_name, start_time, history)
VALUES (44, 12, 'VIP зал', '2024-04-27 19:40:00', '2024-05-01 10:00:00');

INSERT INTO fs.history (sess_id, film_id, hall_name, start_time, history)
VALUES (45, 4, 'Большой зал', '2024-04-28 10:15:00', '2024-05-01 10:00:00');

INSERT INTO fs.history (sess_id, film_id, hall_name, start_time, history)
VALUES (46, 8, 'Малый зал', '2024-04-28 16:20:00', '2024-05-01 10:00:00');

INSERT INTO fs.history (sess_id, film_id, hall_name, start_time, history)
VALUES (47, 11, 'Малый зал', '2024-04-28 18:15:00', '2024-05-01 10:00:00');

INSERT INTO fs.history (sess_id, film_id, hall_name, start_time, history)
VALUES (48, 2, 'Большой зал', '2024-04-29 19:10:00', '2024-05-01 10:00:00');

INSERT INTO fs.history (sess_id, film_id, hall_name, start_time, history)
VALUES (49, 13, 'Малый зал', '2024-05-30 16:30:00', '2024-05-01 10:00:00');