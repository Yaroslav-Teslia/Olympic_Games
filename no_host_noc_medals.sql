SELECT *
FROM (
SELECT noc
    , COUNT(CASE WHEN medal = 'Gold' THEN 1 END) AS gold_medals
    , COUNT(CASE WHEN medal = 'Silver' THEN 1 END) AS silver_medals
    , COUNT(CASE WHEN medal = 'Bronze' THEN 1 END) AS bronze_medals
    ,  AS total_medals
    , COUNT(DISTINCT athlete_name) AS total_participants
    , ROUND(COUNT(CASE WHEN medal != 'No medal' THEN 1 END) * 100.0 / COUNT(DISTINCT athlete_name), 2) AS medal_percentage
FROM public.olympics_medals
WHERE host_noc != noc
GROUP BY noc
)
WHERE  noc = 'NED'
	OR noc = 'BEL' 
	OR noc = 'GRE'
	OR noc = 'ESP'
	OR noc = 'CHN'
	OR noc = 'GER'
	OR noc = 'FIN' 
	OR noc = 'GBR' 
	OR noc = 'AUS'
	OR noc = 'MEX'
	OR noc = 'CAN'
	OR noc = 'URS'
	OR noc = 'GDR'
	OR noc = 'FRA'
	OR noc = 'BRA' 
	OR noc = 'ITA'
	OR noc = 'KOR'
	OR noc = 'SWE'
	OR noc = 'JPN'
	OR noc = 'USA'

