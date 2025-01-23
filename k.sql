SELECT * from movies order by imdb_rating;

SELECT count(title) cnt , industry from movies group by industry;

select count(title) cnt , studio from movies where studio != ""  group by studio having cnt > 1 order by  cnt DESC; 

select release_year , count(title) cnt from movies group by release_year having cnt > 2 order by cnt DESC;

# SELECT -> FROM -> WHERE -> GROUP by -> HAVING -> ORDER BY

select * from actors;

SELECT name , YEAR(curdate()) - birth_year as age from actors order by age DESC;

SELECT * from financials;

select * ,(revenue - budget) profit from financials; 

SELECt * , 
IF (currency="USD" , revenue *80 , revenue) as revenue_inr
from financials;

SELECT * , 
CASE
	WHEN unit = "thousands" THEN revenue / 1000
	WHEN unit = "billions" THEN revenue * 1000
    ELSE revenue
END as revenue_mln
from financials;


SELECt title , (revenue - budget) profit
FROM movies m
JOIN financials f
on m.movie_id = f.movie_id;


SELECt m.movie_id ,title , (revenue - budget) profit
FROM movies m
JOIN financials f
on m.movie_id = f.movie_id;


SELECt movie_id ,title , (revenue - budget) profit
FROM movies m
JOIN financials f
USING (movie_id);

SELECt movie_id ,title , (revenue - budget) profit
FROM movies m
LEFT JOIN financials f
USING (movie_id)

UNION

SELECt movie_id ,title , (revenue - budget) profit
FROM movies m
RIGHT JOIN financials f
USING (movie_id);

USE food_db;

SELECT * from items
CROSS join variants;


SELECT  concat(name ," " , variant_name) as full_name,
(price + variant_price) as full_price
from items 
CROSS join variants;



SELECT title , (revenue-budget) as profit from movies m join financials f using (movie_id) order by profit;

SELECT title , unit, (revenue-budget) as profit from movies m join financials f using (movie_id) 
where industry = "bollywood" order by profit DESC;


SELECT 
m.movie_id , title , budget ,
revenue , currency , unit ,

CASE 
	WHEN unit = "thousands" THEN ROUND((revenue /1000),2)
	WHEN unit = "billions" THEN ROUND((revenue * 1000),2)
    ELSE revenue
END as revenue_mln
from movies m join financials f using (movie_id) 
ORDER by revenue_mln DESC;


select * from movies;
select * from actors;
select * from movie_actor;


select movie_id , title , group_concat(a.name) from 
movies m 
join movie_actor ma using (movie_id)
join actors a using (actor_id)
group by movie_id;


select movie_id , a.name as actor , group_concat(m.title SEPARATOR " | " )as mvs from 
actors a
join movie_actor ma using (actor_id)
join movies m  using (movie_id)
group by movie_id;