SELECT *FROM ebola_2014_2016_clean;
-- DETERMINING THE NUMBER OF COUNTRIES AFFECTED
SELECT * FROM ebola_2014_2016_clean GROUP BY Country;


-- DETERMINING THE TOTAL NUMBER OF CASES REGISTRED IN EACH DAY
SELECT Country, Date, COUNT(Cases),COUNT(Deaths) Total_Deaths
FROM ebola_2014_2016_clean 
GROUP  BY Date
ORDER BY Date;

-- COUNTRIES WITH THE HIGHEST NUMBER OF CASES AND LOWEST
SELECT Country, SUM(Cases) Total_Cases, SUM(Deaths) Total_Deaths 
FROM ebola_2014_2016_clean 
GROUP BY Country 
ORDER BY SUM(Cases) DESC, SUM(Deaths) DESC;

-- % OF Deaths 
SELECT Country, SUM(Cases) Total_Cases, SUM(Deaths) Total_Deaths, (ROUND(SUM(Deaths))/ROUND(SUM(Cases)))*100 AS Percentage
FROM ebola_2014_2016_clean 
GROUP BY Country 
ORDER BY SUM(Cases) DESC, SUM(Deaths) DESC, Percentage DESC;

-- COUNTRY WITH THE HIGHEST PERCENT OF DEATHS

 SELECT Country, SUM(Cases) Total_Cases, SUM(Deaths) Total_Deaths, (Deaths/Cases)*100 AS Percentage
FROM ebola_2014_2016_clean;
 
-- BREAKDOWN BY COUNTRY 

SELECT Country, SUM(Cases) Cases,SUM(Deaths) Deaths
FROM ebola_2014_2016_clean 
GROUP BY Country ORDER BY SUM(Cases) DESC, SUM(Deaths)DESC;

-- - LOOKING AT GLOBAL DATA
SELECT SUM(Cases) FROM ebola_2014_2016_clean ; 

-- TOTAL Deaths

SELECT SUM(Deaths) FROM ebola_2014_2016_clean;

-- CREATING A VIEW FOR LATER VISUALISATION

CREATE VIEW TOTALCASES AS 
SELECT Country, SUM(Cases) Cases,SUM(Deaths) Deaths
FROM ebola_2014_2016_clean 
GROUP BY Country ORDER BY SUM(Cases) DESC, SUM(Deaths)DESC;

SELECT*FROM TOTALCASES

                                                    