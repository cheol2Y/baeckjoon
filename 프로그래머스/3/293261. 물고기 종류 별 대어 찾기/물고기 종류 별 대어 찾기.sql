SELECT fi.ID, fni.FISH_NAME, fi.LENGTH
FROM (
    SELECT FISH_TYPE, MAX(LENGTH) AS MAX_LENGTH
    FROM FISH_INFO
    WHERE LENGTH IS NOT NULL
    GROUP BY FISH_TYPE
) AS max_lengths
JOIN FISH_INFO fi ON max_lengths.FISH_TYPE = fi.FISH_TYPE AND max_lengths.MAX_LENGTH = fi.LENGTH
JOIN FISH_NAME_INFO fni ON fi.FISH_TYPE = fni.FISH_TYPE
ORDER BY fi.ID;
