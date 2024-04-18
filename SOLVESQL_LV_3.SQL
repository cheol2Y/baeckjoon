-- 복수 국적 메달 수상한 선수 찾기
WITH YEAR_TAB AS (
    SELECT ID, year
    FROM games
    WHERE YEAR >= 2000
)
SELECT T2.NAME
FROM records T1
JOIN athletes T2 ON T1.athlete_id = T2.ID
WHERE (MEDAL = 'Bronze' OR MEDAL = 'Silver' OR MEDAL = 'Gold')
    AND GAME_ID IN (SELECT ID FROM YEAR_TAB)
GROUP BY T1.athlete_id, T2.NAME
HAVING COUNT(DISTINCT T1.TEAM_ID) >= 2
ORDER BY T2.NAME;
