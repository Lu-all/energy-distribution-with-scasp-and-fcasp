
% Salary

base_salary(eric, X):-
    X = 1200.
base_salary(mary, X):-
    X = 1200.

distance_home_work(eric, X):-
    X = 100.
distance_home_work(mary, X):-
    X = 150.

has_children(eric, X):-
    X = 100.
has_children(mary, X):-
    X = 0.

salary(adam, X):-
    X = 3000.

salary(eric, Salary):-
    base_salary(eric, S0),
    distance_home_work(eric, S1),
    has_children(eric, S2),
    Salary is S0 + S1 + S2.

salary(mary, Salary):-
    base_salary(mary, S0),
    distance_home_work(mary, S1),
    has_children(mary, S2),
    Salary is S0 + S1 + S2.

% Productivity

punctuality(eric, X):-
    X = 110.
punctuality(mary, X):-
    X = 100.

benefits(eric, X):-
    X = 2000.

benefits(mary, X):-
    X = 1950.

productivity(eric, Productivity):-
    punctuality(eric, P0),
    benefits(eric, P1),
    Productivity is P0 + P1.

productivity(mary, Productivity):-
    punctuality(mary, P0),
    benefits(mary, P1),
    Productivity is P0 + P1.

