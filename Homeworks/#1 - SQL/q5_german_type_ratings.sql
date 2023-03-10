SELECT
    type as title_type,
    ROUND(AVG(rating), 2) as avg_rating,
    MIN(rating) as min_rating,
    MAX(rating) as max_rating
FROM
    akas
    INNER JOIN titles on akas.title_id = titles.title_id
    INNER JOIN ratings on akas.title_id = ratings.title_id
WHERE
    language == 'de'
    AND (types == 'imdbDisplay' or types == 'original')
GROUP BY
    type
ORDER BY
    avg_rating;
