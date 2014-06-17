:- use_module(library(lists), [member/2]).

has_car(T,C) :- member(C,T).
infront(T,C1,C2) :- append(_,[C2,C1|_],T).
ellipse(C) :- arg(2,C,ellipse).  hexagon(C) :- arg(2,C,hexagon).
rectangle(C) :- arg(2,C,rectangle).  u_shaped(C) :- arg(2,C,u_shaped).
bucket(C) :- arg(2,C,bucket).
long(C) :- arg(3,C,long).  short(C) :- arg(3,C,short).
double(C) :- arg(4,C,double).
has_roof(C,R) :- arg(5,C,R).
open(C) :- arg(5,C,none).  closed(C) :- not(open(C)).
load(C,Shape,N) :- arg(7,C,l(Shape,N)).
wheels(C,N) :- arg(6,C,N).
none(C) :- has_roof(C,none).
flat(C) :- has_roof(C,flat).
jagged(C) :- has_roof(C,jagged).
peaked(C) :- has_roof(C,peaked).
arc(C) :- has_roof(C,arc).

shape(circle).  shape(ellipse).  shape(hexagon).  shape(rectangle).
shape(triangle).  shape(utriangle).  shape(u_shaped). shape(diamond).
