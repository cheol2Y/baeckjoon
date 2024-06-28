from collections import defaultdict

def solution(genres, plays):
    # 장르별 총 재생 횟수와 노래 정보를 저장할 딕셔너리 생성
    genre_total_plays = defaultdict(int)
    genre_songs = defaultdict(list)
    
    # 데이터 구조화
    for i, (genre, play) in enumerate(zip(genres, plays)):
        genre_total_plays[genre] += play
        genre_songs[genre].append((i, play))
    
    # 장르별 총 재생 횟수로 장르 정렬
    sorted_genres = sorted(genre_total_plays.items(), key=lambda x: x[1], reverse=True)
    
    answer = []
    # 장르별로 노래 선택
    for genre, _ in sorted_genres:
        # 해당 장르의 노래들을 재생 횟수로 정렬 (재생 횟수가 같으면 고유 번호가 낮은 순)
        sorted_songs = sorted(genre_songs[genre], key=lambda x: (-x[1], x[0]))
        # 상위 2개 (또는 1개) 노래의 고유 번호를 결과에 추가
        answer.extend([song[0] for song in sorted_songs[:2]])
    
    return answer
