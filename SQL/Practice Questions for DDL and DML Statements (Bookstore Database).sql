/* #### Practice Questions for Data Definition Language (DDL) and Data Manipulation Language (DML) Statements ####

 ### Relational Model For Bookstore Database ###

****Table: Authors****

** Attributes:
-- author_id (Primary Key, Integer)
-- author_name (String)
-- nationality (String)

** Constraints:
-- author_id must be unique.


**** Table: Books ****

**Attributes:
-- book_id (Primary Key, Integer)
-- title (String)
-- author_id (Foreign Key, Integer)
-- genre (String)
-- publication_year (Integer)

**Constraints:
-- book_id must be unique.
-- author_id must exist in the Authors table.

**** Table: Customers ****

**Attributes:
-- customer_id (Primary Key, Integer)
-- name (String)
-- email (String)
-- birthdate (Date)

**Constraints:
-- customer_id must be unique.
-- email must be unique.



*****Table: Orders*****

**Attributes:
-- order_id (Primary Key, Integer)
-- customer_id (Foreign Key, Integer)
-- book_id (Foreign Key, Integer)
-- order_date (Date)

**Constraints:
-- order_id must be unique.
-- customer_id must exist in the Customers table.
-- book_id must exist in the Books table.



***** Table: Reviews *****

**Attributes:
-- review_id (Primary Key, Integer)
-- book_id (Foreign Key, Integer)
-- customer_id (Foreign Key, Integer)
-- rating (Integer)
-- review_text (Text)

** Constraints:
-- review_id must be unique.
-- book_id must exist in the Books table.
-- customer_id must exist in the Customers table.
-- rating must be between 1 and 5.
*/

/*
This model represents a simple bookstore database with tables for authors, 
books, customers, orders, and reviews, along with appropriate relationships between them.
*/


--                          ******** 


-- **DDL Practice Questions**

-- **Create Database:**
-- Write a SQL statement to create the Database Bookstore


-- **Create Tables:**
-- Write a SQL statement to create the Authors table with the specified columns and constraints.

-- Write a SQL statement to create the Books table with the specified columns and constraints.
-- Write a SQL statement to create the Customers table with the specified columns and constraints.
-- Write a SQL statement to create the Orders table with the specified columns and constraints.
-- Write a SQL statement to create the Reviews table with the specified columns and constraints.
-- Write an SQL statement to insert the appropriate records into the created tables.


-- **Modify Tables:**
-- Add a new column phone_number to the Customers table of type VARCHAR(15).
-- Change the data type of the rating column in the Reviews table to FLOAT.
-- Drop the genre column from the Books table.

-- **Constraints:**
-- Add a NOT NULL constraint to the author_name column in the Authors table.
-- Add a UNIQUE constraint to the email column in the Customers table (if it is not already unique).
-- Add a CHECK constraint to ensure that the rating column in the Reviews table is between 1 and 5.

-- **Indexes:**
-- Create an index on the title column in the Books table.
-- Create a composite index on the customer_id and book_id columns in the Orders table.

-- **Drop Tables:**
-- Write a SQL statement to drop the Reviews table.
-- Write a SQL statement to drop the Orders table.

-- **DML Practice Questions**

-- **Inserts:**
-- Insert a new author into the Authors table.
-- Insert a new book into the Books table associated with the author you just added.
-- Insert a new customer into the Customers table.
-- Insert a new order into the Orders table for the customer and book you just added.
-- Insert a new review for the book and customer you just added.

-- **Updates:**
-- Update the name of a customer in the Customers table.
-- Update the title of a book in the Books table.
-- Update the rating of a review in the Reviews table.
-- Increase the publication_year of all books in the Books table by 1 year.

-- **Deletes:**
-- Delete a review from the Reviews table.
-- Delete an order from the Orders table.
-- Delete a customer from the Customers table.
-- Delete a book from the Books table.



