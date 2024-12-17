! Copyright (C) 2024 Fredrik Wahqvist
USING: kernel math sequences ;
IN: day-1

: total-sum ( x x -- n ) [ sum ] [ sum ] bi* - ;
