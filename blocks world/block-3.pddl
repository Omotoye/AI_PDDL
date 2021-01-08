(define 
    (problem block-3) 
    (:domain blocks-world)
    (:objects a b c )


    (:init
    ; todo: put the initial state's facts and numeric values here
    ; tower of blocks: a, b, c
        (on-table a)
        (on b a)
        (on c b)
        (clear c)
        (arm-empty)
    )

    (:goal (and
    ; todo: put the goal condition here
        (on-table c)
        (on b c)
        (on a b)
        (clear a)
        (arm-empty)
    ))

)
