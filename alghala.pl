% Family Tree Knowledge Base

% Male
male(mazen).
male(mohammed).
male(talal).
male(yosef).

% Female
female(sabah).
female(aljouhara).
female(alshahd).
female(alghala).
female(joury).

% Parent relations

parent(mazen, aljouhara).
parent(sabah, aljouhara).

parent(mazen, alshahd).
parent(sabah, alshahd).

parent(mazen, alghala).
parent(sabah, alghala).

parent(mazen, mohammed).
parent(sabah, mohammed).

parent(mazen, talal).
parent(sabah, talal).

parent(aljouhara, joury).
parent(yosef, joury).

% Father Rule
father(X, Y) :-
    male(X),
    parent(X, Y).

% Mother Rule
mother(X, Y) :-
    female(X),
    parent(X, Y).

% Sister Rule
sister(X, Y) :-
    female(X),
    parent(P, X),
    parent(P, Y),
    X \= Y.

% Brother Rule
brother(X, Y) :-
    male(X),
    parent(P, X),
    parent(P, Y),
    X \= Y.
