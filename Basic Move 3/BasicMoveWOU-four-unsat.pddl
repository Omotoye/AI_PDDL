(define (problem BasicMoveWOU-four-unsat) 
    (:domain BasicMoveWOU )
    (:objects l1 l2 l3 l4)

    (:init
        (at l1)
        (unvisited l2) (unvisited l3) (unvisited l4)
        (unobs l1) (unobs l3) 
        (connect l1 l2) (connect l2 l3) (connect l3 l4)
    )
    (:goal (and
        (at l4))
    )   
)

