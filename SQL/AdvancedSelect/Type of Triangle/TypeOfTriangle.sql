SELECT
    CASE
        WHEN NOT (A + B > C) THEN 'Not A Triangle'
        WHEN A = B
        AND B = C THEN 'Equilateral'
        WHEN (
            A = B
            AND B != C
        )
        OR (
            B = C
            AND C != A
        )
        OR (
            A = C
            AND A != B
        ) THEN 'Isosceles'
        WHEN A != B
        AND B != C
        AND A != C THEN 'Scalene'
    END AS triangle_type
FROM
    TRIANGLES;