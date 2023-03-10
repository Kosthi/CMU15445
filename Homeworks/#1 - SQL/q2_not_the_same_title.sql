SELECT premiered, primary_title || ' (' || original_title || ')'
FROM titles
WHERE genres LIKE '%Action%'
ORDER BY premiered DESC
LIMIT 10;
