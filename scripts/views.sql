-- create hiding discount promo code view

CREATE VIEW fs.spectators_promo_masked AS
SELECT spect_id, firstname, surname, sex, age, comp_size,
    SUBSTRING(disc_promo FROM 1 FOR 3) || '*********' AS promo_masked
FROM fs.spectators;

-- create hiding passport data view

CREATE VIEW fs.passport_data_masked AS
SELECT spect_id, firstname, surname, sex, age, comp_size, '*********' AS passport_data_masked
FROM fs.spectators;

-- creare hiding internal evaluation and rating view

CREATE VIEW fs.int_evaluation_masked AS
SELECT film_id, film_title, rel_date, rel_country, genre, box_office, director,
    SUBSTRING(int_evaluation FROM 1 FOR 3) || '*********' AS int_evaluation_data_masked
FROM fs.films;

-- create top money spenders view

CREATE VIEW fs.spends AS
SELECT firstname, surname, sum(cost)
FROM fs.spectators spect JOIN fs.tickets tick ON spect.spect_id = tick.spect_id
GROUP BY spect.spect_id
ORDER BY sum(cost) DESC;

-- create top films by box office view

CREATE VIEW fs.fees AS
SELECT film_title, rel_date, rel_country, genre, box_office, director
FROM fs.films
ORDER BY box_office DESC;

-- create top count of visits by different age groups view

CREATE VIEW fs.visits AS
SELECT firstname, surname, sex, age, count(*) OVER (ORDER BY age)
FROM fs.spectators
ORDER BY count DESC;