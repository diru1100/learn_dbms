SELECT 'Hello World';

SELECT * FROM COUNTRY;

SELECT 'Hello, World' AS Result;

SELECT * FROM Country ORDERBY Name;

SELECT Name, LifeExpectancy AS 'Life Expectancy' FROM Country ORDER BY Name;

SELECT Name, Continent, Region from COUNTRY;

SELECT Name, Continent, Region from COUNTRY WHERE Continent = 'Europe';

SELECT Name, Continent, Region from COUNTRY WHERE Continent = 'Europe' ORDER BY Name LIMIT 5 OFFSET 5;


-- INSERT S
SELECT * FROM customer;

INSERT INTO customer(name, address, city, state, zip)
    VALUES('Micheal Scott', 'Dunder Mifflin', 'Scranton', 'Pennyslvania', '18504');
    
INSERT INTO customer(name, state, zip)
    VALUES('Leslie', 'Indiana', '62558');



UPDATE customer SET id = 4 WHERE id = 5;


DELETE FROM customer where id = 4;


--- CREATE TABLE

CREATE TABLE sample(
    id INTEGER,
    Name STRING
);

INSERT INTO sample(id, name) VALUES(1, 'KillerBee');
INSERT INTO sample(id, name) VALUES(2, 'Naruto');
INSERT INTO sample(id, name) VALUES(3, 'Sasuke');

SELECT * FROM sample;