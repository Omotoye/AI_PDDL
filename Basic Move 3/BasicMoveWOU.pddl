(define (domain BasicMoveWOU)

    (:requirements :strips)

    (:predicates 
        (LOCATION ?l)
        (at ?l)
        (connect ?l1 ?l2)
        (unobs ?l)
        (unvisited ?l)
    )

    (:action move
        :parameters (?l1 ?l2)
        :precondition (and (unobs ?l2) (at ?l1) (connect ?l1 ?l2) (unvisited ?l2))
        :effect (and (at ?l2) (not (at ?l1)) (not (unvisited ?l2)))
    )
    

)