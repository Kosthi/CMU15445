SELECT
    CAST(born / 10 * 10 AS TEXT) || 's' as decade,
    COUNT(DISTINCT people.person_id) AS num_directors
FROM
    people
    INNER JOIN crew on people.person_id = crew.person_id
WHERE
    born IS NOT NULL
    AND category == 'director'
    AND born >= 1900
GROUP BY
    decade
ORDER BY
    decade;
