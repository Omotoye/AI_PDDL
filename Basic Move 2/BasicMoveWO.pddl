(define (domain BasicMoveWO)
    (:requirements :strips )
    (:predicates
        (Location ?l)
        (at ?l)
        (connect ?l1 ?l2)
        (unobs ?l)
    )

    (:action move
        :parameters (?l1 ?l2)
        :precondition (and (at ?l1)(connect ?l1 ?l2) (unobs ?l2))
        :effect (and (not (at ?l1)) (at ?l2))
    )
)