#Creating table publisher
CREATE TABLE publisher
(
    id INT NOT NULL AUTO_INCREMENT,
    name VARCHAR(255) NOT NULL,
    PRIMARY KEY(id)  
) ;
#Creating table author

CREATE TABLE author
(
    id INT NOT NULL AUTO_INCREMENT,
    name VARCHAR(200) NOT NULL,
    PRIMARY KEY(id)
    
);
#Creating table book
CREATE TABLE book
(
    id INT NOT NULL AUTO_INCREMENT,
    title VARCHAR(255) NOT NULL,
    publish_date DATE NOT NULL,
    publisherid INT NOT NULL,
    CONSTRAINT fk_publisherid FOREIGN KEY (publisherid) REFERENCES publisher(id),
    PRIMARY KEY(id)
);
#Creating table authorbook
    CREATE TABLE authorbook
(
    id INT NOT NULL AUTO_INCREMENT,
    authorid INT NOT NULL,
    bookid INT NOT NULL,
    CONSTRAINT fk_authorid FOREIGN KEY (authorid) REFERENCES author(id),
    CONSTRAINT fk_bookid FOREIGN KEY (bookid) REFERENCES book(id),
    PRIMARY KEY(id)
);
#Creating table bookstore
    CREATE TABLE bookstore
(
    id INT NOT NULL AUTO_INCREMENT,
    name VARCHAR(255) NOT NULL,
    address VARCHAR(255) NOT NULL,
    phonenumber VARCHAR(100) NOT NULL,
    website VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL,
    PRIMARY KEY(id)
);
#Creating table bookbookstore
CREATE TABLE bookbookstore
(
    id INT NOT NULL AUTO_INCREMENT,
    stock INT NOT NULL,
    price DECIMAL(4,2) NOT NULL,
    bookstoreid INT NOT NULL,
    bookid INT NOT NULL,
    CONSTRAINT fk_bookstoreid FOREIGN KEY (bookstoreid) REFERENCES bookstore(id),
    CONSTRAINT fk_bookidbookstore FOREIGN KEY (bookid) REFERENCES book(id),
    PRIMARY KEY(id)   
);

#Insert data into publisher table
INSERT INTO publisher (id, name) VALUES 
(1, 'Manta'),
(2, 'Book Master'),
(3, 'Pearson'),
(4, 'Wolters Kluwer'),
(5, 'Lagardere');

#Insert data into author table
INSERT INTO author (id, name) VALUES 
(1, 'Adam Mickiewicz'),
(2, 'Camilla Lackberg'),
(3, 'Dan Brown'),
(4, 'Stieg Larsson'),
(5, 'Anna Smith');

#Insert data into book table
INSERT INTO book (id, title, publish_date, publisherid) VALUES 
(1, 'Farys', '1900-05-21', '1'),
(2, 'Heksen', '2015-02-13', '2'),
(3, 'Inferno', '2000-10-02', '3'),
(4, 'Millenium', '2005-09-16', '4'),
(5, 'Expo', '1985-10-24', '5');

#Insert data into authorbook table
INSERT INTO `authorbook` (`id`, `authorid`, `bookid`) VALUES 
(1, 1, 1),
(2, 2, 2),
(3, 3, 3),
(4, 4, 4),
(5, 5, 5);

#Insert data into bookstore table
INSERT INTO `bookstore` (`id`, `name`, `address`, `phonenumber`, `website`, `email`) VALUES 
(1, 'Books', 'Polna 2', '+4571617111', 'books.dk', 'books@gmail.com'),
(2, 'Inandout', 'Rundhoj Alle 25', '+4561711500', 'inandout.dk', 'inandout@gmail.com'),
(3, 'BSS Books', 'Rivgvej Syd 12', '+4567543311', 'bssbooks.dk', 'bssbooks@gmail.com'),
(4, 'Pegasus', 'Sonderhoj 30', '+4581716792', 'pegasus.dk', 'pegasus@gmail.com'),
(5, 'English Bookstore', 'Friedriks Alle 53', '+4552902836', 'ebookstore.dk', 'ebookstire@gmail.com');

#Insert data into bookbookstore table
INSERT INTO `bookbookstore` (`id`, `stock`, `price`, `bookstoreid`, `bookid`) VALUES 
(1, '2', '22,99', '2', '1'),
(2, '5', '100,99', '1', '3'),
(3, '1', '99', '4', '5'),
(4, '8', '200', '3', '2'),
(5, '2', '490', '5', '4');

