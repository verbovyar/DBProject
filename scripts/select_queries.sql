-- Узнаем имена и фамилии посетителей, средняя стоимость купленных билетов которыми составляет >= 300 RUB,
-- выведем таковых в порядке уменьшения средней стоимости.

SELECT CONCAT(firstname, ' ', surname) AS name, avg_cost
FROM (SELECT spect_id, avg(cost) AS avg_cost FROM fs.tickets GROUP BY spect_id HAVING avg(cost) >= 300) tick
    JOIN fs.spectators spect ON tick.spect_id = spect.spect_id
ORDER BY avg_cost DESC;


-- Выведем топ 5 фильмов по размеру кассовых сборов, минимальный допустимый возраст просмотра которых составляет 16 лет

SELECT film_title
FROM fs.films films JOIN fs.genre genre ON films.genre = genre.genre
WHERE accept_age >= 16
ORDER BY box_office DESC
LIMIT 5;


-- Сравним количество денег, потраченных каждым из зрителей на билеты за все время со средним количеством денег,
-- потраченных на билеты его сверстниками

SELECT CONCAT(firstname, ' ', surname) AS name, cost, avg(cost) OVER (PARTITION BY age)
FROM (SELECT spect_id, sum(cost) AS cost FROM fs.tickets GROUP BY spect_id) tick
    JOIN fs.spectators spect ON tick.spect_id = spect.spect_id;


-- Упорядочим зрителей по возрасту, и занумеруем группы индексом последнего из группы в порядке упорядочивания

SELECT CONCAT(firstname, ' ', surname), count(*) OVER (ORDER BY age)
FROM fs.spectators;


-- Пронумеруем сеансы в группах по фильмам, которые показываются на этих сеансах
SELECT film_title, count
FROM (SELECT film_id, count(sess_id) OVER (PARTITION BY film_id ORDER BY start_time) FROM fs.sessions) sess
    JOIN fs.films films ON sess.film_id = films.film_id;