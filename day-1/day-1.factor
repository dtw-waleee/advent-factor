! Copyright (C) 2024 Fredrik Wahqvist
USING: kernel math sequences advent-factor ;
IN: day-1

CONSTANT: input "resource:/work/advent-factor/day-1-input.txt"

! ! PART 1

: solution-part1 ( -- )
    input read-data parse-2-columns [ sort ] bi@ [ - abs ] 2map sum ;

! explorations
! { { 1 2 } { 3 4 } } [ [ first ] map ] [ [ second ] map ] bi
! CORRECT, part 1
! "resource:work/advent-factor/day-1/day-1-input.txt" ascii file-lines [ [ blank? ] split-when [ "" = not ] filter [ parse-number ] map ] map [ [ first ] map ] [ [ second ] map ] bi [ sort ] bi@ [ - abs ] 2map sum

! ! PART 2
