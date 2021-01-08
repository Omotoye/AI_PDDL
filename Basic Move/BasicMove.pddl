(define (domain BasicMove)
    (:requirements :strips )

    (:predicates
        (at ?l)
        (connect ?l1 ?l2)
        (disconnect ?l1 ?l2)
    )

    (:action move
        :parameters (?from ?to)
        :precondition (and (connect ?from ?to) (at ?from))
        :effect (and (at ?to) (not(at ?from)))
    )

    (:action disconn
        :parameters (?from ?to)
        :precondition (and (connect ?from ?to))
        :effect (and (disconnect ?from ?to)  (not(connect ?from ?to)))
    )
    
)