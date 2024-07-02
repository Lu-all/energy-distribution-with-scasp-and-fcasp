accept_membership :-
    met_minimum_resource_contribution,
    met_requirement,
    low_consumption.

met_requirement :-
    low_carbon_emissions.

low_carbon_emissions :-
    low_carbon_certification.
low_carbon_emissions :-
    cooperative_test_passed.

met_requirement :-
    met_minimal_work_quality.

met_requirement :-
    wildlife_protection.

met_requirement :-
    special_condition.

special_condition :-
    gender_based_violence_victim.

special_condition :-
    disability_condition.

low_consumption:-
    energy_efficiency_certificate.
low_consumption:-
    green_energy_generation.
low_consumption:-
    cooperative_test_passed.

energy_efficiency_certificate:-
    external_certificate. %
energy_efficiency_certificate:-
    cooperative_test_passed.

cooperative_test_passed:-
    onsite_exam_passed. %
cooperative_test_passed:-
    green_energy_generation,
    not last_exam_failed.

last_exam_failed:-
    not energy_efficiency_certificate.

