
% Salary

base_salary(julie, X):-
    X = 1000.
base_salary(jean, X):-
    X = 1000.
base_salary(jane, X):-
    X = 1000.

studies(julie, X):-
    X = 100.
studies(jean, X):-
    X = 200.
studies(jane, X):-
    X = 300.

salary(lucy, X):-
    X = 4000.

salary(julie, Salary):-
    base_salary(julie, S0),
    studies(julie, S1),
    Salary is S0 + S1.

salary(jean, Salary):-
    base_salary(jean, S0),
    studies(jean, S1),
    Salary is S0 + S1.

salary(jane, Salary):-
    base_salary(jane, S0),
    studies(jane, S1),
    Salary is S0 + S1.

% Productivity

punctuality(julie, X):-
    X = 100.
punctuality(jean, X):-
    X = 200.
punctuality(jane, X):- 
    X = 300.

overtime_hours(julie, X):-
    X = 10.
overtime_hours(jean, X):-
    X = 50.
overtime_hours(jane, X):-
    X = 0.

benefits(julie, X):-
    X = 1100.
benefits(jean, X):-
    X = 1200.
benefits(jane, X):-
    X = 1000.

productivity(julie, Productivity):-
    punctuality(julie, P0),
    overtime_hours(julie, P1),
    benefits(julie, P2),
    Productivity is P0 + P1 + P2.

productivity(jean, Productivity):-
    punctuality(jean, P0),
    overtime_hours(jean, P1),
    benefits(jean, P2),
    Productivity is P0 + P1 + P2.

productivity(jane, Productivity):-
    punctuality(jane, P0),
    overtime_hours(jane, P1),
    benefits(jane, P2),
    Productivity is P0 + P1 + P2.
