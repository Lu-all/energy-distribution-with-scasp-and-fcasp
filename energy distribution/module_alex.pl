
% Salary

base_salary(boris, X):-
    X = 900.

base_salary(bea, X):-
    X = 900.

holiday_worked(boris, X):-
    X = 50.

holiday_worked(bea, X):-
    X = 0.

generational_renewal(boris, X):-
    over_40_boris,
    X = 0.

generational_renewal(boris, X):-
    not over_40_boris,
    X = 100.

generational_renewal(bea, X):-
    over_40_bea,
    X = 0.

generational_renewal(bea, X):-
    not over_40_bea,
    X = 100.

over_40_boris:-
    not neg_over_40_boris.
neg_over_40_boris.

over_40_bea:-
    not neg_over_40_bea.
neg_over_40_bea:-
    not over_40_bea.

salary(alex, X):-
    X = 1200.

salary(boris, Salary):-
    base_salary(boris, S0),
    generational_renewal(boris, S1),
    holiday_worked(boris, S2),
    Salary is S0 + S1 + S2.

salary(bea, Salary):-
    base_salary(bea, S0),
    generational_renewal(bea, S1),
    holiday_worked(bea, S2),
    Salary is S0 + S1 + S2.

% Productivity

benefits(boris, X):-
    X = 1000.

benefits(bea, X):-
    X = 1000.

rest(boris, X):-
    X = 60.

rest(bea, X):-
    X = 40.

productivity(boris, Productivity):-
    benefits(boris, P0),
    rest(boris, P1),
    Productivity is P0 + P1.

productivity(bea, Productivity):-
    benefits(bea, P0),
    rest(bea, P1),
    Productivity is P0 + P1.