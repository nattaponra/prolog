natural_number(0).
natural_number(s(X)) :- natural_number(X).

pl(0,X,X) :- natural_number(X).
pl(s(X),Y,s(Z)) :- pl(X,Y,Z).

times(0,X,0).
times(s(X),Y,Z) :- times(X,Y,W), pl(W,Y,Z).