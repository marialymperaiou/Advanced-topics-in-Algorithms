running_sum2([], [], _).
running_sum2([X|Tail1],[Y|Tail2],N):-
    (var(X) -> X is Y-N, running_sum2(Tail1,Tail2,Y);
    Y is X+N,
    running_sum2(Tail1,Tail2,Y)).
running_sum([],[]).
running_sum(L,S):-
    running_sum2(L,S,0).
