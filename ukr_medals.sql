SELECT 
      COUNT(CASE WHEN medal = 'Gold' THEN 1 END) AS Gold_Medals,
      COUNT(CASE WHEN medal = 'Silver' THEN 1 END) AS Silver_Medals,
      COUNT(CASE WHEN medal = 'Bronze' THEN 1 END) AS Bronze_Medals,
      COUNT(CASE WHEN medal != 'No medal' THEN 1 END) AS Total_Medals
FROM public.olympics_medals
WHERE noc = 'UKR' 
GROUP BY noc
ORDER BY Total_Medals DESC, Gold_Medals DESC, Silver_Medals DESC, Bronze_Medals DESC


SELECT 
    athlete_name AS Athlete,
    COUNT(*) AS Total_Medals,
	COUNT(CASE WHEN medal = 'Gold' THEN 1 END) AS Gold_Medals,
    COUNT(CASE WHEN medal = 'Silver' THEN 1 END) AS Silver_Medals,
    COUNT(CASE WHEN medal = 'Bronze' THEN 1 END) AS Bronze_Medals
FROM public.olympics_medals
WHERE noc = 'UKR' AND medal <> 'No medal'
GROUP BY athlete_name
ORDER BY Total_Medals DESC, Gold_Medals DESC, Silver_Medals DESC, Bronze_Medals DESC
LIMIT 9



SELECT 
    sport AS Sport,
    COUNT(*) AS Total_Medals,
	COUNT(CASE WHEN medal = 'Gold' THEN 1 END) AS Gold_Medals,
    COUNT(CASE WHEN medal = 'Silver' THEN 1 END) AS Silver_Medals,
    COUNT(CASE WHEN medal = 'Bronze' THEN 1 END) AS Bronze_Medals
FROM public.olympics_medals
WHERE noc = 'UKR' AND medal <> 'No medal'
GROUP BY sport
ORDER BY Total_Medals DESC, Gold_Medals DESC, Silver_Medals DESC, Bronze_Medals DESC
LIMIT 10


SELECT 
    sex AS Gender,
    COUNT(*) AS Total_Medals
FROM public.olympics_medals
WHERE noc = 'UKR' AND medal <> 'No medal'
GROUP BY sex



SELECT 
    sex AS Gender,
    COUNT(DISTINCT athlete_name) AS Total_Participants
FROM public.olympics_medals
WHERE noc = 'UKR'
GROUP BY sex













