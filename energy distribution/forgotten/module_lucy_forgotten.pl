
% Salary

salary(lucy, X):-
    X = 4000.

salary(julie, Salary):-
    S0 = 1000,
    S1 = 100,
    Salary is S0 + S1.

salary(jean, Salary):-
    S0 = 1000,
    S1 = 200,
    Salary is S0 + S1.

salary(jane, Salary):-
    S0 = 1000,
    S1 = 300,
    Salary is S0 + S1.

% Productivity

productivity(julie, Productivity):-
    P0 = 100,
    P1 = 10,
    P2 = 1100,
    Productivity is P0 + P1 + P2.

productivity(jean, Productivity):-
    P0 = 200,
    P1 = 50,
    P2 = 1200,
    Productivity is P0 + P1 + P2.

productivity(jane, Productivity):-
    P0 = 300,
    P1 = 0,
    P2 = 1000,
    Productivity is P0 + P1 + P2.

