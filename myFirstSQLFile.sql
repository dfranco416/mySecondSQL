-- Delete the entire table
-- DROP TABLE students;

 CREATE TABLE students( 
 id INTEGER PRIMARY KEY,
 firstName VARCHAR(100),
 lastName VARCHAR(100),
 age INTEGER

);

-- ALTER TABLE students ADD email VARCHAR(100);

 CREATE TABLE courses(
 id INTEGER PRIMARY KEY,
 title VARCHAR(100)
 );


-- Through/ join table
-- FOREIGN KEY (attribute in the current table that references the primary key of another table) REFERENCES targetTable( target column with primary key)

 CREATE TABLE enrollment (
 id INTEGER PRIMARY KEY,
 courseId INTEGER,
 studentId INTEGER,
 FOREIGN KEY (courseId) REFERENCES courses(id),
 FOREIGN KEY (studentId) REFERENCES students(id)
 );

-- Inserting data into a table


	INSERT INTO students VALUES
	(1, "David", "Franco", 22, @gmail.com),
    (2, "Sayeed", "Joseph", 25, @gmail.com),
    (3, "Charles","Bartels", 22, @gmail.com);
    
	INSERT INTO courses VALUES
	(1, "English"),
    (2, "Math"),
    (3, "Science");
    
	INSERT INTO enrollment VALUES
    (1, 1, 2), -- David in Math
    (2, 2, 3),-- Sayeed in Science
    (3, 3, 1),-- Charles in English
    (4, 3, 2);-- Charles in Math

SELECT *FROM students;
SELECT firstName, lastName FROM students;
SELECT firstName, lastName FROM students LIMIT 2;
SELECT firstName, lastName FROM students WHERE age < 25;
SELECT firstName, lastName FROM students ORDER BY firstName;
SELECT firstName, lastName FROM students ORDER BY firstName DESC;-- order in the inverse alphabet

    
    
    
    