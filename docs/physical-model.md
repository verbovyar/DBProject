Таблица film:
|название|описание|тип данных|ограничение|
| ------------ | ------------ | ------------ | ------------ |
|film_id|Идентификатор фильма|INTEGER|PRIMARY KEY|
|film_title|Название фильма|CHARACTER VARYING(50)|NOT NULL|
|rel_date|Дата релиза|DATE|NOT NULL|
|rel_country|Страна|CHARACTER VARYING(20)|NOT NULL|
|genre|Жанр|VARCHAR(20)|FOREIGN KEY|
|box_office|Кассовые сборы|INTEGER|NOT NULL|
|director|Режисер|CHARACTER VARYING(20)|NOT NULL|
---
Таблица hall:
|название|описание|тип данных|ограничение|
| ------------ | ------------ | ------------ | ------------ |
|hall_name|Зал|CHARACTER VARYING(20)|PRIMARY KEY|
|seats_numb|Количество мест|INTEGER|NOT NULL|
|audio_format|Формат звуковой системы|CHARACTER VARYING(20)|NOT NULL|
---
Таблица session:
|название|описание|тип данных|ограничение|
| ------------ | ------------ | ------------ | ------------ |
|sess_id|Идентификатор сеанса|INTEGER|PRIMARY KEY|
|film_id|Идентификатор фильма|INTEGER|FOREIGN KEY|
|hall_name|Название зала|CHARACTER VARYING(20)|FOREIGN KEY|
|start_time|Начало показа|TIMESTAMP|NOT NULL|
---
Таблица ticket:
|название|описание|тип данных|ограничение|
| ------------ | ------------ | ------------ | ------------ |
|tick_id|Идентификатор билета|INTEGER|PRIMARY KEY|
|spect_id|Идентификатор зрителя|INTEGER|FOREIGN KEY|
|sess_id|Идентификатор сеанса|INTEGER|FOREIGN KEY|
|seat_id|Идентификатор места|INTEGER|FOREIGN KEY|
|start_time|Начало показа|TIMESTAMP|NOT NULL|
|cost|Цена билета|INTEGER|NOT NULL|
---
Таблица spectator:
|название|описание|тип данных|ограничение|
| ------------ | ------------ | ------------ | ------------ |
|spect_id|Идентификатор билета|INTEGER|PRIMARY KEY|
|firstname|Идентификатор зрителя|CHARACTER VARYING(20)|NOT NULL|
|surname|Идентификатор сеанса|CHARACTER VARYING(20)|NOT NULL|
|sex|Идентификатор места|VARCHAR(10)|NOT NULL|
|age|Начало показа|INTEGER|NOT NULL|
|comp_size|Цена билета|INTEGER|NOT NULL|
---
Таблица seat:
|название|описание|тип данных|ограничение|
| ------------ | ------------ | ------------ | ------------ |
|seat_id|Идентификатор места|INTEGER|PRIMARY KEY|
|hall_name|Зал|CHARACTER VARYING(20)|FOREIGN KEY|
|row|Ряд|INTEGER|NOT NULL|
|seat|Место|INTEGER|NOT NULL|
---
Таблица genre:
|название|описание|тип данных|ограничение|
| ------------ | ------------ | ------------ | ------------ |
|genre|Жанр|VARCHAR(20)|PRIMARY KEY|
|accept_age|Допустимый возраст|INTEGER|NOT NULL|
---
Таблица history:
|название|описание|тип данных|ограничение|
| ------------ | ------------ | ------------ | ------------ |
|sess_id|Идентификатор сеанса|INTEGER|PRIMARY KEY|
|film_id|Идентификатор фильма|INTEGER|FOREIGN KEY|
|hall_name|Название зала|CHARACTER VARYING(20)|FOREIGN KEY|
|start_time|Начало показа|TIMESTAMP|NOT NULL|
|history|История изменения|TIMESTAMP|NOT NULL|