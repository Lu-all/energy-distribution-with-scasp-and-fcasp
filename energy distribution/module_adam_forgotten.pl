
% Salary

salary(adam, X):-
    X = 3000.

salary(eric, Salary):-
    S0 = 1200,
    S1 = 100,
    S2 = 100,
    Salary is S0 + S1 + S2.

salary(mary, Salary):-
    S0 = 1200,
    S1 = 150,
    S2 = 0,
    Salary is S0 + S1 + S2.

% Productivity

productivity(eric, Productivity):-
    P0 = 110,
    P1 = 2000,
    Productivity is P0 + P1.

productivity(mary, Productivity):-
    P0 = 100,
    P1 = 1950,
    Productivity is P0 + P1.