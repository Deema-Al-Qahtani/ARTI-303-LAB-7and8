% ----------------------------------------------------
% Shopping Program - shopping.pl
% ----------------------------------------------------

start :- InitialList = [coffee, milk, chocolate, apple, juice], menu(InitialList).

menu(List) :-
    nl, write('*** SHOPPING LIST ***'), nl,
    write('d. display all items.'), nl,
    write('a. Add an item to the list.'), nl,
    write('e. exit.'), nl, nl,
    write('ENTER YOUR CHOICE: '),
    read(Choice),
    process(Choice, List).

process(d, List) :- nl, display_items(List), nl, menu(List).

process(a, List) :-
    nl, write('enter the item you want to add it : '),
    read(NewItem),
    write('The item has been added'), nl,
    menu([NewItem|List]).

process(e, _) :- nl, write('Goodbye!'), nl.

process(_, List) :- nl, write('Invalid choice, please try again.'), nl, menu(List).

display_items([]).

display_items([H|T]) :- write(H), nl, display_items(T).

% ----------------------------------------------------
% shopping.pl - Output.
% ----------------------------------------------------
/* ?- start.

*** SHOPPING LIST ***
d. display all items.
a. Add an item to the list.
e. exit.

ENTER YOUR CHOICE: d.

coffee
milk
chocolate
apple
juice

*** SHOPPING LIST ***
d. display all items.
a. Add an item to the list.
e. exit.

ENTER YOUR CHOICE: a.

enter the item you want to add it : water.
The item has been added

*** SHOPPING LIST ***
d. display all items.
a. Add an item to the list.
e. exit.

ENTER YOUR CHOICE: d.

water
coffee
milk
chocolate
apple
juice

*** SHOPPING LIST ***
d. display all items.
a. Add an item to the list.
e. exit.

ENTER YOUR CHOICE: e.

Goodbye!
true. */