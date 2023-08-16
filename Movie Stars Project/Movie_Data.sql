CREATE TABLE movie_stars (id INTEGER PRIMARY KEY, full_name TEXT, age INTEGER, home_state TEXT, oscar_winner INTEGER, spouse_id INTEGER);

INSERT INTO movie_stars VALUES (1, "Matt Damon", 52, "Massachusetts", 1, NULL);
INSERT INTO movie_stars VALUES (2, "Samuel L. Jackson", 74, "Washington D.C.", 0, NULL);
INSERT INTO movie_stars VALUES (3, "Robert De Niro", 79, "New York", 2, 9);
INSERT INTO movie_stars VALUES (4, "Adam Shulman", 42, "New York", 0, 7);
INSERT INTO movie_stars VALUES (5, "Sarah Jessica Parker", 58, "Ohio", 0, 10);
INSERT INTO movie_stars VALUES (6, "Leonardo DiCaprio", 48, "California", 1, NULL);
INSERT INTO movie_stars VALUES (7, "Anne Hathaway", 40, "New York", 1, 4);
INSERT INTO movie_stars VALUES (8, "Ryan Reynolds", 46, NULL, 0, 16);
INSERT INTO movie_stars VALUES (9, "Grace Hightower", 68, "Mississippi", 0, 3);
INSERT INTO movie_stars VALUES (10, "Matthew Broderick", 61, "New York", 0, 5);
INSERT INTO movie_stars VALUES (11, "Jennifer Lopez", 54, "New York", 0, 17);
INSERT INTO movie_stars VALUES (12, "Mila Kunis", 39, "NULL", 0, 14);
INSERT INTO movie_stars VALUES (13, "Adam Brody", 43, "California", 0, 15);
INSERT INTO movie_stars VALUES (14, "Ashton Kutcher", 45, "Iowa", 0, 12);
INSERT INTO movie_stars VALUES (15, "Leighton Meester", 37, "Texas", 0, 13); 
INSERT INTO movie_stars VALUES (16, "Blake Lively", 35, "California", 0, 8);
INSERT INTO movie_stars VALUES (17, "Ben Affleck", 50, "California", 2, 11);


CREATE TABLE movies (id INTEGER PRIMARY KEY AUTOINCREMENT, actor_id INTEGER, title TEXT, story_setting TEXT, director TEXT, director_oscars INTEGER);

INSERT INTO movies VALUES (1, 14, "Killers", "Georgia", "Robert Luketic", 0);
INSERT INTO movies VALUES (2, 5, "Miami Rhapsody", "Florida", "David Frankel", 1);
INSERT INTO movies VALUES (3, 10, "Ferris Bueller's Day Off", "Illinois", "John Hughes", NULL); 
INSERT INTO movies VALUES (4, 1, "The Good Shepherd", "Washington D.C.", "Robert De Niro", NULL); 
INSERT INTO movies VALUES (5, 11, "Monster In Law", "California", "Robert Luketic", 0);
INSERT INTO movies VALUES (6, 7, "The Devil Wears Prada", "New York", "David Frankel", 1); 
INSERT INTO movies VALUES (7, 13, "Baggage Claim", "Maryland", "David E. Talbery", 0);
INSERT INTO movies VALUES (8, 4, "Ricki and the Flash", "California", "Jonathan Demme", 1);
INSERT INTO movies VALUES (9, 9, "The Paperboy", "Florida", "Lee Daniels", 3);
INSERT INTO movies VALUES (10, 3, "A Bronx Tale", "New York", "Robert De Niro", NULL); 
INSERT INTO movies VALUES (11, 8, "Free Guy", "Massachusetts", "Shawn Levy", NULL); 
INSERT INTO movies VALUES (12, 2, "Jackie Brown", "California", "Quentin Tarantino", 2);
INSERT INTO movies VALUES (13, 16, "A Simple Favor", "Connecticut", "Paul Feig", 0);
INSERT INTO movies VALUES (14, 12, "The Spy Who Dumped Me", "California", "Susanna Fogel", 0);
INSERT INTO movies VALUES (15, 6, "Once Upon a Time...In Hollywood", "California", "Quentin Tarantino", 2); 
INSERT INTO movies VALUES (16, 17, "Deep Water", "Louisianna", "Adrian Lyne", 0);
INSERT INTO movies VALUES (17, 15, "Date Night", "New York", "Shawn Levy", 0);


CREATE TABLE same_director (id INTEGER PRIMARY KEY, title1_id INTEGER, title2_id INTEGER);

INSERT INTO same_director VALUES (1, 4, 10);
INSERT INTO same_director VALUES (2, 12, 15);
INSERT INTO same_director VALUES (3, 2, 6); 
INSERT INTO same_director VALUES (4, 1, 5);
INSERT INTO same_director VALUES (5, 11,17); 
