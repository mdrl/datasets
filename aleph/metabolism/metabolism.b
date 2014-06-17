:- determination(metabolism/1, motif/2).
:- determination(metabolism/1, chromosome/2).
:- determination(metabolism/1, intertype/2).
:- determination(metabolism/1, class/2).
:- determination(metabolism/1, lte/2).
:- determination(metabolism/1, phenotype/2).
:- determination(metabolism/1, gte/2).
:- determination(metabolism/1, essential/2).
:- determination(metabolism/1, metabolism/1).
:- determination(metabolism/1, complex/2).
:- determination(metabolism/1, interaction/4).
:- modeh(1,metabolism(+gene)).
:- modeb(1,essential(+gene,#essential)).
:- modeb(1,class(+gene,#class)).
:- modeb(1,complex(+gene,#complex)).
:- modeb(1,phenotype(+gene,#phenotype)).
:- modeb(1,motif(+gene,#motif)).
:- modeb(1,chromosome(+gene,#chromosome)).
:- modeb(1,gte(+number,#number)).
:- modeb(1,lte(+number,#number)).
:- modeb(*,interaction(+gene,-gene,-intertype,-number)).
:- modeb(1,intertype(+intertype,#intertype)).
lte(N1,N2):-
number(N1),
number(N2),
!,
N1 =< N2.
lte(N1,N2):-
number(N1),
N1 =< 0.3,
N1 = N2.
gte(N1,N2):-
number(N1),
number(N2),
!,
N1 >= N2.
gte(N1,N2):-
number(N1),
N1 >= 0.3,
N1 = N2.
intertype(X,X).
:- [background].
/*
interaction(G1-Exclude,G2-[G1|Exclude],Type,Corr):-
!,
interaction1(G1,G2,Type,Corr),
\+ aleph_member(G2,Exclude).
interaction(G1,G2-[G1],Type,Corr):-
interaction1(G1,G2,Type,Corr).
essential(G-_,E):- essential(G,E).
class(G-_,C):- class(G,C).
complex(G-_,C):- complex(G,C).
phenotype(G-_,P):- phenotype(G,P).
motif(G-_,M):- motif(G,M).
chromosome(G-_,C):- chromosome(G,C).
*/
