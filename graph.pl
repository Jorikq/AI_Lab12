% Facts

edge('Makkah', 'Madinah').
edge('Madinah', 'Makkah').

edge('Madinah', 'Taif').
edge('Madinah', 'Tabuk').

edge('Makkah', 'Riyadh').

edge('Taif', 'Tabuk').
edge('Tabuk', 'Taif').

edge('Taif', 'Dammam').

edge('Dammam', 'Al-Qatif').
edge('Al-Qatif', 'Dammam').

edge('Al-Qatif', 'Madinah').

edge('Dammam', 'Riyadh').
edge('Riyadh', 'Dammam').

% Find a path

travel(From, To, Path) :-
    path(From, To, [From], Path).

path(To, To, _, [To]).

path(From, To, Visited, [From|Path]) :-
    edge(From, Next),
    not(member(Next, Visited)),
    path(Next, To, [Next|Visited], Path).
