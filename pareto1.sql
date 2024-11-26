WITH ranked_noc AS (
    SELECT 
        noc,
        COUNT(CASE WHEN medal <> 'No medal' THEN 1 END) AS count_medal,
        PERCENT_RANK() OVER (ORDER BY COUNT(CASE WHEN medal <> 'No medal' THEN 1 END) DESC) AS rank
    FROM public.olympics_medals
    GROUP BY noc
),
top_20_percent AS (
    SELECT SUM(count_medal) AS top_20_medals
    FROM ranked_noc
    WHERE rank <= 0.2
)
SELECT 
    top_20_percent.top_20_medals AS top_20_medals,
    (SELECT COUNT(*) FROM public.olympics_medals WHERE medal <> 'No medal') AS total_medals,
    (top_20_percent.top_20_medals * 100.0 / (SELECT COUNT(*) FROM public.olympics_medals WHERE medal <> 'No medal')) AS percentage_of_total
FROM top_20_percent;

