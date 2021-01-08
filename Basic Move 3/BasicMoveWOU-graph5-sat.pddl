(define (problem BasicMoveWOU-graph5-sat) 
    (:domain BasicMoveWOU)
    (:objects l1 l2 l3 l4 l5)

    (:init
        (at l1)
        (unvisited l2) (unvisited l3) (unvisited l4) (unvisited l5)
        (unobs l1) (unobs l3) (unobs l5) 
        (connect l1 l2) (connect l2 l3) (connect l3 l4) (connect l4 l5) 
        (connect l1 l3) (connect l3 l5)
    )
    (:goal (and
        (at l5))
    )   
)

