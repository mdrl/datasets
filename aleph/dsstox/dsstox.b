:- determination(active/1, active/1).
:- determination(active/1, atom/3).
:- determination(active/1, bond/6).
:- modeh(1, active(+molecule)).
:- modeb(*, atom(+molecule,-atomid,#element)).
:- modeb(*, bond(+molecule,+atomid,#element,-atomid,#element,#bondtype)).
atom(M, Atom_ID, Elem):-
atm(M, Atom_ID, _, Elem, _, _, _, _).
bond(M, A1, E1, A2, E2, BT):-
atom(M, A1, E1),
atom(M, A2, E2),
bond(M, A1, A2, BT).
:-[atombond].

:-set(minpos, 2).
:-set(evalfn, user).

% Dsstox dataset has weighted examples in GILPS
cost(Clause, [P, N, L], Cost) :-
    Cost is 10*P - 10*N - L + 1.