-- QTM 151 - Assignment 09
-- Add your name here (use -- to comment)
-- Name: Ryan Kim   
-- Emory Id: 2634998

-- Using pdAdmin or any other SQL client, run the following SQL script to create a new table.
-- Then answer the questions in the assignment.

DROP TABLE IF EXISTS "drivers";

CREATE TABLE drivers (
    driver_id INT PRIMARY KEY,
    driver_name VARCHAR(100),
    nationality VARCHAR(50),
    lap_times INT
);

INSERT INTO drivers (driver_id, driver_name, nationality, lap_times) VALUES
(1, 'Simon Cowell', 'British', 74),
(2, 'Fernando Alonso', 'Spanish', 26),
(3, 'Heinrich Bach', 'German', 82),
(4, 'Giorgio Soprano', 'Spanish', 87),
(5, 'Lewis Hamilton', 'British', 103),
(6, 'Henry Louvre', 'British', 32),
(7, 'Sebastian Vettel', 'German', 91),
(8, 'Lukas Zech', 'German', 53),
(9, 'Donic Kovak', 'German', 11),
(10, 'Michael Holzmieter', 'German', 24);

-- Question 1: Write an SQL query to select all columns from the drivers table.
SELECT * FROM drivers;
-- Question 2: Write an SQL query to retrieve only the driver_name and nationality of all drivers.
SELECT driver_id, nationality FROM drivers;
-- Question 3: Write an SQL query to find all drivers with the nationality 'German'.
SELECT * FROM drivers
WHERE nationality = 'German';
-- Question 4: Write an SQL query to select drivers who have completed more than 50 lap times.
SELECT driver_name, driver_id FROM drivers
WHERE lap_times > 50;
-- Question 5: Write an SQL query to count the number of drivers from each nationality.
SELECT nationality, COUNT(*) AS num_rows
FROM drivers 
GROUP BY nationality;
-- Question 6: Write an SQL query to find the driver with the highest number of lap times.
SELECT *
FROM drivers
WHERE lap_times = (SELECT MAX(lap_times) FROM drivers);
-- Question 7: Write an SQL query to list all drivers ordered by their lap times in descending order.
SELECT driver_name, lap_times
FROM drivers
ORDER BY lap_times DESC;
-- Question 8: Write an SQL statement to insert a new driver with driver_id 11, driver_name 'Jenson Button', nationality 'British', and lap_times 45.
INSERT INTO drivers VALUES (11, 'Jenson Button', 'British', 45);
SELECT * FROM drivers;
-- Question 9: Write an SQL query to calculate the average number of lap times of all drivers.
SELECT AVG(lap_times) AS average_lap_times
FROM drivers;
-- Question 10: Question 13: Write an SQL query to find drivers whose lap times are between 20 and 80.
SELECT driver_name, driver_id FROM drivers
WHERE lap_times > 20 and lap_times < 80;
-- Submit the SQL queries for the questions above.