Paste your queries and results in this file
================================================================================
 SELECT * FROM books;

 1|Rails 4 Test Prescriptions|1|1
2|Metaprogramming Ruby 2|2|1
3|Programming Ruby 1.9 & 2.0|3|1
4|Pragmatic Programmer|3|2
5|Practical Object Oriented Design in Ruby|4|2
6|The Rails 4 Way|5|2
7|Objective-C Programming|6|3
8|iOS Programming|6|3
9|JavaScript: The Good Parts|7|4
10|JavaScript: The Definitive Guide|8|4
11|Functional JavaScript|9|4
12|Build iOS Games with SpriteKit|10|1
13|Test iOS Apps with UI Automation|10|1
14|Design Patterns in Ruby|11|2
15|Eloquent Ruby|11|2
16|Web Design with HTML & CSS|12|5
17|JavaScript and jQuery|12|5
18|Well-Grounded Rubyist|13|6
19|Essential Algorithms|14|5
20|Introduction to Algorithms|15|7

 SELECT * FROM books WHERE title LIKE '% Ruby %';
 2|Metaprogramming Ruby 2|2|1
3|Programming Ruby 1.9 & 2.0|3|1

SELECT * FROM authors WHERE name LIKE 'Dav%';
3|Dave Thomas
8|David Flanagan
13|David Black

SELECT * FROM books JOIN publishers ON books.publisher_id = publishers.id WHERE publishers.name = "Addison-Wesley";

4|Pragmatic Programmer|3|2|2|Addison-Wesley
5|Practical Object Oriented Design in Ruby|4|2|2|Addison-Wesley
6|The Rails 4 Way|5|2|2|Addison-Wesley
14|Design Patterns in Ruby|11|2|2|Addison-Wesley
15|Eloquent Ruby|11|2|2|Addison-Wesley

SELECT * FROM books JOIN publishers ON books.publisher_id = publishers.id WHERE publishers.name = "Addison-Wesley";

4|Pragmatic Programmer|3|2|2|Addison-Wesley
5|Practical Object Oriented Design in Ruby|4|2|2|Addison-Wesley
6|The Rails 4 Way|5|2|2|Addison-Wesley
14|Design Patterns in Ruby|11|2|2|Addison-Wesley
15|Eloquent Ruby|11|2|2|Addison-Wesley
sqlite> SELECT * FROM books JOIN authors ON books.author_id = authors.id WHERE authors.name = "Jonathan Penn";
12|Build iOS Games with SpriteKit|10|1|10|Jonathan Penn
13|Test iOS Apps with UI Automation|10|1|10|Jonathan Penn

SELECT * FROM publishers JOIN books ON publishers.id = books.publisher_id WHERE books.title LIKE '% iOS %';

1|Pragmatic Programmers|12|Build iOS Games with SpriteKit|10|1
1|Pragmatic Programmers|13|Test iOS Apps with UI Automation|10|1

 SELECT publishers.* FROM publishers INNER JOIN books ON books.publisher_id = publishers.id LEFT JOIN authors ON authors.id = books.author_id WHERE authors.name =  "Sandi Metz";

 2|Addison-Wesley

 INSERT INTO authors (name) VALUES ("steven");
sqlite> SELECT * FROM authors WHERE name = "steven";
16|steven

INSERT INTO publishers (name) VALUES ("steven books");
sqlite> SELECT * FROM publishers WHERE name = "steven books";
8|steven books

INSERT INTO books (title, author_id, publisher_id) VALUES ("i pass phase 1", 16, 8);
sqlite> SELECT * FROM books WHERE title = "i pass phase 1";
21|i pass phase 1|16|8

UPDATE authors SET name = "David A. Black" WHERE name = "David Black";
sqlite> SELECT * FROM authors WHERE name = "David A. Black";
13|David A. Black

DELETE FROM authors WHERE name = "steven";

DELETE FROM publishers WHERE name = "steven books";

DELETE FROM books WHERE id = 21;
