-- Быстрый доступ к фильмам по имени режиссера

CREATE INDEX films_dir_index
ON fs.films (director);

-- Быстрый доступ к зрителям по их имени и фамилии

CREATE INDEX spects_name_index
ON fs.spectators (firstname, surname);

-- Быстрый доступ к местам по номеру ряда и места

CREATE INDEX seats_place_index
ON fs.seats (row, seat);
