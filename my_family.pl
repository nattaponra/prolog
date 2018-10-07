

grandparent(X,Y):-
parent(X,Z),
parent(Z,Y).

brethren(X,Y):-
parent(Z,X),
parent(Z,Y).

parent(nan,boo).
parent(boo,art).
parent(boo,add).


