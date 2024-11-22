ALTER TABLE public.olympics_medals
ADD COLUMN host_noc TEXT;

UPDATE public.olympics_medals
SET host_noc =
	CASE   	WHEN city = 'Amsterdam' 		THEN 'NED' 
		WHEN city = 'Antwerpen' 		THEN 'BEL' 
		WHEN city = 'Athina' 			THEN 'GRE' 
		WHEN city = 'Barcelona' 		THEN 'ESP' 
		WHEN city = 'Beijing' 			THEN 'CHN' 
		WHEN city = 'Berlin' 			THEN 'GER' 
		WHEN city = 'Helsinki' 			THEN 'FIN' 
		WHEN city = 'London' 			THEN 'GBR' 
		WHEN city = 'Melbourne' 		THEN 'AUS' 
		WHEN city = 'Mexico City' 		THEN 'MEX' 
		WHEN city = 'Montreal' 			THEN 'CAN' 
		WHEN city = 'Moskva' 			THEN 'URS' 
		WHEN city = 'Munich' 			THEN 'GDR' 
		WHEN city = 'Paris' 			THEN 'FRA' 
		WHEN city = 'Rio de Janeiro' 		THEN 'BRA' 
		WHEN city = 'Roma' 			THEN 'ITA' 
		WHEN city = 'Seoul' 			THEN 'KOR' 
		WHEN city = 'Stockholm' 		THEN 'SWE' 
		WHEN city = 'Sydney' 			THEN 'AUS' 
		WHEN city = 'Tokyo' 			THEN 'JPN' 
		ELSE 'USA'						
	END;

