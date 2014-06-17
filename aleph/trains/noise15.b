:- determination(east/1, peaked/1).
:- determination(east/1, rectangle/1).
:- determination(east/1, east/1).
:- determination(east/1, has_car/2).
:- determination(east/1, in_front/3).
:- determination(east/1, jagged/1).
:- determination(east/1, flat/1).
:- determination(east/1, double/1).
:- determination(east/1, u_chaped/1).
:- determination(east/1, open/1).
:- determination(east/1, wheels/2).
:- determination(east/1, load/3).
:- determination(east/1, bucket/1).
:- determination(east/1, arc/1).
:- determination(east/1, none/1).
:- determination(east/1, closed/1).
:- determination(east/1, long/1).
:- determination(east/1, hexagon/1).
:- determination(east/1, short/1).
:- determination(east/1, has_roof/2).
:- determination(east/1, ellipse/1).
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
