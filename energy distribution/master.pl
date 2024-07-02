
?- percentages(Percentages).

%%% Points by employer

percentages([adam(PercentageAdam), lucy(PercentageLucy), alex(PercentageAlex)]):-
    fair_income_adam(PAm),
    fair_income_lucy(PL),
    fair_income_alex(PAx),
    Max #= PAm + PL + PAx,
    ponder(PAm, Max, PercentageAdam),
    ponder(PL, Max, PercentageLucy),
    ponder(PAx, Max, PercentageAlex).

ponder(Inicial, Max, Final):-
    Final1 #= Inicial * 100,
    Final #= Final1 / Max.

% Fair income
fair_income_adam(Points):-
    salary(eric, S1),
    salary(mary, S2),
    productivity(eric, P1),
    productivity(mary, P2),
    FI1 #= P1 / S1,
    FI2 #= P2 / S2,
    Sum #= FI1 + FI2,
    Points #= Sum / 2.

fair_income_lucy(Points):-
    salary(julie, S1),
    salary(jean, S2),
    salary(jane, S3),
    productivity(julie, P1),
    productivity(jean, P2),
    productivity(jane, P3),
    FI1 #= P1 / S1,
    FI2 #= P2 / S2,
    FI3 #= P3 / S3,
    Sum #= FI1 + FI2 + FI3,
    Points #= Sum / 3.

fair_income_alex(Points):-
    salary(boris, S1),
    salary(bea, S2),
    productivity(boris, P1),
    productivity(bea, P2),
    FI1 #= P1 / S1,
    FI2 #= P2 / S2,
    Sum #= FI1 + FI2,
    Points #= Sum / 2.