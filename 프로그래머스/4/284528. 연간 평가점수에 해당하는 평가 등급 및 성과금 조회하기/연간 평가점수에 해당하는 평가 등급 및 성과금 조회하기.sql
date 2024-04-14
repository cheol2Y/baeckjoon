WITH TMP AS (
    SELECT 
        EMP_NO,
        IF(AVG(SCORE) >= 96, 'S',
            IF(AVG(SCORE) >= 90, 'A',
                IF(AVG(SCORE) >= 80, 'B', 'C')
            )
        ) AS GRADE
    FROM HR_GRADE
    GROUP BY EMP_NO
)

SELECT
    E.EMP_NO,
    E.EMP_NAME,
    TMP.GRADE,
    IF(TMP.GRADE = 'S', E.SAL * 0.2,
       IF ( TMP.GRADE = 'A', E.SAL * 0.15,
          IF ( TMP.GRADE = 'B', E.SAL * 0.1, 0
             )
          )
    ) AS BONUS
FROM HR_EMPLOYEES E
JOIN TMP ON E.EMP_NO = TMP.EMP_NO
ORDER BY EMP_NO ASC

