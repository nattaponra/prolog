solve_puzzle(Puzzle,Solution) :-
 	structure(Puzzle,Structure),
	clues(Puzzle,Structure,Clues),
     	solve(Clues),
	queries(Puzzle,Structure,Queries,Solution),
    	solve(Queries).

solve([Clue|Clues]) :- Clue, solve(Clues).
solve([]).

structure(threeMen,[friend(N1,C1,S1),friend(N2,C2,S2),friend(N3,C3,S3)]).

clues(threeMen,Friends,
             [ ( did_better(Man1Clue1,Man2Clue1,Friends), hasName(Man1Clue1,michael), 
         	  sport(Man1Clue1,basketball), nationality(Man2Clue1,american) ),
       	( did_better(Man1Clue2,Man2Clue2,Friends), hasName(Man1Clue2,simon), 
         	  nationality(Man1Clue2,israeli), sport(Man2Clue2,tennis) ),
	( first(Friends,ManClue3), sport(ManClue3,cricket) )
     ] ).
queries(threeMen,Friends,
	[ member(Q1,Friends), hasName(Q1,Name), nationality(Q1,australian),
       	member(Q2,Friends), hasName(Q2,richard), sport(Q2,Sport)
	],
	[['The Australian is ',Name],['Richard plays ',Sport]] ).

did_better(A,B,[A,B,C]).
did_better(A,C,[A,B,C]).
did_better(B,C,[A,B,C]).

hasName(friend(A,B,C),A).
nationality(friend(A,B,C),B).
sport(friend(A,B,C),C).
first([X|Xs],X).
%member(X,[X|_]).
%member(X,[_|Ys]) :- member(X,Ys).


run :- solve_puzzle(threeMen,Sol), write(Sol).
