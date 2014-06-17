testML.*:
- cons(T) :- \+(has_car(T, C), closed(C), not(short(C))).

- east(T) :- has_car(T, C), \+ (rectangle(C), \+ jagged(C)).

art2.*:
- east(T) :- \+ (has_car(T, C), short(C), rectangle(C)).

art3.*:
- east(T) :- has_car(T, C), \+ short(C).
- east(T) :- has_car(T, C), \+ rectangle(C).

noiseXX.*:
- the concept is eqaul to art2, but with XX% noisy examples