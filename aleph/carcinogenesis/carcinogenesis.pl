%:-set(maximum_singletons_in_hypothesis, 3).
%:-set(maximum_literals_in_hypothesis, 4).

:- set(cross_validation_folds, 10).

:- modeh(1,active(+drug)).

:- modeb(*,ames(+drug)).
:- modeb(*,mutagenic(+drug)).
:- modeb(*,has_property(+drug,#property,#propval)).
:- modeb(*,ashby_alert(#alert,+drug,-ring)).
:- modeb(*,ind(+drug,#alert,-nalerts)).

:- modeb(*,atm(+drug,-atomid,#element,#integer,-charge)).
:- modeb(*,symbond(+drug,+atomid,-atomid,#integer)).

:- modeb(1,gteq(+charge,#real)).
:- modeb(1,lteq(+charge,#real)).
:- modeb(1,=((+charge),(#charge))).
:- modeb(1,gteq(+nalerts,#integer)).
:- modeb(1,lteq(+nalerts,#integer)).
:- modeb(1, =((+nalerts),(#nalerts))).

:- modeb(*,nitro(+drug,-ring)).
:- modeb(*,sulfo(+drug,-ring)).
:- modeb(*,methyl(+drug,-ring)).
:- modeb(*,methoxy(+drug,-ring)).
:- modeb(*,amine(+drug,-ring)).
:- modeb(*,aldehyde(+drug,-ring)).
:- modeb(*,ketone(+drug,-ring)).
:- modeb(*,ether(+drug,-ring)).
:- modeb(*,sulfide(+drug,-ring)).
:- modeb(*,alcohol(+drug,-ring)).
:- modeb(*,phenol(+drug,-ring)).
:- modeb(*,carboxylic_acid(+drug,-ring)).
:- modeb(*,ester(+drug,-ring)).
:- modeb(*,amide(+drug,-ring)).
:- modeb(*,deoxy_amide(+drug,-ring)).
:- modeb(*,imine(+drug,-ring)).
:- modeb(*,alkyl_halide(+drug,-ring)).
:- modeb(*,ar_halide(+drug,-ring)).
:- modeb(*,benzene(+drug,-ring)).
:- modeb(*,hetero_ar_6_ring(+drug,-ring)).
:- modeb(*,non_ar_6c_ring(+drug,-ring)).
:- modeb(*,non_ar_hetero_6_ring(+drug,-ring)).
:- modeb(*,six_ring(+drug,-ring)).
:- modeb(*,carbon_5_ar_ring(+drug,-ring)).
:- modeb(*,hetero_ar_5_ring(+drug,-ring)).
:- modeb(*,non_ar_5c_ring(+drug,-ring)).
:- modeb(*,non_ar_hetero_5_ring(+drug,-ring)).
:- modeb(*,five_ring(+drug,-ring)).
:- modeb(1,connected(+ring,+ring)).


% type information

drug(d1).
drug(d2).
drug(d3).
drug(d4).
drug(d5).
drug(d6).
drug(d7).
drug(d8).
drug(d9).
drug(d10).
drug(d11).
drug(d12).
drug(d13).
drug(d14).
drug(d15).
drug(d16).
drug(d17).
drug(d18).
drug(d19).
drug(d20).
drug(d21).
drug(d22).
drug(d23_1).
drug(d23_2).
drug(d24).
drug(d25).
drug(d26).
drug(d27).
drug(d28).
drug(d29).
drug(d30).
drug(d31).
drug(d32).
drug(d33).
drug(d34).
drug(d35).
drug(d36).
drug(d37).
drug(d38).
drug(d39).
drug(d40).
drug(d41).
drug(d42).
drug(d43).
drug(d44).
drug(d45).
drug(d46).
drug(d47).
drug(d48).
drug(d49).
drug(d50).
drug(d51).
drug(d52).
drug(d53).
drug(d54).
drug(d55).
drug(d56).
drug(d57).
drug(d58).
drug(d59).
drug(d60).
drug(d61).
drug(d62).
drug(d63).
drug(d64).
drug(d65).
drug(d66).
drug(d67).
drug(d68).
drug(d69).
drug(d70).
drug(d71).
drug(d72).
drug(d73).
drug(d74).
drug(d75).
drug(d76).
drug(d77).
drug(d78).
drug(d79).
drug(d80).
drug(d81).
drug(d82).
drug(d83).
drug(d84).
drug(d85_1).
drug(d85_2).
drug(d86).
drug(d87).
drug(d88).
drug(d89).
drug(d90).
drug(d91).
drug(d92).
drug(d93).
drug(d94).
drug(d95).
drug(d96).
drug(d97).
drug(d98).
drug(d99).
drug(d100).
drug(d101).
drug(d102).
drug(d103).
drug(d104).
drug(d105).
drug(d106).
drug(d107).
drug(d108).
drug(d109).
drug(d110).
drug(d111).
drug(d112).
drug(d113).
drug(d114).
drug(d115).
drug(d116).
drug(d117).
drug(d118).
drug(d119).
drug(d120).
drug(d121).
drug(d122).
drug(d123).
drug(d124).
drug(d125).
drug(d126).
drug(d127).
drug(d128).
drug(d129).
drug(d130).
drug(d131).
drug(d132).
drug(d133).
drug(d134).
drug(d135).
drug(d136).
drug(d137).
drug(d138).
drug(d139).
drug(d140).
drug(d141).
drug(d142).
drug(d143).
drug(d144).
drug(d145).
drug(d146).
drug(d147).
drug(d148).
drug(d149).
drug(d150).
drug(d151).
drug(d152).
drug(d153).
drug(d154).
drug(d155).
drug(d156).
drug(d157).
drug(d158).
drug(d159).
drug(d160).
drug(d161).
drug(d162).
drug(d163).
drug(d164).
drug(d165).
drug(d166).
drug(d167).
drug(d168).
drug(d169).
drug(d170).
drug(d171).
drug(d172).
drug(d173).
drug(d174).
drug(d175).
drug(d176).
drug(d177).
drug(d178).
drug(d179).
drug(d180).
drug(d181).
drug(d182).
drug(d183).
drug(d184).
drug(d185).
drug(d186).
drug(d187).
drug(d188).
drug(d189).
drug(d190).
drug(d191).
drug(d192).
drug(d193).
drug(d194).
drug(d195).
drug(d196).
drug(d197).
drug(d198).
drug(d199).
drug(d200).
drug(d201).
drug(d202).
drug(d203).
drug(d204).
drug(d205).
drug(d206).
drug(d207).
drug(d208_1).
drug(d208_2).
drug(d209).
drug(d210).
drug(d211).
drug(d212).
drug(d213).
drug(d214).
drug(d215).
drug(d216).
drug(d217).
drug(d218).
drug(d219).
drug(d220).
drug(d221).
drug(d222).
drug(d223).
drug(d224).
drug(d225).
drug(d226).
drug(d227).
drug(d228).
drug(d229).
drug(d230).
drug(d231).
drug(d232).
drug(d233).
drug(d234).
drug(d235).
drug(d236).
drug(d237).
drug(d238).
drug(d239).
drug(d240).
drug(d241).
drug(d242).
drug(d243).
drug(d244).
drug(d245).
drug(d246).
drug(d247).
drug(d248).
drug(d249).
drug(d250).
drug(d251).
drug(d252).
drug(d253).
drug(d254).
drug(d255).
drug(d256).
drug(d257).
drug(d258).
drug(d259).
drug(d260).
drug(d261).
drug(d262).
drug(d263).
drug(d264).
drug(d265).
drug(d266).
drug(d267).
drug(d268).
drug(d269).
drug(d270).
drug(d271).
drug(d272).
drug(d273).
drug(d274).
drug(d275).
drug(d276).
drug(d277).
drug(d278).
drug(d279).
drug(d280).
drug(d281).
drug(d282).
drug(d283).
drug(d284).
drug(d285).
drug(d286).
drug(d287).
drug(d288).
drug(d289).
drug(d290).
drug(d291).
drug(d292).
drug(d293).
drug(d294).
drug(d295).
drug(d296).
drug(d297).
drug(d298).
drug(d299).
drug(d300).
drug(d301).
drug(d302).
drug(d303).
drug(d304).
drug(d305).
drug(d306).
drug(d307).
drug(d308).
drug(d309).
drug(d310).
drug(d311).
drug(d312).
drug(d313).
drug(d314).
drug(d315).
drug(d316).
drug(d317).
drug(d318).
drug(d319).
drug(d320).
drug(d321).
drug(d322).
drug(d323).
drug(d324).
drug(d325).
drug(d326).
drug(d327).
drug(d328).
drug(d329).
drug(d330).
drug(d331).
drug(d332).
drug(d333).
drug(d334).
drug(d335).
drug(d336).
drug(d337).


alert(amino).
alert(cyanate).
alert(cyanide).
alert(di10).
alert(di13).
alert(di14).
alert(di22).
alert(di227).
alert(di23).
alert(di232).
alert(di252).
alert(di260).
alert(di28).
alert(di281).
alert(di287).
alert(di48).
alert(di51).
alert(di64).
alert(di66).
alert(di67a).
alert(di7).
alert(di8).
alert(ethoxy).
alert(halide10).
alert(methanol).
alert(methoxy).
alert(nitro).
alert(ring_size_4).

% atomid(A):-
%         name(A,[100|X]),
%         append(Z,[95|Y],X),
%         name(N1,Y),
%         name(N2,Z),
%         integer(N1), integer(N2),
%         N2 >= 1, N2 =< 230,
%         N1 =< 500.

atomid(A) :-
   name(A,L),
   append(Dl,[95|Nl],L),
   name(D,Dl),
   name(N,Nl),
   drug(D),
   N1 < 215.     % 215 max no of atoms

% type information

charge(X):-
        number(X).

ring([_|_]).

propval(p).
propval(n).

property(salmonella).
property(salmonella_n).
property(salmonella_reduc).
property(mouse_lymph).
property(mouse_lymph_n).
property(drosophila_slrl).
property(drosophila_rt).
property(cy,cytogen_ca).
property(cytogen_sce).
property(micronuc_m).
property(micronuc_f).
property(chromaberr).
property(chromex).


list([_|_]).

% background knowledge 

gteq(X,X):-
	number(X).
gteq(X,Y):-
	number(X), number(Y), 
	X >= Y.
lteq(X,X):-
	number(X).
lteq(X,Y):-
	number(X), number(Y),
	X =< Y.

connected(Ring1,Ring2):-
        Ring1 \= Ring2,
        element(A,Ring1),
        element(A,Ring2).

element(H,[H|_]).
element(H,[V|T]):- H\=V, element(H,T).

symbond(M,A,B,T):-
	var(T),
	sym_bond(M,A,B,T).
symbond(M,A,B,T):-
        nonvar(T),
	sym_bond(M,A,B,T).
	
sym_bond(M,A,B,T) :- bond(M,A,B,T).
sym_bond(M,A,B,T) :- bond(M,B,A,T).

:- [atoms,bonds,ames,newgroups,gentoxprops,ind_pos,ind_nos].

%%%%%%%%%%%%%%%%%%%%%%%%%%
% rules for mutagenecity found earlier

mutagenic(A) :-
   bond(A,B,C,1), bond(A,D,B,2), bond(A,E,B,1).
mutagenic(A) :-
   atm(A,B,c,26,0.115).
mutagenic(A) :-
   atm(A,B,c,29,C), bond(A,D,B,7), bond(A,E,D,1).
mutagenic(A) :-
   atm(A,B,c,22,C), gteq(C,0.202), atm(A,D,c,29,E).
mutagenic(A) :-
   atm(A,B,c,27,C), bond(A,D,B,7), bond(A,E,D,1).
mutagenic(A) :-
   atm(A,B,c,27,C), lteq(C,-0.085).
mutagenic(A) :-
   atm(A,B,c,22,-0.114).
mutagenic(A) :-
   atm(A,B,c,29,C), gteq(C,0.011).
mutagenic(A) :-
   atm(A,B,c,195,C).
mutagenic(A) :-
   atm(A,B,o,40,C), atm(A,D,n,32,C).
mutagenic(A) :-
   atm(A,B,c,10,C), atm(A,D,c,10,C), bond(A,D,B,1).
mutagenic(A) :-
   atm(A,B,o,40,C), lteq(C,-0.403), bond(A,B,D,2).
mutagenic(A) :-
   atm(A,B,c,16,-0.191).
mutagenic(A) :-
   atm(A,B,c,26,C), atm(A,D,c,22,E), lteq(E,-0.110).
mutagenic(A) :-
   atm(A,B,c,29,0.010).
mutagenic(A) :-
   atm(A,B,cl,93,C), bond(A,D,E,2), bond(A,F,E,1).
mutagenic(A) :-
   atm(A,B,o,40,-0.389), bond(A,C,B,2), bond(A,D,C,1).
mutagenic(A) :-
   atm(A,B,o,40,-0.389), bond(A,C,B,2), bond(A,D,C,1).
mutagenic(A) :-
   atm(A,B,o,40,-0.384).
mutagenic(A) :-
   atm(A,B,c,29,C), gteq(C,0.010).
mutagenic(A) :-
   atm(A,B,c,16,C), bond(A,D,B,1), bond(A,E,D,1).
mutagenic(A) :-
   bond(A,B,C,1), bond(A,D,B,2), bond(A,E,B,1).
mutagenic(A) :-
   atm(A,B,o,40,-0.389), bond(A,C,B,2), bond(A,D,C,1).
mutagenic(A) :-
   atm(A,B,c,29,0.010).
mutagenic(A) :-
   atm(A,B,c,26,0.115).
mutagenic(A) :-
   atm(A,B,c,29,0.010).
mutagenic(A) :-
   atm(A,B,c,26,0.115).
mutagenic(A) :-
   bond(A,B,C,1), bond(A,D,B,2), bond(A,E,B,1).

%%%%%%%%%%%%%%%%%%%%%%%%
% constraints (NOT BEING USED BY GILPS!!)

abandon:-
	hypothesis(_,Body,_),
	has_lit(symbond(_,A,B,_),Body,Rest),
	has_lit(symbond(_,C,D,_),Rest,_),
	A == D, B == C, !.
abandon:-
	hypothesis(_,Body,_),
	has_lit(lteq(A,B),Body,Rest),
	has_lit(gteq(C,D),Rest,_),
	A == C, B == D, !.

has_lit(L,(L1,L2),L2):-
      L = L1, !.
has_lit(L,(_,L2),Rest):-
      !,
      has_lit(L,L2,Rest).
has_lit(L,L,true).

example(active(d107),1,1).
example(active(d284),1,1).
example(active(d279),1,1).
example(active(d24),1,1).
example(active(d140),1,1).
example(active(d228),1,1).
example(active(d53),1,1).
example(active(d32),1,1).
example(active(d49),1,1).
example(active(d52),1,1).
example(active(d101),1,1).
example(active(d203),1,1).
example(active(d87),1,1).
example(active(d90),1,1).
example(active(d234),1,1).
example(active(d193),1,1).
example(active(d134),1,1).
example(active(d100),1,1).

example(active(d217),-1,1).
example(active(d262),-1,1).
example(active(d118),-1,1).
example(active(d127),-1,1).
example(active(d155),-1,1).
example(active(d295),-1,1).
example(active(d132),-1,1).
example(active(d110),-1,1).
example(active(d266),-1,1).
example(active(d260),-1,1).
example(active(d207),-1,1).
example(active(d171),-1,1).
example(active(d67),-1,1).
example(active(d168),-1,1).
example(active(d80),-1,1).
example(active(d65),-1,1).
example(active(d219),-1,1).
example(active(d265),-1,1).
example(active(d83),-1,1).

example(active(d95), 1, 2).
example(active(d28), 1, 2).
example(active(d57), 1, 2).
example(active(d241), 1, 2).
example(active(d85_1), 1, 2).
example(active(d35), 1, 2).
example(active(d229), 1, 2).
example(active(d251), 1, 2).
example(active(d191), 1, 2).
example(active(d86), 1, 2).
example(active(d230), 1, 2).
example(active(d290), 1, 2).
example(active(d92), 1, 2).
example(active(d97), 1, 2).
example(active(d27), 1, 2).
example(active(d250), 1, 2).
example(active(d248), 1, 2).

example(active(d78), -1, 2).
example(active(d267), -1, 2).
example(active(d212), -1, 2).
example(active(d149), -1, 2).
example(active(d184), -1, 2).
example(active(d176), -1, 2).
example(active(d121), -1, 2).
example(active(d293), -1, 2).
example(active(d133), -1, 2).
example(active(d156), -1, 2).
example(active(d187), -1, 2).
example(active(d271), -1, 2).


example(active(d21), 1, 3).
example(active(d274), 1, 3).
example(active(d204), 1, 3).
example(active(d291), 1, 3).
example(active(d255), 1, 3).
example(active(d103), 1, 3).
example(active(d37), 1, 3).
example(active(d138), 1, 3).
example(active(d145), 1, 3).
example(active(d273), 1, 3).
example(active(d102), 1, 3).
example(active(d96), 1, 3).
example(active(d14), 1, 3).
example(active(d235), 1, 3).

example(active(d120), -1, 3).
example(active(d220), -1, 3).
example(active(d122), -1, 3).
example(active(d82), -1, 3).
example(active(d115), -1, 3).
example(active(d211), -1, 3).
example(active(d170), -1, 3).
example(active(d61), -1, 3).
example(active(d214), -1, 3).
example(active(d112), -1, 3).
example(active(d256), -1, 3).
example(active(d164), -1, 3).
example(active(d123), -1, 3).
example(active(d161), -1, 3).
example(active(d166), -1, 3).

example(active(d147), 1, 4).
example(active(d30), 1, 4).
example(active(d292), 1, 4).
example(active(d245), 1, 4).
example(active(d26), 1, 4).
example(active(d202), 1, 4).
example(active(d23_1), 1, 4).
example(active(d19), 1, 4).
example(active(d231), 1, 4).
example(active(d246), 1, 4).
example(active(d17), 1, 4).
example(active(d143), 1, 4).
example(active(d148), 1, 4).
example(active(d200), 1, 4).
example(active(d236), 1, 4).
example(active(d54), 1, 4).

example(active(d60), -1, 4).
example(active(d66), -1, 4).
example(active(d160), -1, 4).
example(active(d129), -1, 4).
example(active(d182), -1, 4).
example(active(d188), -1, 4).
example(active(d294), -1, 4).
example(active(d172), -1, 4).
example(active(d167), -1, 4).
example(active(d259), -1, 4).
example(active(d124), -1, 4).
example(active(d76), -1, 4).
example(active(d181), -1, 4).

example(active(d3), 1, 5).
example(active(d98), 1, 5).
example(active(d238), 1, 5).
example(active(d38), 1, 5).
example(active(d39), 1, 5).
example(active(d11), 1, 5).
example(active(d58), 1, 5).
example(active(d12), 1, 5).
example(active(d253), 1, 5).
example(active(d33), 1, 5).
example(active(d242), 1, 5).
example(active(d18), 1, 5).
example(active(d40), 1, 5).

example(active(d128), -1, 5).
example(active(d216), -1, 5).
example(active(d261), -1, 5).
example(active(d162), -1, 5).
example(active(d276), -1, 5).
example(active(d208_1), -1, 5).
example(active(d71), -1, 5).
example(active(d285), -1, 5).
example(active(d263), -1, 5).
example(active(d209), -1, 5).
example(active(d208_2), -1, 5).
example(active(d194), -1, 5).
example(active(d268), -1, 5).
example(active(d59), -1, 5).
example(active(d152), -1, 5).
example(active(d68), -1, 5).

example(active(d257), -1, 6).
example(active(d114), -1, 6).
example(active(d73), -1, 6).
example(active(d189), -1, 6).
example(active(d218), -1, 6).
example(active(d119), -1, 6).
example(active(d157), -1, 6).
example(active(d264), -1, 6).
example(active(d280), -1, 6).
example(active(d117), -1, 6).
example(active(d77), -1, 6).
example(active(d125), -1, 6).
example(active(d154), -1, 6).

example(active(d233), 1, 6).
example(active(d1), 1, 6).
example(active(d10), 1, 6).
example(active(d277), 1, 6).
example(active(d16), 1, 6).
example(active(d227), 1, 6).
example(active(d9), 1, 6).
example(active(d29), 1, 6).
example(active(d141), 1, 6).
example(active(d198), 1, 6).
example(active(d48), 1, 6).
example(active(d252), 1, 6).
example(active(d278), 1, 6).
example(active(d137), 1, 6).
example(active(d232), 1, 6).
example(active(d8), 1, 6).

example(active(d142), 1, 7).
example(active(d135), 1, 7).
example(active(d45), 1, 7).
example(active(d6), 1, 7).
example(active(d206), 1, 7).
example(active(d136), 1, 7).
example(active(d283), 1, 7).
example(active(d205), 1, 7).
example(active(d139), 1, 7).
example(active(d85_2), 1, 7).
example(active(d244), 1, 7).
example(active(d254), 1, 7).
example(active(d15), 1, 7).
example(active(d275), 1, 7).
example(active(d7), 1, 7).
example(active(d288), 1, 7).
example(active(d106), 1, 7).
example(active(d23_2), 1, 7).
example(active(d197), 1, 7).

example(active(d116), -1, 7).
example(active(d159), -1, 7).
example(active(d222), -1, 7).
example(active(d126), -1, 7).
example(active(d258), -1, 7).
example(active(d150), -1, 7).
example(active(d173), -1, 7).
example(active(d79), -1, 7).
example(active(d210), -1, 7).
example(active(d153), -1, 7).

example(active(d63), -1, 8).
example(active(d287), -1, 8).
example(active(d70), -1, 8).
example(active(d186), -1, 8).
example(active(d130), -1, 8).
example(active(d269), -1, 8).
example(active(d270), -1, 8).
example(active(d81), -1, 8).
example(active(d224), -1, 8).
example(active(d190), -1, 8).
example(active(d179), -1, 8).

example(active(d108), 1, 8).
example(active(d20), 1, 8).
example(active(d55), 1, 8).
example(active(d2), 1, 8).
example(active(d25), 1, 8).
example(active(d249), 1, 8).
example(active(d201), 1, 8).
example(active(d286), 1, 8).
example(active(d272), 1, 8).
example(active(d46), 1, 8).
example(active(d196), 1, 8).
example(active(d22), 1, 8).
example(active(d281), 1, 8).
example(active(d243), 1, 8).
example(active(d43), 1, 8).
example(active(d289), 1, 8).
example(active(d247), 1, 8).
example(active(d56), 1, 8).

example(active(d237), 1, 9).
example(active(d4), 1, 9).
example(active(d41), 1, 9).
example(active(d192), 1, 9).
example(active(d195), 1, 9).
example(active(d239), 1, 9).
example(active(d51), 1, 9).
example(active(d93), 1, 9).
example(active(d144), 1, 9).
example(active(d44), 1, 9).
example(active(d104), 1, 9).
example(active(d13), 1, 9).
example(active(d31), 1, 9).
example(active(d109), 1, 9).

example(active(d62), -1, 9).
example(active(d177), -1, 9).
example(active(d165), -1, 9).
example(active(d215), -1, 9).
example(active(d163), -1, 9).
example(active(d64), -1, 9).
example(active(d221), -1, 9).
example(active(d113), -1, 9).
example(active(d282), -1, 9).
example(active(d169), -1, 9).
example(active(d185), -1, 9).
example(active(d213), -1, 9).
example(active(d74), -1, 9).
example(active(d180), -1, 9).
example(active(d158), -1, 9).

example(active(d183), -1, 10).
example(active(d72), -1, 10).
example(active(d225), -1, 10).
example(active(d151), -1, 10).
example(active(d178), -1, 10).
example(active(d75), -1, 10).
example(active(d111), -1, 10).
example(active(d69), -1, 10).
example(active(d223), -1, 10).
example(active(d175), -1, 10).
example(active(d174), -1, 10).
example(active(d131), -1, 10).

example(active(d91), 1, 10).
example(active(d50), 1, 10).
example(active(d88), 1, 10).
example(active(d99), 1, 10).
example(active(d146), 1, 10).
example(active(d36), 1, 10).
example(active(d89), 1, 10).
example(active(d42), 1, 10).
example(active(d199), 1, 10).
example(active(d34), 1, 10).
example(active(d47), 1, 10).
example(active(d5), 1, 10).
example(active(d240), 1, 10).
example(active(d105), 1, 10).
example(active(d84), 1, 10).
example(active(d94), 1, 10).
example(active(d226), 1, 10).

