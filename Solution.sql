show databases;


-- select mov_title 
-- from movie
-- where mov_id = 905 or mov_id = 907 or mov_id = 917;

-- select act_fname , act_lname , actor.act_id , role
-- from actor 
--  join movie_cast  on movie_cast.act_id = actor.act_id 
--  join movie on movie.mov_id = movie_cast.mov_id
-- where mov_title = "Annie Hall";

-- SELECT act_fname, act_lname, mov_title, mov_year
-- FROM actor
-- JOIN movie_cast 
-- ON actor.act_id=movie_cast.act_id
-- JOIN movie 
-- ON movie_cast.mov_id=movie.mov_id
-- WHERE mov_year NOT BETWEEN 1990 and 2000;

-- select mov_year
-- from movie 
-- join rating 
-- on rating.mov_id = movie.mov_id 
-- where rev_stars = 3 or rev_stars = 4
-- order by mov_year;

-- select mov_id , mov_title , mov_year 
-- from movie 
-- where mov_title = 'Boogie Nights';
-- ORDER BY mov_year ASC;

-- select mov_title , dir_fname , dir_lname , rev_stars
-- from movie 
-- join movie_direction 
-- on movie.mov_id = movie_direction.mov_id 
-- join director 
-- on director.dir_id = movie_direction.dir_id 
-- join rating 
-- on movie.mov_id = rating.mov_id 
-- where  rev_stars  is not null ;

-- SELECT mov_title, mov_year, rev_stars, mov_rel_country
-- FROM movie 
-- NATURAL JOIN rating
-- WHERE rev_stars = (
-- SELECT MAX(rev_stars)
-- FROM rating
-- );

-- SELECT mov_title
-- FROM movie
-- WHERE mov_id NOT IN (
-- SELECT mov_id 
-- FROM rating
-- );

-- SELECT mov_title
-- FROM movie
-- WHERE mov_year < 1998;
