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

:- [trainsbk].
example(east([c(1,u_shaped,long,not_double,flat,3,nil)]),1,1).
example(east([c(1,ellipse,short,not_double,arc,2,l(rectangle,2))]),1,9).
example(east([c(1,bucket,long,not_double,none,2,l(rectangle,3))]),1,2).
example(east([c(1,ellipse,short,not_double,arc,2,l(rectangle,2))]),1,10).
example(east([c(1,bucket,long,not_double,jagged,2,nil)]),1,2).
example(east([c(1,ellipse,short,not_double,arc,2,l(rectangle,1))]),1,2).
example(east([c(1,rectangle,long,not_double,jagged,2,l(utriangle,2))]),1,3).
example(east([c(1,hexagon,long,not_double,jagged,3,l(utriangle,3))]),1,4).
example(east([c(1,bucket,short,not_double,flat,2,l(circle,1))]),1,1).
example(east([c(1,u_shaped,short,not_double,flat,2,l(triangle,2))]),1,9).
example(east([c(1,ellipse,short,not_double,arc,2,l(triangle,1))]),-1,9).
example(east([c(1,rectangle,long,not_double,none,2,l(hexagon,3))]),1,2).
example(east([c(1,ellipse,short,not_double,arc,2,l(rectangle,2))]),1,7).
example(east([c(1,bucket,short,not_double,none,2,l(triangle,1))]),1,5).
example(east([c(1,ellipse,short,not_double,arc,2,l(rectangle,1))]),-1,4).
example(east([c(1,bucket,short,not_double,flat,2,l(diamond,1))]),-1,2).
example(east([c(1,bucket,short,not_double,none,2,l(circle,1))]),1,10).
example(east([c(1,bucket,short,not_double,flat,2,l(diamond,1))]),1,6).
example(east([c(1,rectangle,long,not_double,jagged,2,l(hexagon,1))]),1,3).
example(east([c(1,ellipse,short,not_double,arc,2,l(circle,2))]),1,1).
example(east([c(1,hexagon,long,not_double,flat,3,nil)]),1,7).
example(east([c(1,bucket,long,not_double,jagged,2,l(circle,2))]),1,7).
example(east([c(1,bucket,long,not_double,jagged,3,l(hexagon,2))]),1,7).
example(east([c(1,hexagon,long,not_double,jagged,3,l(utriangle,2))]),1,8).
example(east([c(1,bucket,short,not_double,peaked,2,l(triangle,2))]),1,10).
example(east([c(1,bucket,short,not_double,none,2,l(rectangle,2))]),1,8).
example(east([c(1,ellipse,long,not_double,jagged,3,l(circle,3))]),-1,3).
example(east([c(1,hexagon,long,not_double,flat,2,l(rectangle,1))]),1,2).
example(east([c(1,hexagon,long,not_double,jagged,3,l(hexagon,3))]),1,5).
example(east([c(1,rectangle,long,not_double,jagged,2,l(circle,1))]),1,8).
example(east([c(1,bucket,long,not_double,flat,3,nil)]),1,6).
example(east([c(1,bucket,long,not_double,none,2,l(rectangle,3))]),-1,6).
example(east([c(1,hexagon,short,not_double,flat,2,l(rectangle,1))]),1,10).
example(east([c(1,rectangle,long,not_double,flat,3,nil)]),1,3).
example(east([c(1,u_shaped,long,not_double,flat,3,l(utriangle,2))]),-1,5).
example(east([c(1,ellipse,long,not_double,flat,2,l(hexagon,1))]),1,4).
example(east([c(1,u_shaped,long,not_double,none,2,l(circle,3))]),1,2).
example(east([c(1,u_shaped,long,not_double,flat,3,l(rectangle,1))]),1,8).
example(east([c(1,rectangle,long,not_double,jagged,2,l(rectangle,3))]),1,5).
example(east([c(1,ellipse,long,not_double,jagged,2,l(rectangle,3))]),1,2).
example(east([c(1,bucket,long,not_double,flat,2,l(rectangle,1))]),1,5).
example(east([c(1,rectangle,long,not_double,jagged,3,l(hexagon,2))]),1,9).
example(east([c(1,bucket,long,not_double,jagged,2,nil)]),1,3).
example(east([c(1,bucket,short,not_double,flat,2,l(diamond,2))]),1,1).
example(east([c(1,u_shaped,short,not_double,none,2,l(diamond,2))]),-1,6).
example(east([c(1,u_shaped,short,not_double,flat,2,l(triangle,1))]),-1,4).
example(east([c(1,hexagon,short,not_double,flat,2,l(triangle,1))]),-1,3).
example(east([c(1,u_shaped,long,not_double,none,3,l(utriangle,3))]),1,6).
example(east([c(1,bucket,long,not_double,jagged,3,l(utriangle,3))]),1,1).
example(east([c(1,bucket,long,not_double,jagged,2,l(utriangle,3))]),-1,10).
example(east([c(1,u_shaped,short,not_double,peaked,2,l(triangle,2))]),-1,8).
example(east([c(1,u_shaped,short,not_double,none,2,l(diamond,2))]),-1,9).
example(east([c(1,ellipse,long,not_double,flat,3,l(hexagon,3))]),-1,2).
example(east([c(1,bucket,long,not_double,jagged,2,l(rectangle,3))]),1,3).
example(east([c(1,ellipse,long,not_double,flat,3,nil)]),1,8).
example(east([c(1,bucket,short,not_double,none,2,l(diamond,1))]),1,1).
example(east([c(1,ellipse,short,not_double,arc,2,l(triangle,2))]),1,6).
example(east([c(1,u_shaped,long,not_double,none,2,l(circle,3))]),-1,5).
example(east([c(1,u_shaped,short,not_double,flat,2,l(rectangle,1))]),1,10).
example(east([c(1,rectangle,short,double,peaked,2,l(circle,1))]),-1,1).
example(east([c(1,rectangle,short,double,peaked,2,l(circle,2))]),1,10).
example(east([c(1,rectangle,short,double,none,2,l(diamond,2))]),-1,8).
example(east([c(1,rectangle,short,double,none,2,l(circle,1))]),-1,2).
example(east([c(1,rectangle,short,double,flat,2,l(diamond,1))]),-1,4).
example(east([c(1,rectangle,short,not_double,none,2,l(rectangle,1))]),1,9).
example(east([c(1,rectangle,short,double,flat,2,l(circle,2))]),-1,2).
example(east([c(1,rectangle,short,double,flat,2,l(rectangle,2))]),-1,6).
example(east([c(1,rectangle,short,double,peaked,2,l(diamond,1))]),-1,7).
example(east([c(1,rectangle,short,not_double,none,2,l(circle,1))]),-1,6).
example(east([c(1,rectangle,short,not_double,flat,2,l(rectangle,2))]),1,5).
example(east([c(1,rectangle,short,not_double,none,2,l(circle,1))]),-1,8).
example(east([c(1,rectangle,short,double,peaked,2,l(circle,2))]),-1,2).
example(east([c(1,rectangle,short,not_double,peaked,2,l(triangle,2))]),-1,8).
example(east([c(1,rectangle,short,double,flat,2,l(diamond,2))]),-1,9).
example(east([c(1,rectangle,short,not_double,none,2,l(circle,1))]),-1,7).
example(east([c(1,rectangle,short,double,flat,2,l(circle,1))]),-1,10).
example(east([c(1,rectangle,short,double,peaked,2,l(triangle,1))]),1,5).
example(east([c(1,rectangle,short,double,flat,2,l(rectangle,1))]),-1,5).
example(east([c(1,rectangle,short,not_double,flat,2,l(circle,1))]),-1,7).
example(east([c(1,rectangle,short,double,peaked,2,l(rectangle,1))]),-1,4).
example(east([c(1,rectangle,short,double,none,2,l(triangle,1))]),1,5).
example(east([c(1,rectangle,short,double,flat,2,l(circle,2))]),1,9).
example(east([c(1,rectangle,short,not_double,none,2,l(rectangle,2))]),-1,10).
example(east([c(1,rectangle,short,not_double,flat,2,l(rectangle,1))]),-1,3).
example(east([c(1,rectangle,short,not_double,none,2,l(rectangle,2))]),1,1).
example(east([c(1,rectangle,short,not_double,peaked,2,l(triangle,1))]),-1,3).
example(east([c(1,rectangle,short,double,flat,2,l(rectangle,1))]),-1,6).
example(east([c(1,rectangle,short,not_double,none,2,l(diamond,2))]),-1,7).
example(east([c(1,rectangle,short,double,flat,2,l(rectangle,1))]),-1,10).
example(east([c(1,rectangle,short,not_double,peaked,2,l(diamond,2))]),-1,1).
example(east([c(1,rectangle,short,double,peaked,2,l(triangle,1))]),-1,1).
example(east([c(1,rectangle,short,not_double,peaked,2,l(circle,1))]),-1,6).
example(east([c(1,rectangle,short,double,none,2,l(diamond,1))]),-1,5).
example(east([c(1,rectangle,short,double,none,2,l(rectangle,1))]),1,4).
example(east([c(1,rectangle,short,double,none,2,l(rectangle,1))]),-1,10).
example(east([c(1,rectangle,short,not_double,peaked,2,l(diamond,2))]),-1,8).
example(east([c(1,rectangle,short,double,none,2,l(diamond,1))]),-1,5).
example(east([c(1,rectangle,short,not_double,none,2,l(triangle,1))]),-1,2).
example(east([c(1,rectangle,short,double,flat,2,l(circle,1))]),1,6).
example(east([c(1,rectangle,short,not_double,none,2,l(rectangle,2))]),-1,9).
example(east([c(1,rectangle,short,not_double,flat,2,l(rectangle,1))]),1,7).
example(east([c(1,rectangle,short,not_double,peaked,2,l(triangle,2))]),-1,2).
example(east([c(1,rectangle,short,double,flat,2,l(circle,1))]),-1,10).
example(east([c(1,rectangle,short,not_double,flat,2,l(rectangle,2))]),-1,10).
example(east([c(1,rectangle,short,double,flat,2,l(triangle,1))]),-1,5).
example(east([c(1,rectangle,short,double,peaked,2,l(rectangle,2))]),-1,1).
example(east([c(1,rectangle,short,double,flat,2,l(rectangle,1))]),-1,9).
example(east([c(1,rectangle,short,not_double,none,2,l(triangle,1))]),1,10).
example(east([c(1,rectangle,short,not_double,none,2,l(circle,2))]),-1,7).
example(east([c(1,rectangle,short,double,none,2,l(triangle,1))]),-1,10).
example(east([c(1,rectangle,short,double,none,2,l(circle,2))]),-1,6).
example(east([c(1,rectangle,short,double,none,2,l(rectangle,1))]),-1,2).
example(east([c(1,rectangle,short,double,none,2,l(rectangle,1))]),-1,4).
example(east([c(1,rectangle,short,double,none,2,l(triangle,1))]),-1,1).
example(east([c(1,rectangle,short,not_double,none,2,l(rectangle,1))]),-1,10).
example(east([c(1,rectangle,short,not_double,none,2,l(circle,1))]),-1,7).
example(east([c(1,rectangle,short,not_double,none,2,l(triangle,1))]),-1,2).
example(east([c(1,rectangle,short,double,peaked,2,l(triangle,2))]),1,6).
