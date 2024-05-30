-- **Relational Model Bookstore Database**
CREATE DATABASE BOOKSTORE
GO

USE BOOKSTORE
GO

-- Table: Authors
CREATE TABLE Authors (
	author_id int primary key,
	author_name varchar(50),
	nationality varchar(50)
);
go

-- Table: Books
CREATE TABLE Books (
	book_id int primary key not null,
	title varchar(50),
	author_id int foreign key references Authors(author_id) not null,
	genre varchar(30),
	Publication_year int 
);
go

-- Table: Customers
CREATE TABLE Customers (
	Customer_id int primary key not null,
	name varchar(30) not null,
	email varchar(30) unique not null,
	birthdate date
);
go

-- Table: Orders
CREATE TABLE Orders (
	order_id int primary key not null,
	customer_id int foreign key references Customers(customer_id) not null,
	book_id int foreign key references books(book_id) not null,
	order_date date
);
go

-- Table: Reviews
CREATE TABLE Reviews (
	Review_id int primary key not null,
	book_id int foreign key references books(book_id) not null,
	customer_id int foreign key references Customers(customer_id) not null,
	rating int CHECK(rating >= 1 AND Rating <= 5), 
	review_text text,
);
go



-- Records for Authors Table

INSERT INTO Authors (author_id, author_name, nationality) VALUES 
(1, 'J.K. Rowling', 'British'),
(2, 'George Orwell', 'British'),
(3, 'Agatha Christie', 'British'),
(4, 'Stephen King', 'American'),
(5, 'Chimamanda Ngozi Adichie', 'Nigerian'),
(6, 'Haruki Murakami', 'Japanese'),
(7, 'Gabriel Garcia Marquez', 'Colombian'),
(8, 'Ernest Hemingway', 'American'),
(9, 'Jane Austen', 'British'),
(10, 'Leo Tolstoy', 'Russian'),
(11, 'Fyodor Dostoevsky', 'Russian'),
(12, 'Mark Twain', 'American'),
(13, 'Paulo Coelho', 'Brazilian'),
(14, 'Virginia Woolf', 'British'),
(15, 'Toni Morrison', 'American');
GO

-- Records for Books Table

INSERT INTO Books VALUES
(1, 'Harry Potter and the Sorcerer''s Stone', 1, 'Fantasy', 1997),
(2, '1984', 2, 'Dystopian', 1949),
(3, 'Murder on the Orient Express', 3, 'Mystery', 1934),
(4, 'The Shining', 4, 'Horror', 1977),
(5, 'Half of a Yellow Sun', 5, 'Historical Fiction', 2006),
(6, 'Norwegian Wood', 6, 'Fiction', 1987),
(7, 'One Hundred Years of Solitude', 7, 'Magical Realism', 1967),
(8, 'The Old Man and the Sea', 8, 'Fiction', 1952),
(9, 'Pride and Prejudice', 9, 'Romance', 1813),
(10, 'War and Peace', 10, 'Historical Fiction', 1869),
(11, 'Crime and Punishment', 11, 'Psychological Fiction', 1866),
(12, 'The Adventures of Huckleberry Finn', 12, 'Adventure', 1884),
(13, 'The Alchemist', 13, 'Fiction', 1988),
(14, 'Mrs. Dalloway', 14, 'Modernism', 1925),
(15, 'Beloved', 15, 'Historical Fiction', 1987),
(16, 'Harry Potter and the Chamber of Secrets', 1, 'Fantasy', 1998),
(17, 'Animal Farm', 2, 'Dystopian', 1945),
(18, 'And Then There Were None', 3, 'Mystery', 1939),
(19, 'The Dark Tower: The Gunslinger', 4, 'Fantasy', 1982),
(20, 'Americanah', 5, 'Fiction', 2013),
(21, 'Kafka on the Shore', 6, 'Fiction', 2002),
(22, 'Love in the Time of Cholera', 7, 'Romance', 1985),
(23, 'For Whom the Bell Tolls', 8, 'Fiction', 1940),
(24, 'Sense and Sensibility', 9, 'Romance', 1811),
(25, 'Anna Karenina', 10, 'Fiction', 1877),
(26, 'The Brothers Karamazov', 11, 'Philosophical Fiction', 1880),
(27, 'The Prince and the Pauper', 12, 'Historical Fiction', 1881),
(28, 'The Old Man and the Sea', 8, 'Fiction', 1952),
(29, 'One Hundred Years of Solitude', 7, 'Magical Realism', 1967),
(30, 'Beloved', 15, 'Historical Fiction', 1987);
GO


-- Records for Customers Table

INSERT INTO Customers (customer_id, name, email, birthdate) VALUES
(1, 'John Doe', 'johndoe@example.com', '1985-03-15'),
(2, 'Jane Smith', 'janesmith@example.com', '1990-08-22'),
(3, 'David Johnson', 'davidjohnson@example.com', '1978-11-10'),
(4, 'Emily Brown', 'emilybrown@example.com', '1989-05-03'),
(5, 'Michael Lee', 'michaellee@example.com', '1982-09-28'),
(6, 'Sarah Wilson', 'sarahwilson@example.com', '1995-04-20'),
(7, 'James Miller', 'jamesmiller@example.com', '1974-12-08'),
(8, 'Olivia Davis', 'oliviadavis@example.com', '1992-07-17'),
(9, 'Daniel Taylor', 'danieltaylor@example.com', '1987-01-25'),
(10, 'Sophia Clark', 'sophiaclark@example.com', '1998-06-12'),
(11, 'Ethan Moore', 'ethanmoore@example.com', '1980-02-18'),
(12, 'Mia Anderson', 'miaanderson@example.com', '1993-10-05'),
(13, 'William White', 'williamwhite@example.com', '1976-06-30'),
(14, 'Isabella Garcia', 'isabellagarcia@example.com', '1991-03-24'),
(15, 'Noah Martinez', 'noahmartinez@example.com', '1984-08-19');
GO

-- Records for Orders Table

INSERT INTO Orders VALUES
(1, 1, 1, '2023-02-10'),
(2, 2, 2, '2023-05-18'),
(3, 3, 3, '2022-12-03'),
(4, 4, 4, '2024-01-22'),
(5, 5, 5, '2023-08-14'),
(6, 6, 6, '2022-10-30'),
(7, 7, 7, '2023-04-05'),
(8, 8, 8, '2024-03-12'),
(9, 9, 9, '2022-07-19'),
(10, 10, 10, '2023-11-26'),
(11, 11, 11, '2022-05-02'),
(12, 12, 12, '2024-04-08'),
(13, 13, 13, '2022-08-25'),
(14, 14, 14, '2023-06-15'),
(15, 15, 15, '2022-11-29'),
(16, 1, 1, '2023-03-20'),
(17, 2, 2, '2023-06-25'),
(18, 3, 3, '2022-12-28'),
(19, 4, 4, '2024-02-15'),
(20, 5, 5, '2023-09-10'),
(21, 6, 6, '2022-11-15'),
(22, 7, 7, '2023-05-20'),
(23, 1, 8, '2024-04-05'),
(24, 2, 9, '2022-08-19'),
(25, 3, 10, '2023-12-10'),
(26, 4, 11, '2022-06-05'),
(27, 5, 12, '2024-05-08'),
(28, 6, 13, '2022-09-30'),
(29, 7, 14, '2023-07-20'),
(30, 1, 15, '2023-01-15');
GO
-- Records for Reviews Table

INSERT INTO Reviews (review_id, book_id, customer_id, rating, review_text) VALUES 
(1, 1, 1, 5, 'Loved the magical world!'),
(2, 2, 2, 4, 'Thought-provoking and unsettling.'),
(3, 3, 3, 5, 'Classic Christie mystery.'),
(4, 4, 4, 4, 'Absolutely terrifying!'),
(5, 5, 5, 5, 'Beautifully written and emotional.'),
(6, 6, 6, 4, 'Melancholic and deeply moving.'),
(7, 7, 7, 5, 'Magical realism at its best.'),
(8, 8, 8, 4, 'A timeless tale of perseverance.'),
(9, 9, 9, 5, 'A delightful and witty romance.'),
(10, 10, 10, 5, 'Epic and enthralling.'),
(11, 11, 11, 4, 'Intense and philosophical.'),
(12, 12, 12, 5, 'A grand adventure with heart.'),
(13, 13, 13, 4, 'Inspirational and thought-provoking.'),
(14, 14, 14, 4, 'A masterful depiction of one day.'),
(15, 15, 15, 5, 'Powerful and haunting.'),
(16, 1, 1, 4, 'Enjoyed the characters and storyline.'),
(17, 2, 2, 3, 'Interesting read but not my favorite.'),
(18, 3, 3, 4, 'Another great mystery from Christie.'),
(19, 4, 4, 3, 'Kept me on the edge of my seat.'),
(20, 5, 5, 4, 'Captivating and thought-provoking.'),
(21, 6, 6, 3, 'Well-written but a bit depressing.'),
(22, 7, 7, 4, 'Magical realism adds depth to the story.'),
(23, 8, 8, 3, 'Found it a bit slow-paced.'),
(24, 9, 9, 4, 'Charming and humorous.'),
(25, 10, 10, 4, 'Sweeping epic with memorable characters.'),
(26, 11, 11, 3, 'Complex and challenging.'),
(27, 12, 12, 4, 'Exciting adventure with a meaningful message.'),
(28, 13, 13, 3, 'Interesting concepts but didn''t fully connect.'),
(29, 14, 14, 3, 'Detailed exploration of human experience.'),
(30, 15, 15, 4, 'Emotionally impactful and beautifully written.');
GO
