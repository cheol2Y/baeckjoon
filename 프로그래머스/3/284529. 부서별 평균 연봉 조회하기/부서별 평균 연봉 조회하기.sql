SELECT 
    T1.DEPT_ID ,
    T1.DEPT_NAME_EN ,
    ROUND(AVG(T2.SAL),0) AS AVG_SAL
FROM HR_DEPARTMENT T1
JOIN HR_EMPLOYEES T2
    ON T1.DEPT_ID = T2.DEPT_ID
GROUP BY T1.DEPT_ID
ORDER BY AVG_SAL DESC

