-- SQLite
-- SQLite
drop table Author;
drop table Publisher;
drop table Book;

-- Tables for bookstore
-- Book (Id (PK), Title, PublishedDate, Price, Edition, ISBN, Genre, PublicationId(FK), AuthorId(FK))
-- Publication (Id, Name, Address, Established)
-- Author (Id, Name, Address, Phone, Gender, Education)

-- One-to-One, One-to-Many, Many-to-Many



--for Author Table
-- Author (Id, Name, Address, Phone, Gender, Education)
create table Author
(
    Id Integer PRIMARY KEY AUTOINCREMENT,
    Name text,
    Address text,
    Phone text,
    Gender text,
    Education text
);

select * from Author

INSERT INTO Author
VALUES (null, 'Yaswant Kenetkar', 'Ktm', '98455747463', 'M', 'Masters in Computer Science')

INSERT INTO Author
VALUES (null, 'Bimal Thapa', 'Ktm', '98858582828', 'M', 'Masters in computer Engineering ')


--for Publication table
-- Publication (Id, Name, Address, Established)
create table Publication
(
    Id Integer PRIMARY KEY AUTOINCREMENT,
    Name text,
    Address text,
    Established text
);
INSERT INTO Publication 
VALUES(NULL,'Vidyarthi Pustak Bhandar','Kamalpokhari ktm','2023')

INSERT INTO Publication 
VALUES(NULL,'Saroj publication','Dhangadhi','2022')

select * from Publication

--for book table
-- Book (Id (PK), Title, PublishedDate, Price, Edition, ISBN, Genre, PublicationId(FK), AuthorId(FK)
create table Book
(
Id integer PRIMARY KEY AUTOINCREMENT,
Title text,
PublishedDate text,
Price integer,
Edition text,
ISBN integer,
Genre text,
PublicationId integer,
AuthorId integer,
FOREIGN KEY(PublicationId) REFERENCES Publication(Id),
FOREIGN KEY(AuthorId) REFERENCES Author(Id)
);

INSERT INTO Book 
VALUES(null,'Programming In C','2013','599','First Edition','978-9937-532-222','Programming',1,1)

INSERT INTO Book 
VALUES(null,'Sirishko Phool','1964','788','First Edition','978-3536-222','Novel',1,5)

SELECT * FROM Book