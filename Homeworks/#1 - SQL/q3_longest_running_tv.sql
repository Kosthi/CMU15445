SELECT primary_title, IFNULL(ended, 2023) - premiered AS t
FROM titles
WHERE type = 'tvSeries' AND premiered IS NOT NULL
ORDER BY t DESC, primary_title
LIMIT 20;
