(define (problem BasicMoveClearWOU-four-sat) 
    (:domain BasicMoveClearWOU)
    (:objects l1 l2 l3 l4 )
    (:init
        (at l1)
        (unvisited l2) (unvisited l3) (unvisited l4) 
        (unobs l1) (unobs l3) 
        (obs l2) (obs l4)
        (connect l1 l2) (connect l2 l3) (connect l3 l4)
    )
    (:goal (and
        (at l4))
    )   
)

