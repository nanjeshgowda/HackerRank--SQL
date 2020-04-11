/*
Query the total population of all cities in CITY where District is California.

*/

select sum(Population) from city where district = 'California';
