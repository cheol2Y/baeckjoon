SELECT 
    ANIMAL_TYPE,
    COUNT(DISTINCT ANIMAL_ID)
FROM ANIMAL_INS
GROUP BY ANIMAL_TYPE