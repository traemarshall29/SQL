/*CREATE TABLE movie_stars (id INTEGER PRIMARY KEY, full_name TEXT, age INTEGER, home_state TEXT, oscar_winner INTEGER, spouse_id INTEGER);*/
/*CREATE TABLE movies (id INTEGER PRIMARY KEY AUTOINCREMENT, actor_id INTEGER, title TEXT, story_setting TEXT, director TEXT, director_oscars INTEGER);*/
/*CREATE TABLE same_director (id INTEGER PRIMARY KEY, title1_id INTEGER, title2_id INTEGER);*/
/*This query finds the title and setting of a movie that is in the same state as the actor's homestate*/
SELECT m.title, ms.full_name, ms.home_state, m.story_setting FROM movie_stars AS ms
    INNER JOIN movies AS m
    ON ms.id = m.actor_id
    WHERE ms.home_state = m.story_setting;

/*Movie titles had were directed by Robert De Niro*/
SELECT m.title, m.director FROM movie_stars AS ms
    JOIN movies AS m
    ON ms.id = m.actor_id
    WHERE m.director = "Robert De Niro"; 

/*A comparison of the actor and director of a film, and how many career Oscars they have won.*/
SELECT ms.oscar_winner AS actor_oscars, m.director_oscars, ms.full_name AS actor, m.director FROM movies AS m
    LEFT OUTER JOIN movie_stars AS ms
    ON ms.id = m.actor_id; 

/*Were these actors married, and if so who is their spouse?*/
SELECT ms.full_name, spouse.full_name FROM movie_stars ms
   LEFT OUTER JOIN movie_stars spouse 
    ON ms.spouse_id = spouse.id; 

/*This query shows which movies that have the same director*/
SELECT a.title, b.title, a.director FROM same_director 
    JOIN movies a
    ON same_director.title1_id = a.id
    JOIN movies b 
    ON same_director.title2_id = b.id; 
