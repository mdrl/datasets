:- use_module(library(lists), [member/2]).

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

example(east([c(1,ellipse,short,not_double,arc,2,l(circle,1))]),1,1).
example(east([c(1,ellipse,short,not_double,arc,2,l(circle,1))]),1,9).
example(east([c(1,rectangle,long,not_double,none,2,l(circle,1))]),1,2).
example(east([c(1,ellipse,short,not_double,arc,2,l(circle,2))]),1,10).
example(east([c(1,rectangle,short,double,peaked,2,l(triangle,2))]),1,2).
example(east([c(1,rectangle,long,not_double,none,2,nil)]),1,2).
example(east([c(1,u_shaped,short,not_double,none,2,l(circle,1))]),1,3).
example(east([c(1,ellipse,short,not_double,arc,2,l(circle,2))]),1,4).
example(east([c(1,bucket,short,not_double,none,2,l(diamond,2))]),1,1).
example(east([c(1,rectangle,long,not_double,none,2,l(circle,2))]),1,9).
example(east([c(1,rectangle,short,not_double,flat,2,l(circle,1))]),1,9).
example(east([c(1,bucket,short,not_double,peaked,2,l(diamond,1))]),1,2).
example(east([c(1,rectangle,long,not_double,none,2,l(utriangle,3))]),1,7).
example(east([c(1,bucket,short,not_double,flat,2,l(diamond,1))]),1,5).
example(east([c(1,rectangle,long,not_double,none,3,nil)]),1,4).
example(east([c(1,hexagon,short,not_double,flat,2,l(circle,1))]),1,2).
example(east([c(1,bucket,short,not_double,none,2,l(rectangle,1))]),1,10).
example(east([c(1,rectangle,long,not_double,none,2,l(utriangle,1))]),1,6).
example(east([c(1,rectangle,short,not_double,peaked,2,l(rectangle,1))]),1,3).
example(east([c(1,bucket,short,not_double,none,2,l(circle,1))]),1,1).
example(east([c(1,rectangle,long,not_double,none,2,l(hexagon,1))]),1,7).
example(east([c(1,rectangle,long,not_double,none,2,nil)]),1,7).
example(east([c(1,bucket,short,not_double,none,2,l(rectangle,1))]),1,7).
example(east([c(1,u_shaped,short,not_double,peaked,2,l(circle,1))]),1,8).
example(east([c(1,u_shaped,short,not_double,flat,2,l(circle,2))]),1,10).
example(east([c(1,rectangle,long,not_double,none,2,l(utriangle,2))]),1,8).
example(east([c(1,u_shaped,short,not_double,peaked,2,l(circle,2))]),1,3).
example(east([c(1,hexagon,short,not_double,flat,2,l(diamond,1))]),1,2).
example(east([c(1,bucket,short,not_double,none,2,l(triangle,2))]),1,5).
example(east([c(1,rectangle,short,double,peaked,2,l(circle,2))]),1,8).
example(east([c(1,rectangle,long,not_double,none,3,l(hexagon,2))]),1,6).
example(east([c(1,bucket,short,not_double,peaked,2,l(rectangle,1))]),1,6).
example(east([c(1,u_shaped,short,not_double,none,2,l(diamond,2))]),1,10).
example(east([c(1,hexagon,short,not_double,flat,2,l(rectangle,2))]),1,3).
example(east([c(1,bucket,short,not_double,peaked,2,l(triangle,1))]),1,5).
example(east([c(1,hexagon,short,not_double,flat,2,l(circle,1))]),1,4).
example(east([c(1,rectangle,short,double,flat,2,l(diamond,1))]),1,2).
example(east([c(1,rectangle,long,not_double,none,3,nil)]),1,8).
example(east([c(1,bucket,short,not_double,flat,2,l(circle,1))]),1,5).
example(east([c(1,u_shaped,short,not_double,flat,2,l(triangle,1))]),1,2).
example(east([c(1,rectangle,short,double,peaked,2,l(rectangle,1))]),1,5).
example(east([c(1,rectangle,short,double,flat,2,l(diamond,1))]),1,9).
example(east([c(1,rectangle,long,not_double,none,3,l(utriangle,3))]),1,3).
example(east([c(1,u_shaped,short,not_double,flat,2,l(diamond,2))]),1,1).
example(east([c(1,u_shaped,short,not_double,peaked,2,l(circle,2))]),1,6).
example(east([c(1,u_shaped,short,not_double,none,2,l(circle,2))]),1,4).
example(east([c(1,ellipse,short,not_double,arc,2,l(triangle,2))]),1,3).
example(east([c(1,bucket,short,not_double,none,2,l(triangle,1))]),1,6).
example(east([c(1,ellipse,short,not_double,arc,2,l(diamond,1))]),1,1).
example(east([c(1,rectangle,long,not_double,none,3,l(hexagon,1))]),1,10).
example(east([c(1,rectangle,long,not_double,none,3,l(hexagon,1))]),1,8).
example(east([c(1,bucket,short,not_double,none,2,l(diamond,2))]),1,9).
example(east([c(1,rectangle,long,not_double,none,2,l(circle,1))]),1,2).
example(east([c(1,rectangle,short,double,peaked,2,l(rectangle,2))]),1,3).
example(east([c(1,rectangle,long,not_double,none,2,l(circle,1))]),1,8).
example(east([c(1,rectangle,long,not_double,none,2,l(utriangle,3))]),1,1).
example(east([c(1,rectangle,long,not_double,none,2,l(circle,1))]),1,6).
example(east([c(1,rectangle,short,not_double,peaked,2,l(diamond,2))]),1,5).
example(east([c(1,bucket,short,not_double,flat,2,l(rectangle,1))]),1,10).
example(east([c(1,rectangle,short,double,none,2,l(circle,2))]),1,1).
example(east([c(1,rectangle,long,not_double,none,2,nil)]),1,10).
example(east([c(1,rectangle,long,not_double,none,3,nil)]),1,8).
example(east([c(1,hexagon,short,not_double,flat,2,l(rectangle,1))]),1,2).
example(east([c(1,hexagon,short,not_double,flat,2,l(circle,1))]),1,4).
example(east([c(1,ellipse,short,not_double,arc,2,l(diamond,2))]),1,9).
example(east([c(1,bucket,short,not_double,peaked,2,l(rectangle,1))]),1,2).
example(east([c(1,rectangle,long,not_double,none,3,l(circle,1))]),1,6).
example(east([c(1,rectangle,short,double,none,2,l(rectangle,2))]),1,7).
example(east([c(1,bucket,short,not_double,flat,2,l(circle,1))]),1,6).
example(east([c(1,hexagon,short,not_double,flat,2,l(circle,2))]),1,5).
example(east([c(1,rectangle,long,not_double,none,3,l(hexagon,1))]),1,8).
example(east([c(1,rectangle,long,not_double,none,2,nil)]),1,2).
example(east([c(1,bucket,short,not_double,flat,2,l(diamond,2))]),1,8).
example(east([c(1,bucket,short,not_double,peaked,2,l(rectangle,1))]),1,9).
example(east([c(1,rectangle,long,not_double,none,2,l(utriangle,3))]),1,7).
example(east([c(1,bucket,short,not_double,flat,2,l(rectangle,1))]),1,10).
example(east([c(1,rectangle,short,not_double,flat,2,l(circle,2))]),1,5).
example(east([c(1,rectangle,long,not_double,none,2,l(circle,1))]),1,5).
example(east([c(1,ellipse,short,not_double,arc,2,l(diamond,2))]),1,7).
example(east([c(1,ellipse,short,not_double,arc,2,l(triangle,2))]),1,4).
example(east([c(1,rectangle,long,not_double,none,3,nil)]),1,5).
example(east([c(1,rectangle,short,double,peaked,2,l(circle,1))]),1,9).
example(east([c(1,hexagon,short,not_double,flat,2,l(diamond,2))]),1,10).
example(east([c(1,rectangle,long,not_double,none,3,l(utriangle,2))]),1,3).
example(east([c(1,rectangle,long,not_double,none,3,l(rectangle,2))]),1,1).
example(east([c(1,rectangle,short,double,flat,2,l(circle,1))]),1,3).
example(east([c(1,hexagon,short,not_double,flat,2,l(circle,1))]),1,6).
example(east([c(1,rectangle,short,double,peaked,2,l(triangle,2))]),1,7).
example(east([c(1,rectangle,short,not_double,flat,2,l(rectangle,1))]),1,10).
example(east([c(1,ellipse,short,not_double,arc,2,l(rectangle,1))]),1,1).
example(east([c(1,bucket,short,not_double,none,2,l(rectangle,2))]),1,1).
example(east([c(1,rectangle,short,not_double,none,2,l(rectangle,1))]),1,6).
example(east([c(1,rectangle,long,not_double,none,2,l(circle,2))]),1,5).
example(east([c(1,ellipse,short,not_double,arc,2,l(circle,2))]),1,4).
example(east([c(1,rectangle,short,not_double,peaked,2,l(triangle,1))]),1,10).
example(east([c(1,bucket,short,not_double,none,2,l(rectangle,2))]),1,8).
example(east([c(1,rectangle,long,not_double,jagged,2,l(utriangle,2))]),-1,5).
example(east([c(1,rectangle,long,not_double,jagged,3,l(utriangle,1))]),-1,2).
example(east([c(1,rectangle,long,not_double,jagged,2,nil)]),-1,6).
example(east([c(1,rectangle,long,not_double,flat,2,l(hexagon,1))]),-1,9).
example(east([c(1,rectangle,long,not_double,jagged,2,nil)]),-1,7).
example(east([c(1,rectangle,long,not_double,jagged,2,l(hexagon,1))]),-1,2).
example(east([c(1,rectangle,long,not_double,jagged,3,l(utriangle,3))]),-1,10).
example(east([c(1,rectangle,long,not_double,jagged,2,l(rectangle,3))]),-1,10).
example(east([c(1,rectangle,long,not_double,flat,2,l(hexagon,1))]),-1,5).
example(east([c(1,rectangle,long,not_double,jagged,2,nil)]),-1,1).
example(east([c(1,rectangle,long,not_double,flat,2,nil)]),-1,9).
example(east([c(1,rectangle,long,not_double,flat,2,l(circle,1))]),-1,10).
example(east([c(1,rectangle,long,not_double,flat,2,nil)]),-1,7).
example(east([c(1,rectangle,long,not_double,jagged,3,nil)]),-1,10).
example(east([c(1,rectangle,long,not_double,jagged,2,l(utriangle,3))]),-1,6).
example(east([c(1,rectangle,long,not_double,flat,2,l(circle,3))]),-1,2).
example(east([c(1,rectangle,long,not_double,flat,3,nil)]),-1,4).
example(east([c(1,rectangle,long,not_double,flat,2,l(circle,1))]),-1,1).
example(east([c(1,rectangle,long,not_double,flat,3,nil)]),-1,10).
example(east([c(1,rectangle,long,not_double,flat,2,nil)]),-1,7).
example(east([c(1,rectangle,long,not_double,flat,3,nil)]),-1,2).
example(east([c(1,rectangle,long,not_double,jagged,3,l(circle,3))]),-1,6).
example(east([c(1,rectangle,long,not_double,flat,3,l(rectangle,3))]),-1,5).
example(east([c(1,rectangle,long,not_double,jagged,3,l(circle,1))]),-1,1).
example(east([c(1,rectangle,long,not_double,jagged,3,l(rectangle,1))]),-1,3).
example(east([c(1,rectangle,long,not_double,jagged,3,l(circle,1))]),-1,7).
example(east([c(1,rectangle,long,not_double,jagged,2,l(hexagon,3))]),-1,5).
example(east([c(1,rectangle,long,not_double,flat,3,l(utriangle,2))]),-1,7).
example(east([c(1,rectangle,long,not_double,flat,2,l(utriangle,3))]),-1,4).
example(east([c(1,rectangle,long,not_double,jagged,2,l(rectangle,1))]),-1,5).
example(east([c(1,rectangle,long,not_double,flat,3,l(circle,1))]),-1,2).
example(east([c(1,rectangle,long,not_double,flat,2,nil)]),-1,2).
example(east([c(1,rectangle,long,not_double,flat,2,l(rectangle,2))]),-1,2).
example(east([c(1,rectangle,long,not_double,flat,3,l(circle,3))]),-1,6).
example(east([c(1,rectangle,long,not_double,flat,3,l(hexagon,3))]),-1,7).
example(east([c(1,rectangle,long,not_double,flat,3,l(hexagon,1))]),-1,1).
example(east([c(1,rectangle,long,not_double,jagged,3,l(hexagon,2))]),-1,9).
example(east([c(1,rectangle,long,not_double,jagged,3,l(rectangle,1))]),-1,6).
example(east([c(1,rectangle,long,not_double,jagged,3,nil)]),-1,2).
example(east([c(1,rectangle,long,not_double,flat,2,l(utriangle,2))]),-1,10).
example(east([c(1,rectangle,long,not_double,flat,2,l(circle,3))]),-1,8).
example(east([c(1,rectangle,long,not_double,flat,3,l(utriangle,2))]),-1,8).
example(east([c(1,rectangle,long,not_double,flat,3,nil)]),-1,6).
example(east([c(1,rectangle,long,not_double,flat,2,l(circle,3))]),-1,10).
example(east([c(1,rectangle,long,not_double,flat,3,l(rectangle,3))]),-1,6).
example(east([c(1,rectangle,long,not_double,flat,2,l(hexagon,3))]),-1,7).
example(east([c(1,rectangle,long,not_double,jagged,2,l(hexagon,1))]),-1,4).
example(east([c(1,rectangle,long,not_double,flat,2,nil)]),-1,3).
example(east([c(1,rectangle,long,not_double,jagged,3,nil)]),-1,4).
example(east([c(1,rectangle,long,not_double,jagged,2,l(utriangle,3))]),-1,9).
example(east([c(1,rectangle,long,not_double,jagged,2,l(rectangle,3))]),-1,4).
example(east([c(1,rectangle,long,not_double,flat,2,l(utriangle,2))]),-1,5).
example(east([c(1,rectangle,long,not_double,jagged,2,nil)]),-1,8).
example(east([c(1,rectangle,long,not_double,jagged,2,nil)]),-1,9).
example(east([c(1,rectangle,long,not_double,jagged,2,l(rectangle,2))]),-1,2).
example(east([c(1,rectangle,long,not_double,flat,2,nil)]),-1,4).
example(east([c(1,rectangle,long,not_double,jagged,3,l(utriangle,1))]),-1,1).
example(east([c(1,rectangle,long,not_double,jagged,3,nil)]),-1,5).
example(east([c(1,rectangle,long,not_double,jagged,2,l(circle,2))]),-1,1).
example(east([c(1,rectangle,long,not_double,flat,3,l(utriangle,2))]),-1,3).
example(east([c(1,rectangle,long,not_double,jagged,2,l(rectangle,1))]),-1,9).
example(east([c(1,rectangle,long,not_double,flat,2,l(utriangle,1))]),-1,2).
example(east([c(1,rectangle,long,not_double,jagged,2,l(circle,1))]),-1,3).
example(east([c(1,rectangle,long,not_double,jagged,2,l(hexagon,1))]),-1,1).
example(east([c(1,rectangle,long,not_double,jagged,2,l(hexagon,2))]),-1,10).
example(east([c(1,rectangle,long,not_double,jagged,3,l(utriangle,1))]),-1,6).
example(east([c(1,rectangle,long,not_double,flat,2,nil)]),-1,8).
example(east([c(1,rectangle,long,not_double,flat,3,l(hexagon,2))]),-1,10).
example(east([c(1,rectangle,long,not_double,flat,2,l(rectangle,2))]),-1,1).
example(east([c(1,rectangle,long,not_double,flat,2,l(utriangle,1))]),-1,4).
example(east([c(1,rectangle,long,not_double,jagged,3,nil)]),-1,6).
example(east([c(1,rectangle,long,not_double,jagged,3,l(rectangle,1))]),-1,8).
example(east([c(1,rectangle,long,not_double,jagged,2,l(rectangle,3))]),-1,9).
example(east([c(1,rectangle,long,not_double,jagged,2,l(rectangle,1))]),-1,4).
example(east([c(1,rectangle,long,not_double,jagged,3,l(hexagon,3))]),-1,5).
example(east([c(1,rectangle,long,not_double,jagged,2,nil)]),-1,10).
example(east([c(1,rectangle,long,not_double,flat,2,l(rectangle,3))]),-1,4).
example(east([c(1,rectangle,long,not_double,flat,2,l(utriangle,3))]),-1,8).
example(east([c(1,rectangle,long,not_double,flat,3,l(utriangle,2))]),-1,8).
example(east([c(1,rectangle,long,not_double,flat,3,l(rectangle,3))]),-1,7).
example(east([c(1,rectangle,long,not_double,flat,3,l(circle,2))]),-1,6).
example(east([c(1,rectangle,long,not_double,jagged,2,l(hexagon,2))]),-1,9).
example(east([c(1,rectangle,long,not_double,jagged,2,l(rectangle,1))]),-1,3).
example(east([c(1,rectangle,long,not_double,jagged,2,l(circle,3))]),-1,6).
example(east([c(1,rectangle,long,not_double,flat,3,l(hexagon,2))]),-1,9).
example(east([c(1,rectangle,long,not_double,jagged,3,l(hexagon,2))]),-1,3).
example(east([c(1,rectangle,long,not_double,flat,2,l(circle,1))]),-1,6).
example(east([c(1,rectangle,long,not_double,flat,2,l(utriangle,3))]),-1,8).
example(east([c(1,rectangle,long,not_double,flat,3,l(hexagon,2))]),-1,6).
example(east([c(1,rectangle,long,not_double,jagged,2,l(rectangle,2))]),-1,9).
example(east([c(1,rectangle,long,not_double,jagged,3,l(hexagon,1))]),-1,6).
example(east([c(1,rectangle,long,not_double,jagged,2,l(hexagon,3))]),-1,10).
example(east([c(1,rectangle,long,not_double,jagged,2,l(utriangle,2))]),-1,10).
example(east([c(1,rectangle,long,not_double,flat,3,l(hexagon,2))]),-1,5).
example(east([c(1,rectangle,long,not_double,jagged,3,l(utriangle,1))]),-1,8).
example(east([c(1,rectangle,long,not_double,jagged,3,l(hexagon,2))]),-1,7).
