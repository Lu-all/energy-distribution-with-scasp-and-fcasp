neg_2 :-
     not neg_1.
accept_membership :-
     met_minimum_resource_contribution,
     met_requirement,
     low_consumption.
met_requirement :-
     low_carbon_emissions.
low_carbon_emissions :-
     cooperative_test_passed.
low_consumption :-
     cooperative_test_passed.
last_exam_failed :-
     not neg_2.
neg_1 :-
     not cooperative_test_passed.
