WITH batman_actor AS (
    SELECT
        DISTINCT people.person_id as id,
        name
    FROM
        people
        INNER JOIN crew on people.person_id == crew.person_id
    WHERE
        characters LIKE '%"Batman"%'
        AND category == 'actor'
)
SELECT
    name,
    ROUND(AVG(rating), 2) as avg_rating
FROM
    ratings
    INNER JOIN crew on ratings.title_id = crew.title_id
    INNER JOIN batman_actor on crew.person_id = batman_actor.id
GROUP BY
    person_id
ORDER BY
    avg_rating DESC
LIMIT 10;
