--select the starup table
SELECT * FROM startups;


--Calculate the total number of companies in the table.
SELECT COUNT(*) FROM startups;


--We want to know the total value of all companies in this table
SELECT SUM(valuation) FROM startups;


--What is the highest amount raised by a startup?
SELECT MAX(raised) FROM startups;


--Edit the query so that it returns the maximum amount of money raised, during ‘Seed’ stage.
SELECT MAX(raised) FROM startups
WHERE stage = 'Seed';


--In what year was the oldest company on the list founded?
SELECT MIN(founded)
FROM startups;


--Return the average valuation
SELECT AVG(valuation)
FROM startups;


--Return the average valuation, in each category.
SELECT category, ROUND(AVG(valuation), 2)
FROM startups
GROUP BY category;


--Return the average valuation, in each category,round the averages to two decimal places.
--and order the list from highest averages to lowest.
SELECT category, ROUND(AVG(valuation), 2)
FROM startups
GROUP BY category
ORDER BY ROUND(AVG(valuation), 2) DESC;


--return the name of each category with the total number of companies that belong to it.
SELECT category, COUNT(*)
FROM startups
GROUP BY category;


--filter the result to only include categories that have more than three companies in them.
SELECT category, COUNT(*)
FROM startups
GROUP BY category
HAVING COUNT(*) > 3
ORDER BY COUNT(*) DESC;


--What is the average size of a startup in each location?
SELECT location, AVG(employees)
FROM startups
GROUP BY location;


--What is the average size of a startup in each location, with average sizes above 500?
SELECT location, AVG(employees)
FROM startups
GROUP BY location
HAVING AVG(employees) > 500;
