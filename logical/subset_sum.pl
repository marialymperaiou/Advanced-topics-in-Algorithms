subset([],[]).
subset([X|Settail],[Y|Subtail]):-
	Y is X,
	subset(Settail,Subtail).
subset([_|Settail],Subset):-
	subset(Settail,Subset).

sum([],0).
sum([X|Tail],N):-
	sum(Tail,M),
	N is (X + M).

subset_sum([],0,[]).
subset_sum(Set, Sum, Subset):-
	subset(Set,Subset),
	sum(Subset,Sum).
