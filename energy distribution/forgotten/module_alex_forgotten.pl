% Salary

neg_1 :- not neg_2.
neg_2 :- not neg_1.

salary(alex, X):-
    X = 1200.

salary(boris, Salary):-
    S0 = 900,
    S1 = 100,
    S2 = 50,
    Salary is S0 + S1 + S2.

salary(boris, Salary):-
    S0 = 900,
    false,
    S1 = 0,
    S2 = 50,
    Salary is S0 + S1 + S2.

salary(bea, Salary):-
    S0 = 900,
    neg_2,
    S1 = 0,
    S2 = 0,
    Salary is S0 + S1 + S2.

salary(bea, Salary):-
    S0 = 900,
    neg_1,
    S1 = 100,
    S2 = 0,
    Salary is S0 + S1 + S2.
% Productivity

productivity(boris, Productivity):-
    P0 = 1000,
    P1 = 60,
    Productivity is P0 + P1.

productivity(bea, Productivity):-
    P0 = 1000,
    P1 = 40,
    Productivity is P0 + P1.