(include "#.scm")

(check-same-behavior ("" "##" "~~lib/_prim-u32vector#.scm")

;; Gambit

(append-u32vectors '(#u32(1) #u32(2) #u32(3)))
(list->u32vector '(1 2 3))
(u32vector-length (make-u32vector 5)) (make-u32vector 5 9)
(subu32vector '#u32(1 2 3 4 5) 1 3)

(let ((x (u32vector 1 2 3 4 5))) (subu32vector-fill! x 1 3 99) x)
(let ((x (u32vector 1 2 3 4)) (y (u32vector 6 7 8 9 0))) (subu32vector-move! x 2 3 y 1) y)
(u32vector) (u32vector 1) (u32vector 1 2) (u32vector 1 2 3)
(u32vector->list '#u32(1 2 3 4 5))
(u32vector-append) (u32vector-append '#u32(1)) (u32vector-append '#u32(1) '#u32(2)) (u32vector-append '#u32(1) '#u32(2) '#u32(3))
(u32vector-copy '#u32(1 2 3 4 5))
(u32vector-copy '#u32(1 2 3 4 5) 1)
(u32vector-copy '#u32(1 2 3 4 5) 1 3)
(let ((x (u32vector 1 2 3 4)) (y (u32vector 6 7 8 9 0))) (u32vector-copy! y 1 x) y)
(let ((x (u32vector 1 2 3 4)) (y (u32vector 6 7 8 9 0))) (u32vector-copy! y 1 x 2) y)
(let ((x (u32vector 1 2 3 4)) (y (u32vector 6 7 8 9 0))) (u32vector-copy! y 1 x 2 3) y)
(let ((x (u32vector 1 2 3 4 5))) (u32vector-fill! x 99) x)
(let ((x (u32vector 1 2 3 4 5))) (u32vector-fill! x 99 1) x)
(let ((x (u32vector 1 2 3 4 5))) (u32vector-fill! x 99 1 3) x)
(u32vector-length '#u32(1 2 3 4 5))
(u32vector-ref '#u32(1 2 3 4 5) 2)
(u32vector-set '#u32(1 2 3 4 5) 2 99)
(let ((x (u32vector 1 2 3 4 5))) (u32vector-set! x 2 99) x)
(let ((x (u32vector 1 2 3 4 5))) (u32vector-shrink! x 3) x)
(u32vector? '#u32(1 2 3)) (u32vector? 123)
)