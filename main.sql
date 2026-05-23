
-- Single Table Lab Sheet

--CREATE TABLE pet (name VARCHAR(20), owner VARCHAR(20), species VARCHAR(20), sex CHAR(1), checkups SMALLINT UNSIGNED, birth DATE, death DATE);

-- INSERT INTO pet (name,owner,species,sex,checkups,birth,death)VALUES 
-- ('Fluffy','Harold','cat','f',5,'2001-02-04',NULL), 
-- ('Claws','Gwen','cat','m',2,'2000-03-17',NULL), 
-- ('Buffy','Harold','dog','f',7,'1999-05-13',NULL), 
-- ('Fang','Benny','dog','m',4,'2000-08-27',NULL), 
-- ('Bowser','Diane','dog','m',8,'1998-08-31','2001-07-29'), 
-- ('Chirpy','Gwen','bird','f',0,'2002-09-11',NULL), 
-- ('Whistler','Gwen','bird','',1,'2001-12-09',NULL), 
-- ('Slim','Benny','snake','m',5,'2001-04-29',NULL); 

Select * from pet

-- Q1-1
SELECT owner, name
FROM Pet
WHERE sex = 'f';


-- Q1-2
SELECT name, birth
FROM Pet
WHERE species = 'dog';


-- Q1-3
SELECT owner
FROM Pet
WHERE species = 'bird';


-- Q1-4
SELECT species
FROM Pet
WHERE sex = 'f';


-- Q1-5
SELECT name, birth
FROM Pet
WHERE species IN ('cat', 'bird');


-- Q1-6
SELECT name, species
FROM Pet
WHERE species IN ('cat', 'bird')
AND sex = 'f';

-- Q2-1
SELECT owner, name
FROM Pet
WHERE name LIKE '%er'
OR name LIKE '%all';


-- Q2-2
SELECT name
FROM Pet
WHERE owner LIKE '%e%';


-- Q2-3
SELECT name
FROM Pet
WHERE name NOT LIKE '%fy';


-- Q2-4
SELECT name
FROM Pet
WHERE owner LIKE '____';


-- Q2-5
SELECT DISTINCT owner
FROM Pet
WHERE owner REGEXP '^[A-Ea-e].*[A-Ea-e]$';


-- Q2-6
SELECT DISTINCT owner
FROM Pet
WHERE owner REGEXP BINARY '^[A-E].*[A-E]$';


-- Q3-1
SELECT owner, AVG(checkups) AS average_checkups
FROM Pet
GROUP BY owner;


-- Q3-2
SELECT species, COUNT(*) AS total_pets
FROM Pet
GROUP BY species
ORDER BY total_pets ASC;


-- Q3-3
SELECT owner, species, COUNT(*) AS total
FROM Pet
GROUP BY owner, species;


-- Q3-4
SELECT owner, COUNT(DISTINCT species) AS distinct_species
FROM Pet
GROUP BY owner;


-- Q3-5
SELECT sex, COUNT(*) AS total
FROM Pet
WHERE sex IS NOT NULL
GROUP BY sex;


-- Q3-6
SELECT owner, COUNT(*) AS bird_count
FROM Pet
WHERE species = 'bird'
GROUP BY owner;


-- Q3-7
SELECT owner, SUM(checkups) AS total_checkups
FROM Pet
GROUP BY owner;