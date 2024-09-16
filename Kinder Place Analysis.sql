CREATE DATABASE KINDER;
USE KINDER;

CREATE TABLE students (
studentid INT,
firstname VARCHAR(50),
lastname VARCHAR(50),
dateofbirth DATE,
PRIMARY KEY (studentid));

CREATE TABLE parents (
parentid INT,
firstname VARCHAR(50),
lastname VARCHAR(50),
studentid INT,
PRIMARY KEY (parentid),
FOREIGN KEY (studentid) REFERENCES students(studentid));

CREATE TABLE health_records (
studentid INT,
allergies VARCHAR(255),
vaccination_status VARCHAR(255),
health_checkup DATE,
PRIMARY KEY (studentid),
FOREIGN KEY (studentid) REFERENCES students(studentid));

CREATE TABLE employees (
employeeid INT,
firstname VARCHAR(50),
lastname VARCHAR(50),
dateofbirth DATE,
phone VARCHAR(50),
certification_experiation VARCHAR(255),
PRIMARY KEY (employeeid));

CREATE TABLE financial_records (
studentid INT,
tuition DECIMAL(10, 2),
tuition_payment DECIMAL(10, 2),
PRIMARY KEY (studentid),
FOREIGN KEY (studentid) REFERENCES students (studentid));

CREATE TABLE inventory (
inventoryid INT,
inventory_name VARCHAR(50),
units_in_stock INT,
PRIMARY KEY (inventoryid));

CREATE TABLE attendance (
studentid INT,
attendance_date DATE,
present BOOLEAN,
PRIMARY KEY (studentid),
FOREIGN KEY (studentid) REFERENCES students(studentid));

INSERT INTO students VALUES (1111, 'Jim', 'Jones', '2019-05-06');
INSERT INTO students VALUES (2222, 'Terry', 'Cruz', '2019-12-21');
INSERT INTO students VALUES (3333, 'Kim' ,'Brown', '2019-11-22');
INSERT INTO students VALUES (4444, 'Lauren', 'Green', '2020-02-03');
INSERT INTO students VALUES (5555, 'Mike', 'Campbell', '2020-07-09');
INSERT INTO students VALUES (6666, 'Tim', 'Lee', '2019-04-08');
INSERT INTO students VALUES (7777, 'Keith', 'Farmer', '2019-07-25');
INSERT INTO students VALUES (8888, 'Kash', 'King', '2019-08-12');
INSERT INTO students VALUES (9999, 'Nick', 'Well', '2019-04-13');
INSERT INTO students VALUES (1000, 'Mia', 'Johnson', '2020-07-25');
INSERT INTO students VALUES (1100, 'Keara', 'Porter', '2020-10-21');
INSERT INTO students VALUES (1200, 'Katrina', 'Wilmer', '2019-12-27');
INSERT INTO students VALUES (1300, 'Rina', 'Gomez', '2020-06-05');
INSERT INTO students VALUES (1400, 'Legend', 'Hill', '2020-03-25');
INSERT INTO students VALUES (1500, 'Lee', 'Hicks', '2019-11-05');
INSERT INTO students VALUES (1600, 'Lue', 'Wang', '2020-07-14');
INSERT INTO students VALUES (1700, 'Harry', 'Potter', '2020-01-12');
INSERT INTO students VALUES (1800, 'Martin', 'Smith', '2019-10-15');
INSERT INTO students VALUES (1900, 'Charlie', 'Bentley', '2020-04-22');
INSERT INTO students VALUES (2000, 'Will', 'Parker', '2019-02-11');

INSERT INTO parents VALUES(1110, 'Karen', 'Jones', 1111);
INSERT INTO parents VALUES(2220, 'John', 'Cruz', 2222);
INSERT INTO parents VALUES(3330, 'Ron', 'Brown', 3333);
INSERT INTO parents VALUES(4440, 'Tiffany', 'Green', 4444);
INSERT INTO parents VALUES(5550, 'Deborah','Campbell', 5555);
INSERT INTO parents VALUES(6660, 'Dylan', 'Lee', 6666);
INSERT INTO parents VALUES(7770, 'Jimmy', 'Farmer', 7777);
INSERT INTO parents VALUES(8880, 'Lauren', 'King', 8888);
INSERT INTO parents VALUES(9990, 'Timmy', 'Well', 9999);
INSERT INTO parents VALUES(1001, 'Katrina', 'Johnson', 1000);
INSERT INTO parents VALUES(1101, 'Josh', 'Porter', 1100);
INSERT INTO parents VALUES(1201, 'Caleb', 'Wilmer', 1200);
INSERT INTO parents VALUES(1301, 'Kimball', 'Gomez', 1300);
INSERT INTO parents VALUES(1401, 'Kaylin', 'Hill', 1400);
INSERT INTO parents VALUES(1501, 'Jonathan', 'Hicks', 1500);
INSERT INTO parents VALUES(1601, 'Tasha', 'Wang', 1600);
INSERT INTO parents VALUES(1701, 'Kimberly', 'Potter', 1700);
INSERT INTO parents VALUES(1801, 'Lynn', 'Smith', 1800);
INSERT INTO parents VALUES(1901, 'Kennedy', 'Bentley', 1900);
INSERT INTO parents VALUES(2001, 'Kelsey', 'Parker', 2000);

INSERT INTO health_records VALUES(1111, 'NULL', 'vaccinated', '2024-02-01');  
INSERT INTO health_records VALUES(2222, 'NULL', 'vaccinated', '2024-03-01');
INSERT INTO health_records VALUES(3333, 'Peanuts', 'vaccinated', '2024-03-01'); 
INSERT INTO health_records VALUES(4444, 'Shellfish', 'vaccinated','2023-11-01');
INSERT INTO health_records VALUES(5555, 'NULL', 'vaccinated', '2023-11-01'); 
INSERT INTO health_records VALUES(6666, 'NULL', 'incomplete', '2024-05-01'); 
INSERT INTO health_records VALUES(7777, 'Peaches', 'incomplete', '2024-02-01');
INSERT INTO health_records VALUES(8888, 'Peanuts', 'vaccinated', '2023-11-01');
INSERT INTO health_records VALUES(9999, 'Shellfish', 'vaccinated', '2023-11-01');
INSERT INTO health_records VALUES(1000, 'Peanuts', 'vaccinated', '2024-05-01');
INSERT INTO health_records VALUES(1100, 'NULL', 'vaccinated', '2024-05-01');
INSERT INTO health_records VALUES(1200, 'NULL', 'vaccinated', '2024-05-01');
INSERT INTO health_records VALUES(1300, 'NULL', 'vaccinated', '2024-05-01');
INSERT INTO health_records VALUES(1400, 'Peanuts', 'vaccinated', '2024-05-01');
INSERT INTO health_records VALUES(1500, 'Pineapples', 'incomplete', '2024-05-01');
INSERT INTO health_records VALUES(1600, 'Shellfish', 'incomplete', '2023-11-01');
INSERT INTO health_records VALUES(1700, 'NULL', 'incomplete', '2023-12-01)');
INSERT INTO health_records VALUES(1800, 'NULL', 'incomplete','2023-12-01');
INSERT INTO health_records VALUES(1900, 'Peanuts', 'vaccinated', '2023-12-01');
INSERT INTO health_records VALUES(2000, 'NULL', 'vaccinated', '2023-12-01');

INSERT INTO attendance VALUES(1111, '2023-12-01', True);
INSERT INTO attendance VALUES(2222, '2023-12-01', False);
INSERT INTO attendance VALUES(3333, '2023-12-01', True);
INSERT INTO attendance VALUES(4444, '2023-12-01', True);
INSERT INTO attendance VALUES(5555, '2023-12-01', False);
INSERT INTO attendance VALUES(6666, '2023-12-01', False);
INSERT INTO attendance VALUES(7777, '2023-12-01', False);
INSERT INTO attendance VALUES(8888, '2023-12-01', True);
INSERT INTO attendance VALUES(9999, '2023-12-01', True);
INSERT INTO attendance VALUES(1000, '2023-12-01', True);
INSERT INTO attendance VALUES(1100, '2023-12-01', True);
INSERT INTO attendance VALUES(1200, '2023-12-01', True);
INSERT INTO attendance VALUES(1300, '2023-12-01', True);
INSERT INTO attendance VALUES(1400, '2023-12-01', True);
INSERT INTO attendance VALUES(1500, '2023-12-01', True);
INSERT INTO attendance VALUES(1600, '2023-12-01', True);
INSERT INTO attendance VALUES(1700, '2023-12-01', True);
INSERT INTO attendance VALUES(1800, '2023-12-01', True);
INSERT INTO attendance VALUES(1900, '2023-12-01', True);
INSERT INTO attendance VALUES(2000, '2023-12-01', False);

INSERT INTO inventory VALUES(0001, 'Crayons', 12);
INSERT INTO inventory VALUES(0002, 'Glue Sticks', 30);
INSERT INTO inventory VALUES(0003, 'Construction Paper', 10);
INSERT INTO inventory VALUES(0004, 'Pencils', 5);
INSERT INTO inventory VALUES(0005, 'Erasers', 8);
INSERT INTO inventory VALUES(0006, 'Markers', 2);
INSERT INTO inventory VALUES(0007, 'Scissors', 6);
INSERT INTO inventory VALUES(0008, 'Rulers', 2);
INSERT INTO inventory VALUES(0009, 'Notebook Paper', 3);
INSERT INTO inventory VALUES(0010, 'Folders', 1);
INSERT INTO inventory VALUES(0011, 'Binders', 20);
INSERT INTO inventory VALUES(0012, 'Tape', 3);
INSERT INTO inventory VALUES(0013, ' Dry-Erase Markers', 4);
INSERT INTO inventory VALUES(0014, 'Clipboards', 15);
INSERT INTO inventory VALUES(0015, 'Pencil Holders',30);
INSERT INTO inventory VALUES(0016, 'Pencil Sharpeners', 25);
INSERT INTO inventory VALUES(0017, 'Kleenex', 40);
INSERT INTO inventory VALUES(0018, 'Sanitizer', 12);
INSERT INTO inventory VALUES(0019, 'Index Cards', 13);
INSERT INTO inventory VALUES(0020, 'Highlighters', 18);

INSERT INTO employees VALUES(1101, 'Ronnie', 'James', '1976-05-17', '270-522-3643','2024-03-01');
INSERT INTO employees VALUES(1212, 'Sammie', 'Taylor', '1999-01-31', '789-691-5709', '2024-03-01');
INSERT INTO employees VALUES(1313, 'Michael', 'Jackson','1992-06-05', '417-292-3914', '2024-05-01');
INSERT INTO employees VALUES(1414, 'Trina', 'Fisher', '1978-10-05', '697-410-9093', '2024-07-01');
INSERT INTO employees VALUES(1515, 'Kevin', 'Johnson', '1982-01-12', '599-515-8998', '2024-03-01');
INSERT INTO employees VALUES(1616, 'Victoria' 'Price', '1988-07-25', '707-517-1461', '2024-08-01');
INSERT INTO employees VALUES(1717, 'Amanda', 'Swarn', '1997-02-28', '493-646-5141', '2024-11-01');
INSERT INTO employees VALUES(1818, 'Grace', 'Walker', '1995-11-29', '707-553-8816', '2024-11-01');
INSERT INTO employees VALUES(1919, 'Haley', 'Henderson', '1995-12-29', '789-553-1461', '2024-08-01');
INSERT INTO employees VALUES(2020, 'Rosa', 'Perez', '1998-10-31', '270-987-8945', '2024-08-01');
INSERT INTO employees VALUES(2121, 'Jenny', 'Lucas', '1999-08-12', '725-213-1360', '2024-09-01');
INSERT INTO employees VALUES(2202, 'Jessica', 'Reed', '1975-10-27', '707-986-2253', '2024-03-01');
INSERT INTO employees VALUES(2323, 'Thomas', 'Mendez', '2000-01-02', '697-456-1233', '2024-02-01');
INSERT INTO employees VALUES(2424, 'Alexis', 'Cotton', '1994-11-25', '789-528-0824', '2024-03-01');
INSERT INTO employees VALUES(2525, 'Chase', 'Smith', '1981-07-26', '725-971-6104', '2024-03-01');
INSERT INTO employees VALUES(2626, 'Brandon', 'Jones', '1979-12-21', '707-326-6978', '2024-01-01');
INSERT INTO employees VALUES(2727, 'Philip', 'Dixon', '1996-05-14', '981-226-5455', '2024-12-01');
INSERT INTO employees VALUES(2828, 'Patrick', 'Pereson', '1996-08-13','879-906-5611', '2024-03-01');
INSERT INTO employees VALUES(2929, 'Trinity', 'Torres', '1997-12-10', '725-245-4569', '2024-03-01');
INSERT INTO employees VALUES(3030, 'Coreuna', 'Barnes', '1998-10-21', '789-256-8956', '2024-06-01');

INSERT INTO financial_records VALUES(1111, 12000, 12000);
INSERT INTO financial_records VALUES(2222, 12000, 12000);
INSERT INTO financial_records VALUES(3333, 12000, 12000);
INSERT INTO financial_records VALUES(4444, 12000, 5000);
INSERT INTO financial_records VALUES(5555, 12000, 7000);
INSERT INTO financial_records VALUES(6666, 12000, 12000);
INSERT INTO financial_records VALUES(7777, 12000, 12000);
INSERT INTO financial_records VALUES(8888, 12000, 3000);
INSERT INTO financial_records VALUES(9999, 12000, 6000);
INSERT INTO financial_records VALUES(1000, 12000, 12000);
INSERT INTO financial_records VALUES(1100, 12000, 12000);
INSERT INTO financial_records VALUES(1200, 12000, 4000);
INSERT INTO financial_records VALUES(1300, 12000, 7000);
INSERT INTO financial_records VALUES(1400, 12000, 12000);
INSERT INTO financial_records VALUES(1500, 12000, 12000);
INSERT INTO financial_records VALUES(1600, 12000, 9000);
INSERT INTO financial_records VALUES(1700, 12000, 11000);
INSERT INTO financial_records VALUES(1800, 12000, 12000);
INSERT INTO financial_records VALUES(1900, 12000, 8500);
INSERT INTO financial_records VALUES(2000, 12000, 9000);

#Trival Query
SELECT firstname, lastname
FROM students
ORDER BY firstname;
#Medium Difficulty Quries
SELECT AVG(DATEDIFF(CURDATE(), dateofbirth) / 365) AS AverageAge
FROM employees;

SELECT SUM(tuition_payment)
FROM financial_records;

#Subquery
SELECT firstname, lastname
FROM students
WHERE studentiD IN (
    SELECT studentiD
    FROM health_records
    WHERE MONTH(health_checkup) = MONTH(NOW())
);
#Joins
SELECT firstName, lastName
FROM students
INNER JOIN attendance ON attendance.studentid = students.studentid
WHERE present = TRUE;

SELECT students.firstname, students.lastname
FROM students
LEFT OUTER JOIN financial_records ON students.studentid = financial_records.studentid
WHERE financial_records.tuition_payment < 12000;

#View
CREATE VIEW StudentAttendanceView AS
SELECT
    s.studentid,
    s.firstname,
    s.lastname,
    COUNT(a.present) AS AttendanceCount
FROM students s
LEFT JOIN attendance a ON s.studentid = a.studentid
GROUP BY s.studentid, s.firstname, s.lastname;

SELECT *
FROM StudentAttendanceView;
#Union
SELECT StudentID, Tuition AS Amount FROM financial_records
UNION
SELECT StudentID, tuition_payment AS Amount FROM financial_records;

#Custom Stored Function
DELIMITER //
CREATE FUNCTION CalculateAverageTeachingStaffAge()
RETURNS DECIMAL(10, 2)
BEGIN
    DECLARE avgAge DECIMAL(10, 2);
    SELECT AVG(DATEDIFF(CURDATE(), dateofbirth) / 365) INTO avgAge
    FROM employees;
    RETURN avgAge;
END //
DELIMITER ;

#Custom Stored Procedure
DELIMITER //
CREATE PROCEDURE UpdateEmployeeCertifications(IN employeeID INT, IN newCertifications VARCHAR(255))
BEGIN
    UPDATE employees SET certifications_experations = newCertifications WHERE employeeID = employeeID;
END //
DELIMITER ;

SELECT *
FROM attendance;