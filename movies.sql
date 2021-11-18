Q1-
SELECT mov_title FROM movie 
WHERE mov_id = 907 or mov_id =905 or mov_id =917;

Q2-
SELECT actor.act_fname,actor.act_lname,movie_cast.role
FROM actor
JOIN movie_cast ON actor.act_id=movie_cast.act_id
JOIN movie ON movie_cast.mov_id=movie.mov_id AND movie.mov_title='Annie Hall';

Q3 -
SELECT actor.act_fname,actor.act_lname,movie.mov_title ,movie.mov_year 
FROM actor
JOIN movie_cast ON actor.act_id=movie_cast.act_id
JOIN movie ON movie_cast.mov_id=movie.mov_id WHERE mov_year not BETWEEN 1990  AND 2000;

Q4-
select movie.mov_year 
FROM movie
join rating ON rating.mov_id=movie.mov_id WHERE rev_stars BETWEEN 3  AND 4 ORDER BY movie.mov_year  ASC;

Q5-
SELECT movie.mov_id ,movie.mov_title , movie.mov_dt_rel 
FROM movie
WHERE movie.mov_title IN ('Boogie Nights') ORDER BY movie.mov_year  ASC;

Q6-
SELECT movie.mov_title,director.dir_fname ,director.dir_lname ,rating.rev_stars 
FROM movie 
JOIN rating ON rating.mov_id =movie.mov_id
JOIN movie_direction ON movie_direction.mov_id =rating.mov_id 
JOIN director ON movie_direction.dir_id =director.dir_id where rating.rev_stars is not null;

Q7-
SELECT mov_title, mov_year, rev_stars, mov_rel_country
FROM movie 
JOIN rating ON rating.mov_id =movie.mov_id where rating.rev_stars=(SELECT MAX(rating.rev_stars) FROM rating);

Q8-
SELECT mov_title FROM movie 
WHERE mov_id = 907 or mov_id =905 or mov_id =917;


Q9-
SELECT movie.mov_title
FROM movie 
JOIN rating ON rating.mov_id =movie.mov_id where rating.num_o_ratings is null

Q10-
SELECT mov_title 
FROM movie 
where mov_year <1998;
