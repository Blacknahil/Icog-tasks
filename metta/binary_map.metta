(= (addTwo $a $b) (+ $a $b)); binary function one: adding two numbers
(= (multiplyTwo $a $b) (* $a $b))
; Base case: empty list returns empty list
(= (bmap $f $c ()) ())

; Recursive case: apply $f to (element, constant), then prepend to the mapped tail
(= (bmap $f $c (:: $x $xs)) 
   (:: ($f $x $c) ; compute the binary function on the first element x of the list 
       (bmap $f $c $xs))); recursively call the bmap function on the rest of the elements of the list

! (bmap addTwo 10 (:: 2 (:: 3 (:: 4 ()))))
! (bmap multiplyTwo 10 (:: 2 (:: 3 (:: 4 ()))))