:- determination(active/1, ring_size_6/2).
:- determination(active/1, ring_size_5/2).
:- determination(active/1, eq/2).
:- determination(active/1, phenanthrene/2).
:- determination(active/1, atm/5).
:- determination(active/1, bond/4).
:- determination(active/1, hetero_aromatic_5_ring/2).
:- determination(active/1, ball3/2).
:- determination(active/1, lumo/2).
:- determination(active/1, nitro/2).
:- determination(active/1, gteq/2).
:- determination(active/1, benzene/2).
:- determination(active/1, anthracene/2).
:- determination(active/1, carbon_5_aromatic_ring/2).
:- determination(active/1, logp/2).
:- determination(active/1, hetero_aromatic_6_ring/2).
:- determination(active/1, lteq/2).
:- determination(active/1, carbon_6_ring/2).
:- determination(active/1, methyl/2).
:- determination(active/1, active/1).
:- modeh(1, active(+drug)).
:- modeb(*,lumo(+drug,-energy)).
:- modeb(*,logp(+drug,-hydrophob)).
:- modeb(*,atm(+drug,-atomid,#element,#int,-charge)).
:- modeb(*,bond(+drug,-atomid,-atomid,#int)).
:- modeb(*,bond(+drug,+atomid,-atomid,#int)).
:- modeb(*,gteq(+charge,#float)).
:- modeb(*,gteq(+energy,#float)).
:- modeb(*,gteq(+hydrophob,#float)).
:- modeb(*,gteq(+float,#float)).
:- modeb(*,lteq(+charge,#float)).
:- modeb(*,lteq(+energy,#float)).
:- modeb(*,lteq(+hydrophob,#float)).
:- modeb(*,lteq(+float,#float)).
:- modeb(1,eq(+charge,#charge)).
:- modeb(1,eq(+energy,#energy)).
:- modeb(1,eq(+hydrophob,#hydrophob)).
:- modeb(1,benzene(+drug,-ring)).
:- modeb(1,carbon_5_aromatic_ring(+drug,-ring)).
:- modeb(1,carbon_6_ring(+drug,-ring)).
:- modeb(1,hetero_aromatic_6_ring(+drug,-ring)).
:- modeb(*,hetero_aromatic_5_ring(+drug,-ring)).
:- modeb(*,ring_size_6(+drug,-ring)).
:- modeb(*,ring_size_5(+drug,-ring)).
:- modeb(*,nitro(+drug,-ring)).
:- modeb(*,methyl(+drug,-ring)).
:- modeb(*,anthracene(+drug,-ringlist)).
:- modeb(*,phenanthrene(+drug,-ringlist)).
:- modeb(*,ball3(+drug,-ringlist)).
:- [atom_bond,logp,lumo,ring_struct].
eq(X, Y) :- X = Y.
gteq(X,Y):- \+(var(X)), \+(var(Y)),float(X), float(Y), X >= Y. % not does not exist in sicstus!!
gteq(X,X):- \+(var(X)), float(X).
lteq(X,Y):- \+(var(X)), \+(var(Y)),float(X), float(Y), X =< Y.
lteq(X,X):- \+(var(X)), float(X).
