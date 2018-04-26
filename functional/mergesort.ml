halve([], [], []).
halve([A], [A], []).
halve([A,B|Cs], [A|X], [B|Y]) :- halve(Cs, X, Y).

merge([], Ys, Ys).
merge(Xs, [], Xs).
merge([X|Xs], [Y|Ys], M) :-
   ( X < Y -> M = [X|Ms], merge(Xs, [Y|Ys], Ms) ; M = [Y|Ms], merge([X|Xs], Ys, Ms) ).

mergeSort([], []).
mergeSort([E], [E]).
mergeSort([E1,E2|Es], SL) :- halve([E1,E2|Es], L1, L2), mergeSort(L1, SL1), mergeSort(L2, SL2), merge(SL1, SL2, SL).