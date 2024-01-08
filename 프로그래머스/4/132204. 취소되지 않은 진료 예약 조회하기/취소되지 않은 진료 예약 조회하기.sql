-- 코드를 입력하세요
select t1.APNT_NO, t3.PT_NAME, t1.PT_NO, t1.MCDP_CD,  t2.DR_NAME,t1.APNT_YMD
from appointment t1
join DOCTOR t2
on t1.MDDR_ID = t2.DR_ID
join PATIENT t3
on t1.PT_NO = t3.PT_NO
where t1.APNT_YMD like '2022-04-13%'
and t1.APNT_CNCL_YN = 'N'
and t1.MCDP_CD='CS'
order by t1.APNT_YMD

# (select t1.PT_NO, t1.APNT_YMD, t1.PT_NO, t1.MDDR_ID, t2.DR_NAME
# from appointment t1
# join DOCTOR t2
# on t1.MCDP_CD = t2.MCDP_CD
# where APNT_YMD >= '2022-04-13' 
# and APNT_CNCL_YN = 'N')

# 진료예약번호, 환자이름, 환자번호, 진료과코드, 의사이름, 진료예약일시