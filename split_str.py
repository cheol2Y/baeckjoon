# - 입력:    
# > As the country became embroiled in a domestic crisis, the first government was dislodged and succeeded by several different administrations. Bolikango served as Deputy Prime Minister in one of the new governments before a partial state of stability was reestablished in 1961. He mediated between warring factions in the Congo and briefly served once again as Deputy Prime Minister in 1962 before returning to the parliamentary opposition. After Joseph-Desire Mobutu took power in 1965, Bolikango became a minister in his government. Mobutu soon dismissed him but appointed him to the political bureau of the Mouvement Populaire de la Revolution. Bolikango left the bureau in 1970. He left Parliament in 1975 and died seven years later. His grandson created the Jean Bolikango Foundation in his memory to promote social progress. The President of the Congo posthumously awarded Bolikango a medal in 2005 for his long career in public service.

# - 출력:
#   - 구분자(Separator)는 마침표 '.', 쉼표 ',', 공백 ' ' 이다.
#   - 가장 많이 나온 순서대로 단어 10개와 그 단어의 빈도를 출력한다.
#   - 빈도가 같은 단어들 사이의 순서는 무시한다.
# > { in : 12, the: 10, Blikango: 5 ... }

from collections import Counter

char='As the country became embroiled in a domestic crisis, the first government was dislodged and succeeded by several different administrations. Bolikango served as Deputy Prime Minister in one of the new governments before a partial state of stability was reestablished in 1961. He mediated between warring factions in the Congo and briefly served once again as Deputy Prime Minister in 1962 before returning to the parliamentary opposition. After Joseph-Desire Mobutu took power in 1965, Bolikango became a minister in his government. Mobutu soon dismissed him but appointed him to the political bureau of the Mouvement Populaire de la Revolution. Bolikango left the bureau in 1970. He left Parliament in 1975 and died seven years later. His grandson created the Jean Bolikango Foundation in his memory to promote social progress. The President of the Congo posthumously awarded Bolikango a medal in 2005 for his long career in public service.'
def char_spliter(char):
    return char.replace(' ','.').replace(',','.').replace('..','.').split('.')

def get_large_N_char(N):
    char_split=char_spliter(char)
    count_char=Counter(char_split)
    large_10_char=count_char.most_common(n=N)
    return large_10_char
get_large_N_char(10)
