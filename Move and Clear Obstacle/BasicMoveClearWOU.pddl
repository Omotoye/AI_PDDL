(define (domain BasicMoveClearWOU)

    (:requirements :strips)

    (:predicates 
        (LOCATION ?l)
        (at ?l)
        (connect ?l1 ?l2)
        (unobs ?l)
        (unvisited ?l)
        (obs ?l)
    )

    (:action move
        :parameters (?l1 ?l2)
        :precondition (and (unobs ?l2) (at ?l1) (connect ?l1 ?l2) (unvisited ?l2))
        :effect (and (at ?l2) (not (at ?l1)) (not (unvisited ?l2)))
    )

    (:action clear-obs
        :parameters (?l1 ?l2)
        :precondition (and (obs ?l2) (connect ?l1 ?l2) (unvisited ?l2) (at ?l1))
        :effect (and (unobs ?l2) (not (obs ?l2)))
    )
    
    

)