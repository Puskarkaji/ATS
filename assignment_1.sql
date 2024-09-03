-- SQLite
---join query
---List all Books with it's Title, Price, Author Name, Publisher Name and Published Date
--TASK 1 Execute all the query
-- More data population
insert into Publication
VALUES
(
    null,
    'ABC Publishers',
    'Bhaktapur',
    '2010/01/15'
),
(
    null,
    'Samiksha Publications',
    'Kathmandu',
    '2005/01/15'
),
(
    null,
    'Asmita Publications',
    'Kathmandu',
    '2002/12/12'
),
(
    null,
    'Nima Publications',
    'Kathmandu',
    '2009/01/15'
);
select * from Publication;
insert into Author
VALUES
(
    null, 
    'Yaswant Kenetkar', 
    'Ktm', 
    '98455747463', 
    'M', 
    'Masters in Computer Science'
),
(
    null,
    'Parijat',
    'Kathmandu',
    '9851234543',
    'F',
    'Masters in Philoshopy'
),
(
    null,
    'Suman Pokharel',
    'Kathmandu',
    '9851234231',
    'M',
    'Masters in Arts'
),
(
    null,
    'Laxmi Prasad Devkota',
    'Kathmandu',
    '9841234500',
    'M',
    'PHD. Literature'
),
(
    null,
    'Banira Giri',
    'Kaski',
    '9851634200',
    'F',
    'Masters in Education'
),
(
    null,
    'Ramesh Basnet',
    'Kathmandu',
    '9841234400',
    'M',
    'Masters in computer science'
);
select * from Author;

INSERT INTO Book
VALUES
(
    null,
    'मुनामदन',
    '1960/02/23',
    '650.50',
    'I',
    'XZQ5687HGDTE34',
    'Drama',    
    1,
    4
),
(
    null,
    'Design and Analysis of algorithms',
    '2020/02/23',
    '850.50',
    'III',
    'ABC5687HGDTE34',
    'CS',    
    1,
    1
),
(
    null,
    'जीवनको छेउबाट',    
    '1960/02/23',
    '450.50',
    'IV',
    'EKT5687HGDTE34',
    'Drama',
    3,
    3
),
(
    null,
    'शिरीषको फूल',
    '1900/02/23',
    '1050.25',
    '3rd',
    'RGZ5687HGDTE34',
    'Drama',
    4,
    2
),
(
    null,
    'कारागार',
    '2000/02/23',
    '430.25',
    'Second',
    'IOZ5687HGDTE34',
    'Fantasy',
    2,
    5
),
(
    null,
    'जीवनको छेउबाट',
    '1970/02/23',
    '1050.25',
    'First',
    'RGZ5687HGDTE34',
    'Mystory',
    3,
    3
);

--TASK 2
INSERT INTO Book
VALUES
(
 null,
 'karnali blues',
  '2010/05/12',
   '985.52',
   'first',
    'XTECDSFSDFSFFD',
      'Story',
      4,
      3
      ), 
(
null,
 'Damini Vir',
  '2012/02/12',
   '922.52',
   'second',
    'XTECtFSDFSFFD',
      'Novel',
      5,
      4
),
(
null,
 'Palpase cafe',
  '2005/02/12',
   '852.52',
   'second',
    'XTECtFSQWRFFD',
      'Novel',
      4,
      4
 ),
 (
null,
 'तिन घुम्ति',
  '1968/02/12',
   '850.52',
   'first',
    'XTECtFSQWRFFD',
      'Novel',
      3,
      4 
),
(
null,
 'खुसी',
  '1850/02/12',
   '850.52',
   'second',
    'XTECtFSQWRFFD',
      'story',
    4,
      5 
);
SELECT * from book;
--TASK 3
--1.List all Books with it's Title, Price, Author Name, Publisher Name and Published Date
 select b.Title,b.Price,b.PublishedDate,a.name Author ,p.name Publisher 
 FROM Book AS b JOIN Author as a ON a.Id=b.AuthorId
 JOIN Publication as p ON p.Id=b.PublicationId

--2 Get all books which are published in last 30 years
SELECT * FROM Book WHERE PublishedDate>=  strftime('%Y', 'now') - 30;

--3 Get total price of books written by parijat
    SELECT SUM(b.Price) AS Total_Price FROM Book b JOIN
    Author a ON a.Id = b.AuthorId WHERE a.Name = 'Parijat';

--4 Get all publishers in descending order with number of books published so far
SELECT p.Name, COUNT(*) AS Books_Number FROM Book b
    JOIN Publication p ON p.Id = b.PublicationId GROUP BY b.PublicationId ORDER BY Books_Number DESC;

--5 Get all authors with comma separated list of books they have written
    SELECT a.Name, GROUP_CONCAT(Title, ', ') AS Books_List FROM Book b JOIN 
    Author a ON a.Id = b.AuthorId
    GROUP BY b.AuthorId;


