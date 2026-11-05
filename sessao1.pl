progenitor(jose, joao).
progenitor(maria, joao).
progenitor(jose, ana).
progenitor(maria, ana).
progenitor(joao, mario).
progenitor(ana, helena).
sexo(jose, masculino).
sexo(joao, masculino).
sexo(mario, masculino).
sexo(maria, feminino).
sexo(ana, feminino).
sexo(helena, feminino).

pai(X, Y) :-
    progenitor(X, Y),
    sexo(X, masculino).


irmao(X, Y) :- 
progenitor(A, X),
progenitor(A, Y),
X \== Y,
sexo(X, masculino).

mae(X, Y) :-
    progenitor(X, Y),
    sexo(X, feminino).

avo(X, Y) :-
    progenitor(X, Z),
    progenitor(Z, Y).


a2b([], []).
a2b([a|L1], [b|L2]) :-
	a2b(L1, L2).



somaTresDepoisDuplica(X, Y) :-
    Y is (X + 3) * 2.


tam([], 0).
tam([_|Resto], N) :-
	tam(Resto, X),
	N is X + 1.


fatorial(0, 1).
fatorial(N, F) :-
	N > 0,
	N1 is N - 1,
	fatorial(N1, F1),
	F is N * F1.
	

fatorial_acc(N, F) :-
	fatorial_aux(N, 1, F).
fatorial_aux(0, Acc, Acc).
fatorial_aux(N, Acc, F) :-
	NovoAcc is Acc * N,
	N1 is N - 1,
	fatorial_aux(N1, NovoAcc, F).

produto_acc(Lista, Prod) :-
	prod_aux(Lista, 1, Prod).
prod_aux([], Acc, Acc).
prod_aux([X|Resto], Acc, Prod) :-
	NovoAcc is X * Acc,
	prod_aux(Resto, NovoAcc, Prod).


conta_ocorrencias(_, [], 0).
conta_ocorrencias(X, [X|Resto], N) :-
	conta_ocorrencias(X, Resto, NovoN),
	N is NovoN + 1.
conta_ocorrencias(X, [Y|Resto], N) :-
	X \== Y,
	conta_ocorrencias(X, Resto, N).


substitui(_, _, [], []).
substitui(Velho, Novo, [Velho|Resto], L) :-
	substitui(Velho, Novo,[Novo|Resto], L).
substitui(Velho, Novo, [_|Resto], L) :-
	substitui(Velho, Novo, Resto, L).


minimo_acc(Lista, Min) :-
	min_aux(Lista, Acc, Min).

min_aux([], Acc, Acc).
min_aux([X|Xs], Acc, Min) :-
	X < Min,
	min_aux(Xs, X, Min).
min_aux([X|Xs], Acc, Min) :-
	X >= Min,
	min_aux(Xs, Acc, Min).