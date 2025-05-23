SELECT * FROM athletes;

SELECT * FROM coaches;

SELECT * FROM entriesgender;

SELECT * FROM medals;

SELECT * FROM teams;

-- Count the number of atheletes from each country:
SELECT Country, COUNT(*) AS TotalAthletes
FROM athletes
GROUP BY Country
ORDER BY TotalAthletes DESC;

-- Count the total number of medals won by each country
SELECT TeamCountry,
SUM(Gold) Total_Gold,
SUM(Silver) Total_Silver,
SUM(Bronze) Total_Bronze
FROM medals
GROUP BY TeamCountry
ORDER BY Total_Gold DESC;

-- calculate the avg number of enteries by gender for each discipline
SELECT Discipline,
AVG(Female) Avg_Female,
AVG(Male) Avg_Male
FROM entriesgender
GROUP BY Discipline;

-- calculate the avg number of enteries by gender for Archery
SELECT Discipline,
AVG(Female) Avg_Female,
AVG(Male) Avg_Male
FROM entriesgender
WHERE Discipline = 'Archery'
GROUP BY Discipline;