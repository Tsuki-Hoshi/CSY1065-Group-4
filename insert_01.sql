INSERT INTO branches (branch_id, branch_name, house, street, postcode, rating)
VALUES (1, 'NORTHAMPTON BRANCH', 'WATERSIDE CAMPUS', 'UNIVERSITY DRIVE', 'NN1 5PH', 'A');

INSERT INTO surgeries (surgery_id, surgery_date, surgery_type, branch_id)
VALUES (1, '30-APR-2025', 'SPAY', 1);

INSERT INTO vets (vet_id, job_role, title, first_name, last_name, phone_number, surgery_id)
VALUES (1, 'SURGEON', 'DR.', 'DARREN', 'WATKINS', '01234567890', 1);

INSERT INTO animals (pet_number, breed, species, date_of_birth, gender, animal_weight, animal_name)
VALUES (1, 'LABRADOR', 'DOG', '24-JAN-2020', 'M', 30.50, 'BUDDY');

INSERT INTO appointments (vet_id, pet_number, appointment_date, fee)
VALUES (1, 1, '30-APR-2025', 85.00);

INSERT INTO treatments (treatment_id, treatment_name, treatment_description, appointment_date, duration, vet_id, pet_number)
VALUES (1, 'VACCINATION', 'RABIES VACCINE', '30-APR-2025', 15, 1, 1);

INSERT INTO tests (test_id, test_name, category, test_type)
VALUES (1, 'BLOOD TEST', 'HEMATOLOGY', 'ROUTINE');

INSERT INTO results (test_id, vet_id, pet_number, result_date, outcome)
VALUES (1, 1, 1, '30-APR-2025', 'NORMAL');

INSERT INTO medications (medication_id, medication_name, medication_description)
VALUES (1, 'AMOXICILLIN', 'ANTIBIOTIC FOR BACTERIAL INFECTIONS');

INSERT INTO prescriptions (medication_id, pet_number, quantity, dosage)
VALUES (1, 1, 10, '2 PER DAY');

COMMIT;
