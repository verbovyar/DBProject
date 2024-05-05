-- Функция оповещает об обновлении информации в таблице fs.films

CREATE OR REPLACE FUNCTION alert()
RETURNS TRIGGER AS $$
BEGIN
RAISE NOTICE 'Update information about films'
RETURN NULL;
END;
$$
LANGUAGE plpgsql;

-- Функция бросает исключение при неверном формате добавления данных в таблицу fs.spectators

CREATE OR REPLACE FUNCTION missing()
RETURNS TRIGGER AS $$
BEGIN
IF NEW.firstname IS NULL
    THEN RAISE EXCEPTION 'Firstname is missed';
END IF;
IF NEW.surname IS NULL
    THEN RAISE EXCEPTION 'Surname is missed';
END IF;
IF NEW.sex IS NULL
    THEN RAISE EXCEPTION 'Sex is missed';
END IF;
IF NEW.surname IS NULL
    THEN RAISE EXCEPTION 'Age is missed';
END IF;
RETURN NEW;
END;
$$
LANGUAGE plpgsql;