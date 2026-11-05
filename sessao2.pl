


membro(X, [X|_]).
membro(X, [_|Cauda]) :-
    membro(X, Cauda).

concatena([], L, L).
concatena([X|L1], L2, [X|L3]) :-
    concatena(L1, L2, L3).

ultimo(X, [X]).
ultimo(X, [_|Y]) :-
    ultimo(X, Y).

% forma Declarativa Padrão
dobra([], []).
dobra([X|Resto1], [Y|Resto2]) :-
    Y is X * 2,
    dobra(Resto1, Resto2).


soma_lista([], 0).
soma_lista([X|Resto], Soma) :-
    soma_lista(Resto, SomaResto),
    Soma is X + SomaResto.

maior(A, B, A) :- A >= B.
maior(A, B, B) :- A < B.

somalista_acc(Lista, Soma) :-
    soma_aux(Lista, 0, Soma).
soma_aux([], Acc, Acc).
soma_aux([X|Resto], Acc, Soma) :-
    NovoAcc is Acc + X,
    soma_aux(Resto, NovoAcc, Soma).

