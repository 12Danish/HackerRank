/*
This query is For Mysql
 */
SELECT
    N,
    CASE
        WHEN P IS NULL THEN 'Root'
        WHEN N IN (
            SELECT
                a.N
            FROM
                BST a
                LEFT JOIN BST b ON a.N = b.P
            WHERE
                b.P is NULL
        ) THEN 'Leaf'
        ELSE 'Inner'
    END AS pos
FROM
    BST
ORDER BY
    N;