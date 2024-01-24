-- 코드를 입력하세요
SELECT CONCAT('/home/grep/src/', board_id, '/', file_id, file_name, file_ext) AS FILE_PATH
FROM USED_GOODS_FILE
WHERE board_id = (
    SELECT BOARD_ID
    FROM USED_GOODS_BOARD
    ORDER BY VIEWS DESC
    limit 1
)
ORDER BY file_id DESC;

# select * 
# from used_goods_file
# where board_id = 
# (select BOARD_ID
# from USED_GOODS_BOARD
# order by VIEWS desc
# limit 1)
# order by file_id desc;



# 조회수가 가장 높은 중고거래 게시물
# 이것에 첨부 파일 경로를 조회
# 내림차순