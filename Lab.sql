Q1:
SELECT mov_title FROM movie
WHERE mov_id=905 or mov_id=907 or mov_id=917;

Q2:
SELECT actor.act_fname, actor.act_lname, movie_cast.role
from actor
 JOIN movie_cast ON movie_cast.act_id = actor.act_id
 JOIN movie ON movie_cast.mov_id = movie.mov_id where movie.mov_title='Annie Hall';

Q3:
SELECT actor.act_fname, actor.act_lname, movie.mov_title, movie.mov_year
from actor
 JOIN movie_cast ON movie_cast.act_id = actor.act_id
 JOIN movie ON movie_cast.mov_id = movie.mov_id where movie.mov_year not between 1990 and 2000;

Q4:
SELECT movie.mov_year
from movie 
 JOIN rating ON movie.mov_id = rating.mov_id where rating.rev_stars=3 or rating.rev_stars=4 ORDER BY mov_year ASC;

Q5:
SELECT movie.mov_id, movie.mov_year, movie.mov_title 
from movie where movie.mov_title LIKE '%Boogie Nights%' ORDER BY mov_year ASC;

Q6:
SELECT movie.mov_title, director.dir_fname, director.dir_lname, rating.rev_stars
from movie
join rating on rating.mov_id = movie.mov_id
 JOIN movie_direction ON movie_direction.mov_id = rating.mov_id
 JOIN director ON movie_direction.dir_id = director.dir_id where rating.rev_stars is not null;

Q7:
SELECT movie.mov_title, movie.mov_year, rating.rev_stars, movie.mov_rel_country
from movie
 JOIN rating ON rating.mov_id = movie.mov_id where rev_stars=(SELECT MAX(rev_stars) AS MostRated
FROM rating);

Q8:
SELECT mov_title FROM movie
WHERE mov_id=905 or mov_id=907 or mov_id=917;

Q9:
SELECT movie.mov_title
from movie
join rating on rating.mov_id = movie.mov_id where rating.num_o_ratings is null;

Q10:
SELECT mov_title from movie where mov_year < 1998;