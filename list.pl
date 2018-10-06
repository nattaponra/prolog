mem(X,[X|_]).
mem(X,[_|Y]) :- mem(X,Y).

app([],L,L).
app([A|L1],L2,[A|L3]) :- app(L1,L2,L3).

