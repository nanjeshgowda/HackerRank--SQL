/*

A median is defined as a number separating the higher half of a data set from the lower half. Query the median of the Northern Latitudes (LAT_N) from STATION and round your answer to  decimal places.

Input Format

The STATION table is described as follows:

Station.jpg

where LAT_N is the northern latitude and LONG_W is the western longitude.

*/

SELECT ROUND(X.LAT_N, 4)
FROM STATION AS X, STATION AS Y /*Self join*/
GROUP BY X.LAT_N
HAVING SUM(SIGN(1-SIGN(Y.LAT_N - X.LAT_N)))/COUNT(X.LAT_N) > 0.5
LIMIT 1;
