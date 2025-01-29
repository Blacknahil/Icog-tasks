; Swap adjacent elements (one pass)
(= (swap ()) ()) ;Base case: empty list remains empty
(= (swap (:: $x ())) (:: $x ())) ; ; Base case: single element is already sorted
(= (swap (:: $x (:: $y $xs)))
   (if (> $x $y) ; If x is greater than y, swap them
       (:: $y (swap (:: $x $xs)))
       (:: $x (swap (:: $y $xs))))) ; Keep order and continue sorting

; Calculate list length
(= (length ()) 0)
(= (length (:: $x $xs)) (+ 1 (length $xs))) ; Count elements recursively

; Outer loop: run swap $n times
;(= (outerBubbleSort $list 0) $list)
(= (outerBubbleSort (:: $x $xs) $n)
    (if 
    (== $n 0) ; Base case: when n is 0, return the list
    (:: $x $xs)
    (outerBubbleSort (swap (:: $x $xs)) (- $n 1)) ; Recursively call swap n times
    )
)
   

; Main function: calls outerBubbleSort with the length of the list
(= (bubbleSort ()) ())
(= (bubbleSort (:: $x ())) (:: $x ()))
(=(bubbleSort (:: $x $xs))
   (
    (outerBubbleSort (:: $x $xs)
    (length (:: $x $xs)))
    )
)

; Test case
;!(length (:: 3 (:: 2 (:: 5 (:: 0())))))
!(bubbleSort (:: 3 (:: 2 (:: 5 (:: 0 ())))) )
;!(outerBubbleSort (:: 2 (::5 ())) 2)