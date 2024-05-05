-- Триггер оповещает об обновлении информации в таблице fs.films

CREATE OR REPLACE TRIGGER films_alert_trigger
AFTER UPDATE ON fs.films
FOR EACH ROW
EXECUTE FUNCTION alert();

-- Триггер бросает исключение при неверном формате добавления данных в таблицу fs.spectators

CREATE OR REPLACE TRIGGER spects_missing_trigger
BEFORE INSERT ON fs.spectators
FOR EACH ROW
EXECUTE PROCEDURE missing();