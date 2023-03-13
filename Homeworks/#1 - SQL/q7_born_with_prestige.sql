SELECT
    COUNT(DISTINCT people.person_id)
FROM
    people
    INNER JOIN crew on crew.person_id = people.person_id
WHERE
    born in (
        SELECT
            premiered
        FROM
            titles
        WHERE
            primary_title == 'The Prestige'
    )
    AND (category == 'actor'
        OR category == 'actress'
    );
