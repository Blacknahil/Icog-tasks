 ; Recursive case: check if (n-1) is a multiple of 3 or 5, then add to the sum
(= (sum $n)
    (if (> $n 0)
        (+ ; if n is >= 0
            (if (
                    or
                    (== 0 (% (- $n 1) 3)) ; it is divisible by 3
                    (== 0 (% (- $n 1) 5)) ; it is divisible by 5

                ) (- $n 1) ; if one condition is true add n
            0) ; if both conditions are false add 0
        (sum (- $n 1))

    )
0) ; if n is lessthan or equal to 0
)

 ; Example usage:
! (sum 10)