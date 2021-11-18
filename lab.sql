select mov_title from movie where mov_id=905 or  mov_id=907 or  mov_id=917;

select act_fname,act_lname,role from actor JOIN movie_cast ON actor.act_id=movie_cast.act_id
JOIN movie ON movie_cast.mov_id=movie.mov_id AND movie.mov_title='Annie Hall' ;

select act_fname,act_lname,mov_title,mov_year from actor JOIN movie_cast ON actor.act_id=movie_cast.act_id
JOIN movie ON movie_cast.mov_id=movie.mov_id WHERE mov_year NOT BETWEEN 1990 and 2000;

select mov_year from movie join rating on movie.mov_id =rating.mov_id where rev_stars =3 or rev_stars =4
order by mov_year asc ;

SELECT mov_id, mov_title, mov_year FROM movie WHERE mov_title like 'Boogie Nights'
ORDER BY mov_year asc ;

SELECT mov_title, dir_fname,dir_lname, rev_stars FROM Movie JOIN movie_direction USING(mov_id)
join director using (dir_id) join rating using(mov_id)
where rev_stars ;

SELECT mov_title, mov_year, rev_stars, mov_rel_country FROM movie  INNER JOIN rating WHERE rev_stars = (
SELECT MAX(rev_stars)FROM rating
);

SELECT mov_title FROM movie WHERE mov_id NOT IN ( SELECT mov_id  FROM rating);

SELECT mov_title FROM movie WHERE mov_year<1998;
