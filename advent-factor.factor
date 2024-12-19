USING: ascii kernel io io.encodings.ascii ascii io.files math math.parser splitting sequences grouping ;
IN: advent-factor

: read-data ( path -- seq )
    ascii file-lines ;

: parse-numbers-line ( seq -- seq )
    [ blank? ] split-when [ "" = not ] filter [ parse-number ] map ;

: parse-2-columns ( seq -- seq )
    [ parse-numbers-line ] map [ [ first ] map ] [ [ second ] map ] bi ;
