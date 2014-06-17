:- determination(east/1, load/3).
:- determination(east/1, short/1).
:- determination(east/1, double/1).
:- determination(east/1, has_car/2).
:- determination(east/1, infront/3).
:- determination(east/1, closed/1).
:- determination(east/1, jagged/1).
:- determination(east/1, wheels/2).
:- determination(east/1, east/1).
:- modeh(1,east(+train)).
:- modeb(*,infront(+train,-car,-car)).
:- modeb(*,has_car(+train,-car)).
:- modeb(1,closed(+car)).
:- modeb(1,short(+car)).
:- modeb(1,double(+car)).
:- modeb(1,jagged(+car)).
:- modeb(1,load(+car,#shape,#int)).
:- modeb(1,wheels(+car,#int)).
has_car(T,C) :- member(C,T).
infront(T,C1,C2) :- append(_,[C2,C1|_],T).
ellipse(C) :- arg(2,C,ellipse).  hexagon(C) :- arg(2,C,hexagon).
rectangle(C) :- arg(2,C,rectangle).  u_shaped(C) :- arg(2,C,u_shaped).
bucket(C) :- arg(2,C,bucket).
long(C) :- arg(3,C,long).  short(C) :- arg(3,C,short).
double(C) :- arg(4,C,double).
has_roof(C,R) :- arg(5,C,R).
open(C) :- arg(5,C,none).  closed(C) :- not(open(C)).
has_wheel(C,w(NC,W)) :- arg(1,C,NC), arg(6,C,NW), nlist(1,NW,L), member(W,L).
has_load(C,Load) :- arg(7,C,l(_,NLoad)), nlist(1,NLoad,L), member(Load,L).
has_load0(C,nil) :- arg(7,C,nil).
has_load0(C,Shape) :- arg(7,C,l(Shape,N)), 1=<N.
has_load1(T,Shape) :- has_car(T,C), has_load0(C,Shape).
load(C,Shape,N) :- arg(7,C,l(Shape,N)).
wheels(C,N) :- arg(6,C,N).
shape(circle).  shape(ellipse).  shape(hexagon).  shape(rectangle).
shape(triangle).  shape(utriangle).  shape(u_shaped). shape(diamond).
