SELECT mov_title FROM movie WHERE mov_id =905 or mov_id =907 or mov_id =917;

SELECT actor.act_fname, actor.act_lname ,role
FROM actor  
join movie_cast on actor.act_id =movie_cast.act_id 
join  movie on  movie_cast.mov_id =movie.mov_id and  mov_title='Annie Hall';

SELECT actor.act_fname, actor.act_lname ,mov_title,mov_year
FROM actor  
join movie_cast on actor.act_id =movie_cast.act_id 
join  movie on  movie_cast.mov_id =movie.mov_id WHERE movie.mov_year not between '1990' and '2000';


SELECT mov_year 
FROM movie
join rating on rating.mov_id =movie.mov_id WHERE rating.rev_stars=3 or rating.rev_stars=4 
ORDER BY mov_year ASC

SELECT mov_id, mov_title, mov_year 
FROM movie WHERE mov_title like 'Boogie Nights'
ORDER BY mov_year asc ;




SELECT mov_title, dir_fname,dir_lname, rev_stars FROM Movie 
JOIN movie_direction USING(mov_id)
join director using (dir_id) 
join rating using(mov_id)
WHERE rev_stars ;

SELECT mov_title, mov_year, rev_stars, mov_rel_country FROM movie  INNER JOIN rating 
WHERE rev_stars = (SELECT MAX(rev_stars)FROM rating);


SELECT mov_title FROM movie WHERE mov_id NOT IN ( SELECT mov_id  FROM rating);

SELECT mov_title FROM movie WHERE movie.mov_year < '1998';



