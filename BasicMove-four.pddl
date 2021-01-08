(define (problem BasicMove-four) 
    (:domain BasicMove)
    (:objects l1 l2 l3 l4)

    (:init
        (at l1)
        (connect l1 l2) (connect l2 l3) (connect l3 l4)
    )

    (:goal (and
        (at l4)
    ))
)
