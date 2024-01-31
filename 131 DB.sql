DROP TABLE IF EXISTS Family;

--I am creating a table to store my families information. It will store their names, phone number (if applicable), birthdate, and address.Hopefully I can tie this into different tables as I learn more about SQL.
CREATE TABLE Family (    
    ID int NOT NULL, --Used constraint NOT NULL because this is the primary key.
    LastName varchar(255) NOT NULL,
    FirstName varchar(255) NOT NULL,--NOT NULL constraint for multiple constraints as there is no reason for the data to be left blank.
    PhoneNumber char(10), --I used a 10 character condition so phone numbers are all displayed in the same 10 digit format.
    Birthdate DATE,
    Address varchar(255) NOT NULL,
    City varchar(255) DEFAULT 'Gurnee',--I placed 'Gurnee' and 'IL as DEFAULT constraints because a majority of my family lives in Gurnee and most live in Illinois.
    State char(2) DEFAULT 'IL',
    PRIMARY KEY (ID)--Used the PRIMARY KEY constraint to make the ID field the PRIMARY KEY
    CONSTRAINT UC_Person UNIQUE (PhoneNumber, LastName)--Used the UNIQUE constraint to ensure a phone number is not used for multiple family members. 
);


INSERT INTO Family (ID, LastName, FirstName, PhoneNumber, Birthdate, Address, City, State)
VALUES (1,'Arnold', 'Philip', 2244227481, '1988-03-25', '25714 IL RT 173', 'Harvard', 'IL');

INSERT INTO Family (ID, LastName, FirstName, PhoneNumber, Birthdate, Address, City, State)
VALUES (2, 'Arnold', 'Nolan', NULL, '2017-06-11', '25714 IL RT 173', 'Harvard', 'IL');

SELECT *, Birthdate (FROM_DAYS(DATEDIFF(NOW(), Birthdate)), '%Y') + 0 AS age
FROM Family;
