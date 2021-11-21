SELECT mov_title FROM movies.movie
WHERE mov_id = '905' OR mov_id = '907' OR mov_id = '917';



SELECT mov_title FROM movies.actor
WHERE mov_id = '905' OR mov_id = '907' OR mov_id = '917';



SELECT act_fname, act_lname, role
FROM movies.movie_cast
INNER JOIN movies.actor ON actor.act_id = movie_cast.act_id
INNER JOIN movies.movie ON movie.mov_id = movie_cast.mov_id
WHERE movie.mov_title = 'Annie Hall';



SELECT act_fname, act_lname, mov_title , mov_year
FROM movies.movie_cast
INNER JOIN movies.actor ON actor.act_id = movie_cast.act_id
INNER JOIN movies.movie ON movie.mov_id = movie_cast.mov_id
WHERE movie.mov_year BETWEEN '1990' AND '2000';


SELECT mov_year
FROM movies.movie
INNER JOIN movies.rating ON rating.mov_id = movie.mov_id
WHERE movies.rating.rev_stars = '3' OR movies.rating.rev_stars = '4'
ORDER BY mov_year ASC;


SELECT mov_id , mov_title , mov_year
FROM movies.movie
WHERE movie.mov_title = 'Boogie Nights'
ORDER BY mov_year ASC;



SELECT mov_title, dir_fname,dir_lname, rev_stars
FROM Movie
JOIN movie_direction USING(mov_id)
join director using (dir_id)
left join rating using(mov_id)
where rev_stars is not null;


SELECT mov_title, mov_year, rev_stars, mov_rel_country
FROM movie 
NATURAL JOIN rating
WHERE rev_stars = (
SELECT MAX(rev_stars)
FROM rating
);


SELECT mov_title
FROM movie
WHERE mov_id NOT IN (
SELECT mov_id 
FROM rating
);


SELECT mov_title
FROM movie
WHERE mov_year<1998;