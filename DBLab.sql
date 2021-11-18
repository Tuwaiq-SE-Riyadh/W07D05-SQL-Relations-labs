CREATE TABLE movies.movie (
    mov_id integer NOT NULL,
    mov_title character(50),
    mov_year integer,
    mov_time integer,
    mov_lang character(15),
    mov_dt_rel date,
    mov_rel_country character(5)
);

CREATE TABLE movies.movie_cast (
    act_id integer NOT NULL,
    mov_id integer NOT NULL,
    role character(30)
);

CREATE TABLE movies.actor (
    act_id integer NOT NULL,
    act_fname character(20),
    act_lname character(20),
    act_gender character(1)
);

CREATE TABLE movies.rating (
    mov_id integer NOT NULL,
    rev_id integer NOT NULL,
    rev_stars numeric(4,2),
    num_o_ratings integer
);


CREATE TABLE movies.director (
    dir_id integer NOT NULL,
    dir_fname character(20),
    dir_lname character(20)
);

CREATE TABLE movies.movie_direction (
    dir_id integer NOT NULL,
    mov_id integer NOT NULL
);


INSERT into movies.movie (mov_id, mov_title, mov_year, mov_time, mov_lang, mov_dt_rel, mov_rel_country) 
values
(901,"Vertigo",1958,128,"English",'1958-8-24',"UK"),
(902,"The Innocents",1961,100,"English",'1962-02-19',"SW"),
(903,"Lawrence of Arabia",1962,216,"English",'1962-12-11',"UK"),
(904,"The Deer Hunter",1978,183,"English",'1979-03-08',"UK"),
(905,"Amadeus",1984,160,"English",'1985-01-07',"UK"),
(906,"Blade Runner",1982,117,"English",'1982-09-09',"UK"),
(907,"Eyes Wide Shut",1999,159,"English",null,"UK"),
(908,"The Usual Suspects",1995,106,"English",'1995-08-25',"UK"),
(910,"Chinatown",1974,130,"English",'1974-08-09',"UK"),
(909,"Boogie Nights",1997,155,"English",'1998-02-16',"UK"),
(911,"Annie Hall",1977,93,"English",'1977-04-20',"USA"),
(912,"Princess Mononoke",1997,134,"Japanese",'2001-10-19',"UK"),
(913,"The Shawshank Redemption",1994,142,"English",'1995-02-17',"UK"),
(914,"American Beauty",1999,122,"English",null,"UK"),
(915,"Titanic",1997,194,"English",'1998-01-23',"UK"),
(916,"Good Will Hunting",1997,126,"English",'1998-06-03',"UK"),
(917,"Deliverance",1972,109,"English",'1982-10-05',"UK");   	


INSERT into movies.movie_cast (act_id, mov_id, role)
values 
(101,901,"John Scottie Ferguson"),
 (102,902,"Miss Giddens"),
 (103,903,"T.E. Lawrence"),
 (104,904,"Michael"),
 (105,905,"Antonio Salieri"),
 (106,906,"Rick Deckard "),
 (107,907,"Alice Harford"),
 (108,908,"McManus"),
 (110,910,"Eddie Adams"),
 (111,911,"Alvy Singer"),
 (112,912,"San"),
 (113,913,"Andy Dufresne"),
 (114,914,"Lester Burnham"),
 (115,915,"Rose DeWitt Bukater"),
 (116,916,"Sean Maguire"),
 (117,917,"Ed");

INSERT into movies.actor (act_id, act_fname, act_lname, act_gender) values
(101,"James","Stewart","M"),
(102,"Deborah","Kerr","F"),
(103,"Peter","OToole","M"),
(104,"Robert","De Niro ","M"),
(105,"F. Murray","Abraham","M"),
(106,"Harrison","Ford","M"),
(107,"Nicole","Kidman","F"),
(108,"Stephen","Baldwin","M"),
(109,"Jack","Nicholson","M"),
(110,"Mark","Wahlberg","M"),
(111,"Woody","Allen","M"),
(112,"Claire","Danes","F"),
(113,"Tim","Robbins","M"),
(114,"Kevin","Spacey","M"),
(115,"Kate","Winslet","F"),
(116,"Robin","Williams","M"),
(117,"Jon","Voight","M");

INSERT into movies.movie_direction (dir_id, mov_id) values
(201,901),
(202,902),
(203,903),
(204,904),
(205,905),
(206,906),
(207,907),
(208,908),
(209,909),
(210,910),
(211,911),
(212,912),
(213,913),
(214,914),
(215,915),
(216,916),
(217,917);

INSERT into movies.director (dir_id, dir_fname, dir_lname)
values 
(201,"Alfred","Hitchcock"),          
(202,"Jack","Clayton"),           
(203,"David","Lean"),               
(204,"Michael","Cimino"),              
(205,"Milos","Forman"),            
(206,"Ridley","Scott"),             
(207,"Stanley","Kubrick"),           
(208,"Bryan","Singer"),              
(209,"Roman","Polanski"),          
(210,"Paul","Thomas Anderson"),   
(211,"Woody","Allen"),            
(212,"Hayao","Miyazaki"),           
(213,"Frank","Darabont"),           
(214,"Sam","Mendes"),            
(215,"James","Cameron"),          
(216,"Gus","Van Sant"),          
(217,"John","Boorman");

INSERT INTO movies.rating (mov_id, rev_id, rev_stars, num_o_ratings) 
values 
(901,9001,8.40,263575),
(902,9002,7.90,20207),
(903,9003,8.30,202778),
(906,9005,8.20,484746),
(924,9006,7.30,null),
(908,9007,8.60,779489),
(909,9008,null,227235),
(910,9009,3.00,195961),
(911,9010,8.10,203875),
(912,9011,8.40,null),
(914,9013,7.00,862618),
(915,9001,7.70,830095),
(916,9014,4.00,642132),
(925,9015,7.70,81328),
(918,9016,null,580301),
(920,9017,8.10,609451),
(921,9018,8.00,667758),
(922,9019,8.40,511613),
(923,9020,6.70,13091);

describe movies.movie;

select mov_title from movies.movie where (mov_id=905 or mov_id=907 or mov_id=917);

describe movies.movie_cast;

select act_fname,act_lname,role
  from actor 
	  join movie_cast on actor.act_id=movie_cast.act_id
		join movie on movie_cast.mov_id=movie.mov_id 
		  and movie.mov_title='Annie Hall';

select act_fname, act_lname, mov_title, mov_dt_rel
  from actor 
       join movie_cast on actor.act_id=movie_cast.act_id
         join movie on movie_cast.mov_id=movie.mov_id
            where mov_year not between 1990 and 2000;
           
select distinct mov_year
   from movie, rating
      where movie.mov_id = rating.mov_id 
          and rev_stars in (3, 4)
                 order by mov_year;
          
select mov_id, mov_title, mov_year
    from movie
       where mov_title like 'Boogie Nights'
         order by mov_year asc;
           
          
select mov_title, dir_fname,dir_lname, rev_stars
    from Movie
       join movie_direction using (mov_id)
            join director using (dir_id)
                left join rating using(mov_id)
                   where rev_stars is not null;
                  
select mov_title, mov_year, rev_stars, mov_rel_country
    from movie, rating;
   

select mov_title 
    from movie, rating
      where movie.mov_id = rating.mov_id 
         and num_o_ratings is null;
      
select mov_title 
    from movie 
       where mov_year < 1998;
      