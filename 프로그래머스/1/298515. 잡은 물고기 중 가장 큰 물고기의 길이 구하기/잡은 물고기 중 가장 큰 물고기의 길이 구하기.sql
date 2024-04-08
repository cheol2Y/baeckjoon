select concat(format(length,2) , 'cm') as max_length
from fish_info
order by length desc
limit 1;