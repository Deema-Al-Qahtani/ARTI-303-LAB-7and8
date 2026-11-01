% ----------------------------------------------------
% Task 1: deleteElement(X, List, Result)
% ----------------------------------------------------

deleteElement(_, [], []).

deleteElement(X, [X|T], Result) :-deleteElement(X, T, Result).

deleteElement(X, [Y|T], [Y|ResultTail]) :- X \= Y, deleteElement(X, T, ResultTail).

% ----------------------------------------------------
% Task 1 - Output.
% ----------------------------------------------------

/* ?- deleteElement(1, [1,2,1,4,3,4,1,1,1,3,4,2,1,1,1], List).
List = [2, 4, 3, 4, 3, 4, 2] .

 ?- deleteElement(3, [1,2,1,4,3,4,1,1,1,3,4,2,1,1,1], List).
List = [1, 2, 1, 4, 4, 1, 1, 1, 4|…] . */

% ----------------------------------------------------
% Task 2: add_at_the_end(X, List, Result) - Method 1
% ----------------------------------------------------

add_at_the_end(X, [], [X]).

add_at_the_end(X, [H|T], [H|NewTail]) :- add_at_the_end(X, T, NewTail).

% ----------------------------------------------------
% Task 2: add_at_the_end(X, List, Result) - Method 2
% ----------------------------------------------------

add_at_the_end(X, List, Result) :- append(List, [X], Result).

% ----------------------------------------------------
% Task 2 - Output.
% ----------------------------------------------------

/*  ?- add_at_the_end(5, [1,2,3,4], List).
List = [1, 2, 3, 4, 5] .

 ?- add_at_the_end(d, [a,b,c], List).
List = [a, b, c, d] . */