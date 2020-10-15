
	CREATE TABLE positions(
	Id INTEGER PRIMARY KEY,
	jobPosition VARCHAR(150),
	location VARCHAR(200),
	hourlyPay INT
	);

	CREATE TABLE applicants(
	Id INTEGER PRIMARY KEY,
	firstName VARCHAR(75),
	lastName VARCHAR(75),
	email VARCHAR(150)
	);

	INSERT INTO positions VALUE
	(1, "Sanitation", "Miami, FL", 17),
	(2, "IT Support", "Houston, TX", 20),
	(3, "Manager", "Charlotte, NC", 22),
	(4, "CEO", "Denver, CO", 100);

	INSERT INTO applicants VALUE
	(1, "David", "Franco", "iamcool@coolmail.com"),
	(2, "Sayeed", "Joseph", "heiscool2@coolmail.com"),
	(3, "Tom", "Cruise", "heisalright@alrightmail.com"),
	(4, "Tom", "Brady", "whatever@touchdown.com"),
	(5, "Lionel", "Beato", "heisalsocool@coolmail.com");
    
    CREATE TABLE application(
    id INTEGER PRIMARY KEY,
    positionId INTEGER,
	applicantId INTEGER
    );
    
    INSERT INTO application VALUE
    (1, 1, 3),
	(2, 2, 4),
    (3, 3, 1),
    (4, 4, 2),
    (5, 5, 4);
    
	SELECT * FROM positions;
    SELECT * FROM applicants;
    SELECT * FROM application;
