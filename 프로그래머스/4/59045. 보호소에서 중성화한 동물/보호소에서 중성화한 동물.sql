# -- 코드를 입력하세요
# select t1.name, t1.animal_type, t1.animal_id
# from animal_ins t1
# join animal_outs t2
# on t1.animal_id = t2.animal_id
# where t1.SEX_UPON_INTAKE like '%Intact%'
# and (t2.SEX_UPON_outcome like '%Neutered%'OR t2.SEX_UPON_outcome like '%Spayed%')
# order by t1.animal_id

SELECT t2.animal_id, t2.animal_type, t2.name
FROM animal_ins t1
JOIN animal_outs t2 ON t1.animal_id = t2.animal_id
WHERE t1.SEX_UPON_INTAKE LIKE '%Intact%'
AND (t2.SEX_UPON_OUTCOME LIKE '%Spayed%' OR t2.SEX_UPON_OUTCOME LIKE '%Neutered%')
GROUP BY t2.animal_id
ORDER BY t2.animal_id ASC;


# 보호소 들어올떈 중성화 안했지만 나갈땐 중성화 한 친구
# 아이디 생물종 이름