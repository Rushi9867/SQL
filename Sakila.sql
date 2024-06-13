USE WORLD;

SHOW TABLES;

SELECT *FROM COUNTRY;

SELECT *FROM COUNTRY ORDER BY continent;
 
 ## Show Continentwise Avg Population, Avg Life Expectancy, Total Surface Area

SELECT SUM(SurfaceArea) AS Total_Surface_Area,SUM(Population) AS Total_Population,
AVG(LifeExpectancy) AS Average_Life_Expectancy, SUM(GNP) AS Total_GNP FROM COUNTRY;

SELECT SUM(SurfaceArea) AS Total_Surface_Area,SUM(Population) AS Total_Population,
AVG(LifeExpectancy) AS Average_Life_Expectancy, SUM(GNP) AS Total_GNP,continent FROM COUNTRY
GROUP BY continent;

SELECT SUM(SurfaceArea) AS Total_Surface_Area,SUM(Population) AS Total_Population,
AVG(LifeExpectancy) AS Average_Life_Expectancy, SUM(GNP) AS Total_GNP,Region 
FROM COUNTRY GROUP BY Region;

SELECT Region,COUNT(NAME) AS Total_Countries,SUM(SurfaceArea) AS Total_Surface_Area,SUM(Population) AS Total_Population,
AVG(LifeExpectancy) AS Average_Life_Expectancy, SUM(GNP) AS Total_GNP 
FROM COUNTRY GROUP BY Region;

SELECT Continent, COUNT(Name) AS Total_Countries FROM COUNTRY 
GROUP BY continent;

SELECT Continent, COUNT(Name) AS Total_Countries FROM COUNTRY 
GROUP BY continent HAVING Total_Countries > 30;

SELECT Continent, COUNT(Name) AS Total_Countries FROM COUNTRY 
GROUP BY continent HAVING Total_Countries > 30 ORDER BY Total_Countries;

## CASE WHEN :
## Categorize Countries as Under-Developed, Developing and Developed using GNP. 

SELECT MIN(GNP) , MAX(GNP) FROM COUNTRY;
SELECT Name,continent,
CASE 
WHEN GNP <= 100000 THEN "Under_Developed"
WHEN GNP > 100000 AND GNP <= 4500000 THEN "Developing"
ELSE "Developed" 
END AS Country_Category
FROM COUNTRY;

SELECT Name,continent,
CASE 
WHEN GNP <= 100000 THEN "Under_Developed"
WHEN GNP > 100000 AND GNP <= 4500000 THEN "Developing"
ELSE "Developed" 
END AS Country_Category
FROM COUNTRY WHERE 
CASE
WHEN GNP <= 100000 THEN "Under_Developed"
WHEN GNP > 100000 AND GNP <= 4500000 THEN "Developing"
ELSE "Developed" 
END ="Developed"
;

SELECT CASE
WHEN GNP <= 100000 THEN "Under_Developed"
WHEN GNP > 100000 AND GNP <= 4500000 THEN "Developing"
ELSE "Developed" 
END AS Country_Category, COUNT(Name) AS No_of_Countries
FROM COUNTRY
GROUP BY CASE
WHEN GNP <= 100000 THEN "Under_Developed"
WHEN GNP > 100000 AND GNP <= 4500000 THEN "Developing"
ELSE "Developed" 
END;

# 3 - Categorize the Countries as per the Population Density as LPD, MPD and HPD.
# Population Density(PD) = Population/SurfaceArea

SELECT MIN(Population/SurfaceArea),MAX(Population/SurfaceArea)
FROM COUNTRY;

# LPD - <= 2000; MPD - 15000  >= PD > 2000; HPD - >=15000

SELECT NAME, Continent,(Population/SurfaceArea) AS PD,
CASE
WHEN (Population/SurfaceArea) <= 2000 THEN "LPD"
WHEN (Population/SurfaceArea) > 2000 AND (Population/SurfaceArea) <= 15000 THEN "MPD"
ELSE "HPD" END AS PD_Categorization
FROM COUNTRY;

SELECT CASE
WHEN (Population/SurfaceArea) <= 2000 THEN "LPD"
WHEN (Population/SurfaceArea) > 2000 AND (Population/SurfaceArea) <= 15000 THEN "MPD"
ELSE "HPD" END AS PD_Categorization,avg(Population/SurfaceArea) AS AVG_PD,
COUNT(NAME) AS Toatl_Countries FROM COUNTRY
GROUP BY 
(CASE
WHEN (Population/SurfaceArea) <= 2000 THEN "LPD"
WHEN (Population/SurfaceArea) > 2000 AND (Population/SurfaceArea) <= 15000 THEN "MPD"
ELSE "HPD" END);


SELECT *, RANK() OVER (ORDER BY GNP DESC) AS Rank_GNP FROM Country;

