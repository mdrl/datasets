:- use_module(library(lists), [member/2]).

:- modeh(1,east(+train)).
:- modeb(*,has_car(+train, -car)).
:- modeb(*,in_front(+train, -car, -car)).
:- modeb(1,ellipse(+car)).
:- modeb(1,hexagon(+car)).
:- modeb(1,rectangle(+car)).
:- modeb(1,u_chaped(+car)).
:- modeb(1,bucket(+car)).
:- modeb(1,long(+car)).
:- modeb(1,short(+car)).
:- modeb(1,double(+car)).
:- modeb(1,has_roof(+car, #shape)).
:- modeb(1,open(+car)).
:- modeb(1,closed(+car)).
:- modeb(*,load(+car, #shape, #int)).
:- modeb(1,wheels(+car, #int)).
:- modeb(1,none(+car)).
:- modeb(1,flat(+car)).
:- modeb(1,jagged(+car)).
:- modeb(1,peaked(+car)).
:- modeb(1,arc(+car)).

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
