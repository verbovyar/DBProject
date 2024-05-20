# Проект "Кинотеатр"
---

В нашей базе данных хранится информация о фильмах, залах, сеансах, билетах, зрителях, местах. Администратор хочет проанализировать все и понять, какие фильмы пользуются большей популярностью, на какое время приходится пик количества зрителей и тд.

---

**fs.films**  
Сущность, хранящая информацию о фильмах. У каждого фильма есть уникальный идентификатор, название, дата выпуска, страна выпуска, жанр, кассовые сборы, режисер, допустимый для просмотра возраст.

**fs.halls**  
Сущность, хранящая информацию о залах кинотеатра. У каждого зала есть название, количество мест, формат звуковой системы.

**fs.seats**  
Сущность, хранящая информацию о местах. У каждого места есть уникальный идентификатор, идентификатор зала, в котором находится место, ряд и само место в ряду.

**fs.sessions**  
Сущность, хранящая информацию о сеансах. У каждого сеанса есть уникальный идентификатор, дата и время показа, название зала, в котором проходит сеанс, название фильма.

**fs.tickets**  
Сущность, хранящая информацию о билетах. У каждого билета есть уникальный идентификатор, идентификатор зрителя, получившего этот билет, идентификатор сеанса, дата и время показа, место в зале, цена.

**fs.spectators**  
Сущность, хранящая информацию о зрителях. У каждого зрителя есть уникальный идентификатор, фамилия, имя, пол, возраст, количество человек в компании.

---

**Концептуальная модель**


![Концептуальная модель](https://github.com/verbovyar/DBProject/blob/main/docs/conceptual-model.png)

**Логическая модель**


![Логическая модель](https://github.com/verbovyar/DBProject/blob/main/docs/Logical.PNG)

База данных находится в третьей нормальной форме. Таблица fs.sessions является версионной с типом SCD 4, история изменений хранится в отдельной таблице. 
