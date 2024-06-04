WITH
    MAX_LAT AS (
        SELECT
            MAX(LAT_N) AS MALN
        FROM
            STATION
    ),
    MAX_LONG AS (
        SELECT
            MAX(LONG_W) AS MLW
        FROM
            STATION
    ),
    MIN_LAT AS (
        SELECT
            MIN(LAT_N) AS MILN
        FROM
            STATION
    ),
    MIN_LONG AS (
        SELECT
            MIN(LONG_W) AS MIW
        FROM
            STATION
    )
SELECT
    ROUND(
        ABS(MAX_LAT.MALN - MIN_LAT.MILN) + ABS(MAX_LONG.MLW - MIN_LONG.MIW),
        4
    )
FROM
    MAX_LAT,
    MAX_LONG,
    MIN_LAT,
    MIN_LONG;