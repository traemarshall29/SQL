/* This project reveals insights about TV and Movie content hosted on Netflix. */

/* The project was written using the PostgreSQL dialect and utilized data from the following two Netflix datasets: */

CREATE TABLE netflix_titles_info
    ("show_id" varchar(5), "type" varchar(7), "title" varchar(58), "country" varchar(74), "date_added" timestamp, "release_year" int, "rating" varchar(5), "duration" varchar(9), "listed_in" varchar(74)) ;

CREATE TABLE netflix_people
    ("show_id" varchar(5), "director" varchar(54), "cast" varchar(532)) ;


/* The following SQL was written to answer specific questions about the content on Netflix: */


#1. How many movie titles are there in the database? (movies only, not tv shows) 
SELECT count(*) 
FROM "netflix_titles_info"
WHERE type='Movie' ;

#2. When was the most recent batch of tv shows and/or movies added to the database? 
SELECT max(date(date_added))
FROM "netflix_titles_info" ;

#3. List all the movies and tv shows in alphabetical order. 
SELECT title
FROM "netflix_titles_info"
ORDER BY title ASC ;

#4. Who was the Director for the movie The Starling? 
SELECT director
FROM "netflix_titles_info" titles
LEFT OUTER JOIN "netflix_people" people
ON titles.show_id = people.show_id
WHERE titles.title = 'The Starling' ;

#5. What is the oldest movie in the database and what year was it made? 
SELECT title, release_year
FROM "netflix_titles_info"
WHERE type = 'Movie'
ORDER BY release_year ASC
LIMIT 1 ;
