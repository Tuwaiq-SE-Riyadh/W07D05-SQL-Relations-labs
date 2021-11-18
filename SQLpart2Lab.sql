/1
select mov_title 
from movies.movie
where mov_id= 905 or mov_id = 907 or mov_id =917;
/2
select act_fname , act_lname, role
from actor join movie_cast on actor.act_id =movie_cast.act_id 
 join movie on movie_cast.mov_id = movie.mov_id 
and mov_title="Annie Hall";
/3
select act_fname,act_lname,mov_title,mov_dt_rel 
from actor join movie_cast on actor.act_id = movie_cast.act_id 
join movie on movie_cast.mov_id = movie.mov_id 
where mov_year not between 1990 and 2000;
/4
select mov_year from movie
join rating on movie.mov_id =rating.mov_id 
where rev_stars =3 or rev_stars =4 
order by mov_year asc;
/5
select mov_title, mov_year,mov_id from movie 
where mov_title in("Boogie Nights")
order by mov_year asc;
