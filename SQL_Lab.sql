select mov_title from movie where mov_id = 905 or mov_id = 907 or mov_id = 917;

-- ---------------------------------
select act_fname ,act_lname , role 
from actor
inner join movie_cast
ON  actor.act_id = movie_cast.act_id 
inner join movie
ON movie.mov_id = movie_cast.mov_id 
where movie.mov_title = 'Annie Hall' ;


-- ----------------------------------
select act_fname ,act_lname , movie.mov_title ,movie.mov_year 
from actor
inner join movie_cast
ON  actor.act_id = movie_cast.act_id 
inner join movie
ON movie.mov_id = movie_cast.mov_id 
where movie.mov_year not between 1990 and 2000 ;
-- ---------------------------------

select movie.mov_year 
from movie 
inner join rating  
ON  movie.mov_id = rating.mov_id 
where rating.rev_stars = 3 or rating.rev_stars =4
order by mov_year;

-- ---------------------------------

select movie.mov_id ,movie.mov_title , movie.mov_dt_rel 
from movie 
where mov_title like "Boogie Nights"
order by mov_year;

-- ---------------------------------

select movie.mov_title ,director.dir_fname ,director.dir_lname ,rating.rev_stars 
from movie 
inner join movie_direction
on movie_direction.mov_id = movie.mov_id 
inner join director 
on director.dir_id = movie_direction.dir_id
inner join rating 
on movie.mov_id = rating.mov_id 
where rating.rev_stars is not null ;

-- ---------------------------------

select movie.mov_title ,movie.mov_year ,rating.rev_stars, movie.mov_rel_country 
from movie 
inner join rating 
on movie.mov_id = rating.mov_id 
order by rating.rev_stars desc limit 5;

-- ---------------------------------

select movie.mov_title 
from movie 
inner join rating 
on movie.mov_id = rating.mov_id
where rating.num_o_ratings is null;

-- ---------------------------------

select movie.mov_title
from movie 
where movie.mov_year < 1998;