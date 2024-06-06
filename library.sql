CREATE DATABASE lib;
USE lib;

CREATE TABLE PUBLISHER(
    PUBLISHER_ID VARCHAR(50) PRIMARY KEY,
    NAME VARCHAR(100) NOT NULL,
    ADDRESS VARCHAR(100),
    EMAIL VARCHAR(100),
    PHONE_NUMBER BIGINT
);

CREATE TABLE STAFF(
    STAFF_ID VARCHAR(50) PRIMARY KEY,
    STAFF_NAME VARCHAR(50) NOT NULL,
    POSITION VARCHAR(50) NOT NULL,
    HireDate DATE NOT NULL,
    Email VARCHAR(100)
);

CREATE TABLE BOOK(
    BOOK_ID VARCHAR(50) PRIMARY KEY,
    TITLE VARCHAR(100) UNIQUE NOT NULL,
    AUTHOR VARCHAR(50) NOT NULL,
    ISBN VARCHAR(13) NOT NULL,
    Genre VARCHAR(50) NOT NULL
    
);

CREATE TABLE MEMBER(
    MEMBER_ID VARCHAR(50) PRIMARY KEY,
    MEMBER_NAME VARCHAR(50) NOT NULL,
    ADDRESS VARCHAR(100),
    EMAIL VARCHAR(100),
    PHONE_NUMBER BIGINT
);

CREATE TABLE RESERVATION(
    RESERVATION_ID VARCHAR(50) PRIMARY KEY,
    RESERVATION_DATE DATE NOT NULL,
    STATUS VARCHAR(100)
    
  );

 ALTER TABLE BOOK
 ADD COLUMN PUBLISHER_ID VARCHAR(50);
 ALTER TABLE BOOK 
 ADD FOREIGN KEY (PUBLISHER_ID) REFERENCES PUBLISHER(PUBLISHER_ID);
 
 ALTER TABLE BOOK
 ADD COLUMN STAFF_ID VARCHAR(50);
 ALTER TABLE BOOK 
 ADD FOREIGN KEY (STAFF_ID) REFERENCES STAFF(STAFF_ID);
 
ALTER TABLE RESERVATION
ADD COLUMN BOOK_ID VARCHAR(50);
ALTER TABLE RESERVATION 
ADD  FOREIGN KEY (BOOK_ID) REFERENCES BOOK(BOOK_ID);

ALTER TABLE RESERVATION
ADD COLUMN MEMBER_ID VARCHAR(50);
ALTER TABLE RESERVATION 
ADD  FOREIGN KEY (MEMBER_ID) REFERENCES MEMBER(MEMBER_ID);


INSERT INTO PUBLISHER VALUES
('P001', 'Penguin Random House', '1234 Elm St', 'contact@prh.com', 1234567890),
('P002', 'HarperCollins', '5678 Oak St', 'info@harpercollins.com', 2345678901),
('P003', 'Simon & Schuster', '9101 Pine St', 'contact@simonandschuster.com', 3456789012),
('P004', 'Hachette Book Group', '1213 Maple St', 'info@hachette.com', 4567890123),
('P005', 'Macmillan', '1415 Cedar St', 'contact@macmillan.com', 5678901234),
('P006', 'Scholastic', '1617 Birch St', 'info@scholastic.com', 6789012345),
('P007', 'Cengage', '1819 Redwood St', 'contact@cengage.com', 7890123456),
('P008', 'Wiley', '2021 Sequoia St', 'info@wiley.com', 8901234567),
('P009', 'Pearson', '2223 Fir St', 'contact@pearson.com', 9012345678),
('P010', 'Oxford University Press', '2425 Spruce St', 'info@oup.com', 10123456789),
('P011', 'Cambridge University Press', '2627 Ash St', 'contact@cup.com', 11234567890),
('P012', 'Elsevier', '2829 Poplar St', 'info@elsevier.com', 12345678901),
('P013', 'McGraw-Hill Education', '3031 Beech St', 'contact@mhe.com', 23456789012),
('P014', 'Springer', '3233 Willow St', 'info@springer.com', 34567890123),
('P015', 'Taylor & Francis', '3435 Magnolia St', 'contact@taylorandfrancis.com', 45678901234),
('P016', 'SAGE Publications', '3637 Palm St', 'info@sagepub.com', 56789012345),
('P017', 'Thomson Reuters', '3839 Hickory St', 'contact@thomsonreuters.com', 67890123456),
('P018', 'Bloomsbury', '4041 Chestnut St', 'info@bloomsbury.com', 78901234567),
('P019', 'Routledge', '4243 Dogwood St', 'contact@routledge.com', 89012345678),
('P020', 'MIT Press', '4445 Juniper St', 'info@mitpress.com', 90123456789);



INSERT INTO STAFF VALUES
('S001', 'Alice Johnson', 'Librarian', '2021-01-01', 'alice.johnson@library.com'),
('S002', 'Bob Smith', 'Assistant Librarian', '2021-02-01', 'bob.smith@library.com'),
('S003', 'Carol White', 'Library Technician', '2021-03-01', 'carol.white@library.com'),
('S004', 'David Brown', 'Archivist', '2021-04-01', 'david.brown@library.com'),
('S005', 'Eve Davis', 'Library Assistant', '2021-05-01', 'eve.davis@library.com'),
('S006', 'Frank Wilson', 'Library Aide', '2021-06-01', 'frank.wilson@library.com'),
('S007', 'Grace Harris', 'Circulation Assistant', '2021-07-01', 'grace.harris@library.com'),
('S008', 'Hank Young', 'Library Page', '2021-08-01', 'hank.young@library.com'),
('S009', 'Ivy Clark', 'Library Clerk', '2021-09-01', 'ivy.clark@library.com'),
('S010', 'Jack Lewis', 'Library Technician', '2021-10-01', 'jack.lewis@library.com'),
('S011', 'Karen Hall', 'Librarian', '2021-11-01', 'karen.hall@library.com'),
('S012', 'Liam Allen', 'Assistant Librarian', '2021-12-01', 'liam.allen@library.com'),
('S013', 'Mia Wright', 'Library Technician', '2022-01-01', 'mia.wright@library.com'),
('S014', 'Noah King', 'Archivist', '2022-02-01', 'noah.king@library.com'),
('S015', 'Olivia Scott', 'Library Assistant', '2022-03-01', 'olivia.scott@library.com'),
('S016', 'Paul Green', 'Library Aide', '2022-04-01', 'paul.green@library.com'),
('S017', 'Quinn Baker', 'Circulation Assistant', '2022-05-01', 'quinn.baker@library.com'),
('S018', 'Ruby Nelson', 'Library Page', '2022-06-01', 'ruby.nelson@library.com'),
('S019', 'Sam Carter', 'Library Clerk', '2022-07-01', 'sam.carter@library.com'),
('S020', 'Tina Phillips', 'Library Technician', '2022-08-01', 'tina.phillips@library.com');



INSERT INTO BOOK (BOOK_ID, TITLE, AUTHOR, ISBN, GENRE, PUBLISHER_ID, STAFF_ID) VALUES
('B001', 'The Great Gatsby', 'F. Scott Fitzgerald', '9780743273565', 'Fiction', 'P001', 'S001'),
('B002', 'To Kill a Mockingbird', 'Harper Lee', '9780060935467', 'Fiction', 'P002', 'S002'),
('B003', '1984', 'George Orwell', '9780451524935', 'Dystopian', 'P003', 'S003'),
('B004', 'Pride and Prejudice', 'Jane Austen', '9780141439518', 'Romance', 'P004', 'S004'),
('B005', 'The Catcher in the Rye', 'J.D. Salinger', '9780316769488', 'Fiction', 'P005', 'S005'),
('B006', 'The Hobbit', 'J.R.R. Tolkien', '9780547928227', 'Fantasy', 'P006', 'S006'),
('B007', 'Moby-Dick', 'Herman Melville', '9781503280786', 'Adventure', 'P007', 'S007'),
('B008', 'War and Peace', 'Leo Tolstoy', '9780199232765', 'Historical', 'P008', 'S008'),
('B009', 'The Odyssey', 'Homer', '9780140268867', 'Epic', 'P009', 'S009'),
('B010', 'Crime and Punishment', 'Fyodor Dostoevsky', '9780486415871', 'Crime', 'P010', 'S010'),
('B011', 'The Divine Comedy', 'Dante Alighieri', '9780140448955', 'Epic', 'P011', 'S011'),
('B012', 'Brave New World', 'Aldous Huxley', '9780060850524', 'Dystopian', 'P012', 'S012'),
('B013', 'Jane Eyre', 'Charlotte Brontë', '9780141441146', 'Romance', 'P013', 'S013'),
('B014', 'The Iliad', 'Homer', '9780140275360', 'Epic', 'P014', 'S014'),
('B015', 'Anna Karenina', 'Leo Tolstoy', '9780140449174', 'Fiction', 'P015', 'S015'),
('B016', 'Wuthering Heights', 'Emily Brontë', '9780141439556', 'Romance', 'P016', 'S016'),
('B017', 'The Brothers Karamazov', 'Fyodor Dostoevsky', '9780374528379', 'Fiction', 'P017', 'S017'),
('B018', 'Great Expectations', 'Charles Dickens', '9780141439563', 'Fiction', 'P018', 'S018'),
('B019', 'One Hundred Years of Solitude', 'Gabriel García Márquez', '9780060883287', 'Magical Realism', 'P019', 'S019'),
('B020', 'The Catch-22', 'Joseph Heller', '9781451626650', 'Satire', 'P020', 'S020');



INSERT INTO MEMBER (MEMBER_ID, MEMBER_NAME, ADDRESS, EMAIL, PHONE_NUMBER) VALUES
('M001', 'John Doe', '100 Main St', 'john.doe@example.com', 1112223333),
('M002', 'Jane Smith', '200 Oak St', 'jane.smith@example.com', 2223334444),
('M003', 'Alice Johnson', '300 Pine St', 'alice.johnson@example.com', 3334445555),
('M004', 'Bob Brown', '400 Maple St', 'bob.brown@example.com', 4445556666),
('M005', 'Charlie Davis', '500 Cedar St', 'charlie.davis@example.com', 5556667777),
('M006', 'Dana Evans', '600 Birch St', 'dana.evans@example.com', 6667778888),
('M007', 'Eve Green', '700 Redwood St', 'eve.green@example.com', 7778889999),
('M008', 'Frank Harris', '800 Sequoia St', 'frank.harris@example.com', 8889990000),
('M009', 'Grace Allen', '900 Fir St', 'grace.allen@example.com', 9990001111),
('M010', 'Hank Clark', '1000 Spruce St', 'hank.clark@example.com', 1010101010),
('M011', 'Ivy White', '1100 Ash St', 'ivy.white@example.com', 1111111111),
('M012', 'Jack Lewis', '1200 Poplar St', 'jack.lewis@example.com', 1212121212),
('M013', 'Karen Hall', '1300 Beech St', 'karen.hall@example.com', 1313131313),
('M014', 'Liam King', '1400 Willow St', 'liam.king@example.com', 1414141414),
('M015', 'Mia Scott', '1500 Magnolia St', 'mia.scott@example.com', 1515151515),
('M016', 'Noah Green', '1600 Palm St', 'noah.green@example.com', 1616161616),
('M017', 'Olivia Baker', '1700 Hickory St', 'olivia.baker@example.com', 1717171717),
('M018', 'Paul Nelson', '1800 Chestnut St', 'paul.nelson@example.com', 1818181818),
('M019', 'Quinn Carter', '1900 Dogwood St', 'quinn.carter@example.com', 1919191919),
('M020', 'Ruby Phillips', '2000 Juniper St', 'ruby.phillips@example.com', 2020202020);



INSERT INTO RESERVATION (RESERVATION_ID, RESERVATION_DATE, STATUS, BOOK_ID, MEMBER_ID) VALUES
('R001', '2023-01-01', 'Reserved', 'B001', 'M001'),
('R002', '2023-01-02', 'Checked Out', 'B002', 'M002'),
('R003', '2023-01-03', 'Reserved', 'B003', 'M003'),
('R004', '2023-01-04', 'Returned', 'B004', 'M004'),
('R005', '2023-01-05', 'Reserved', 'B005', 'M005'),
('R006', '2023-01-06', 'Checked Out', 'B006', 'M006'),
('R007', '2023-01-07', 'Returned', 'B007', 'M007'),
('R008', '2023-01-08', 'Reserved', 'B008', 'M008'),
('R009', '2023-01-09', 'Checked Out', 'B009', 'M009'),
('R010', '2023-01-10', 'Returned', 'B010', 'M010'),
('R011', '2023-01-11', 'Reserved', 'B011', 'M011'),
('R012', '2023-01-12', 'Checked Out', 'B012', 'M012'),
('R013', '2023-01-13', 'Returned', 'B013', 'M013'),
('R014', '2023-01-14', 'Reserved', 'B014', 'M014'),
('R015', '2023-01-15', 'Checked Out', 'B015', 'M015'),
('R016', '2023-01-16', 'Returned', 'B016', 'M016'),
('R017', '2023-01-17', 'Reserved', 'B017', 'M017'),
('R018', '2023-01-18', 'Checked Out', 'B018', 'M018'),
('R019', '2023-01-19', 'Returned', 'B019', 'M019'),
('R020', '2023-01-20', 'Reserved', 'B020', 'M020');


INSERT INTO PUBLISHER (PUBLISHER_ID, NAME, ADDRESS, EMAIL, PHONE_NUMBER) VALUES
('P021', 'New Publisher', '123 New St', 'contact@newpublisher.com', 1234567890);

SELECT * FROM PUBLISHER WHERE PUBLISHER_ID = 'P021';

UPDATE PUBLISHER
SET ADDRESS = '456 Updated St'
WHERE PUBLISHER_ID = 'P021';

DELETE FROM PUBLISHER WHERE PUBLISHER_ID = 'P021';

INSERT INTO STAFF (STAFF_ID, STAFF_NAME, POSITION, HireDate, EMAIL) VALUES
('S021', 'New Staff', 'Library Assistant', '2024-01-01', 'new.staff@library.com');

SELECT * FROM STAFF WHERE STAFF_ID = 'S021';

UPDATE STAFF
SET POSITION = 'Senior Library Assistant'
WHERE STAFF_ID = 'S021';

SELECT * FROM RESERVATION WHERE RESERVATION_ID = 'R021';

