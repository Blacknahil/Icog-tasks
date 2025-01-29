(= (recurse $limit $n1 $n2)
    (if (> $n2 $limit)
        0
        (if
            (== (% $n2 2) 0)
            (+ $n2 (recurse $limit (+ $n1 $n2) $n1))
            (recurse $limit (+ $n1 $n2) $n1)
        )
)
)
(= (fib $num) (recurse $num 1 0))

! (fib 100) ; 44
 ;0 1 1 2 3 5 8 13 21 34 55 ....