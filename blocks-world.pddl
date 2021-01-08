(define (domain blocks-world)
    (:requirements :strips )
    ; no negative preconditions 
    ; no negative goals

    (:predicates 
        ; We have just blocks so we do not need predicates for "types"
        ; clear: a block has nothing on top of it
        ; on-table: a block is on the table
        ; arm-empty: the gripper is not holding any block
        ; on(x, y): block x is stacked on top of block y
        (clear ?x)
        (on-table ?x)
        (arm-empty)
        (holding ?x)
        (on ?x ?y)
    )

    ; An action to pickup a block (from the table)
    (:action pick-up
        :parameters (?x)
        :precondition (and (clear ?x) (on-table ?x) (arm-empty)) 
        :effect (and (holding ?x) (not (clear ?x) ) (not (on-table ?x))
            (not (arm-empty)))
    )

    ; An action to put down a block (to the table)
    (:action putdown 
        :parameters (?x)
        :precondition (and (holding ?x) )
        :effect (and (arm-empty) (clear ?x) (on-table ?x) (not (holding ?x)))
    )

    ; An action to pickup a block (from another block)
    (:action unstack
        :parameters (?x ?y)
        :precondition (and (clear ?x) (on ?x ?y) (arm-empty)) 
        :effect (and (clear ?y) (holding ?x) (not (clear ?x)) 
            (not(on ?x ?y)))
    )

    ; An action to stack a block on top of another 
    (:action stack
        :parameters (?x ?y)
        :precondition (and (clear ?y) (holding ?x))
        :effect (and (not (holding ?x)) (not(clear ?y)) (clear ?x)
            (arm-empty) (on ?x ?y) )
    )

)