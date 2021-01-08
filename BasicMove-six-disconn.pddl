(define (problem BasicMove-six-disconn) 
    (:domain BasicMove)
    (:objects l1 l2 l3 l4 l5 l6)

    (:init
        (at l1)
        (connect l1 l2) (connect l2 l3) (connect l3 l4) (disconnect l4 l5) (connect l5 l6)
    )

    (:goal (and
        (at l3)
    ))
)
