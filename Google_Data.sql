USE google_play_store;

SHOW TABLES;

SELECT *FROM Google_Data;

SELECT CURDATE() AS 'Current Date',CURTIME() AS 'Current Time';

SELECT `Status`,`Created at`,DAY(`Created at`) AS `DAY` FROM Google_Data;

SELECT `Status`,`Created at`,MONTH(`Created at`) AS `MONTH` FROM Google_Data;

SELECT `Status`,`Created at`,YEAR(`Created at`) AS `YEAR` FROM Google_Data;

SELECT `Status`,`Created at`,TIME(`Created at`) AS `TIME` FROM Google_Data;

SELECT `Status`,`Created at`,`Updated at`,DATEDIFF(`Updated at`,`Created at`)
AS Difference FROM Google_Data;

SELECT `Status`,`Created at`,`Updated at`,DATE_ADD(`Updated at`,INTERVAL 2 MONTH)
AS NewUpdate FROM Google_Data;

-- SELECT `Updated at`,CONVERT(`Updated at`,VARCHAR(20)) AS NewUpdate FROM Google_Data;