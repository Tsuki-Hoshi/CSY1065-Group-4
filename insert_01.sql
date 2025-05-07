-- Branches
INSERT INTO branches
VALUES (SEQ_BRANCHES.NEXTVAL, 'NORTHAMPTON', 'WATERSIDE CAMPUS', 'UNIVERSITY DRIVE', 'NN1 5PH', DEFAULT);

INSERT INTO branches (branch_id, branch_name, house, street, postcode, rating)
VALUES (SEQ_BRANCHES.NEXTVAL, 'WELLINGBOROUGH', 'NAT CAMPUS', 'FINDEON ROAD', 'NN8 5PH', 'B');

INSERT INTO branches (branch_id, branch_name, house, street, postcode, rating)
VALUES (SEQ_BRANCHES.NEXTVAL, 'BEDFORD', 'JUNYO CAMPUS', 'SALAZAR ROAD', 'MK40 9LE', 'C');

INSERT INTO branches (branch_id, branch_name, house, street, postcode, rating)
VALUES (SEQ_BRANCHES.NEXTVAL, 'LONDON', 'YAMEEN CAMPUS', 'SILENT HILL', 'SW1 0OE', 'D');

INSERT INTO branches (branch_id, branch_name, house, street, postcode, rating)
VALUES (SEQ_BRANCHES.NEXTVAL, 'LUTON', 'LAKESIDE', 'SANDFORD STREET', 'LU1 5AR', 'A');

-- Surgeries
INSERT INTO surgeries (surgery_id, surgery_date, surgery_type, branch_id)
VALUES (SEQ_SURGERIES.NEXTVAL, '30-APR-2025', 'SPAY', 1);

INSERT INTO surgeries (surgery_id, surgery_date, surgery_type, branch_id)
VALUES (SEQ_SURGERIES.NEXTVAL, '25-MAR-2025', 'LACERATION', 2);

INSERT INTO surgeries (surgery_id, surgery_date, surgery_type, branch_id)
VALUES (SEQ_SURGERIES.NEXTVAL, '12-DEC-2025', 'EYE SURGERY', 3);

INSERT INTO surgeries (surgery_id, surgery_date, surgery_type, branch_id)
VALUES (SEQ_SURGERIES.NEXTVAL, '19-FEB-2025', 'TUMOR REMOVAL', 4);

INSERT INTO surgeries (surgery_id, surgery_date, surgery_type, branch_id)
VALUES (SEQ_SURGERIES.NEXTVAL, '20-AUG-2025', 'LACERATION', 5);

-- Vets

INSERT INTO vets (vet_id, job_role, title, first_name, last_name, phone_number, surgery_id)
VALUES (SEQ_VETS.NEXTVAL, 'SURGEON', 'DR.', 'DARREN', 'WATKINS', '01234567890', 1);

INSERT INTO vets (vet_id, job_role, title, first_name, last_name, phone_number, surgery_id)
VALUES (SEQ_VETS.NEXTVAL, 'NURSE', 'NURSE', 'EREN', 'JEAGER', '07306036151', 2);

INSERT INTO vets (vet_id, job_role, title, first_name, last_name, phone_number, surgery_id)
VALUES (SEQ_VETS.NEXTVAL, 'GROOMER', 'GROOMER', 'ZEKE', 'JEAGER', '98765432100', 3);

INSERT INTO vets (vet_id, job_role, title, first_name, last_name, phone_number, surgery_id)
VALUES (SEQ_VETS.NEXTVAL, 'ANIMAL CARE', 'DR.', 'PHIL', 'FODEN', '03216549870', 4);

INSERT INTO vets (vet_id, job_role, title, first_name, last_name, phone_number, surgery_id)
VALUES (SEQ_VETS.NEXTVAL, 'RECEPTIONIST', 'MR', 'ERLING', 'HAALAND', '98761524300', 5);

-- Animals

INSERT INTO animals (pet_number, breed, species, date_of_birth, gender, animal_weight, animal_name)
VALUES (SEQ_ANIMALS.NEXTVAL, 'LABRADOR', 'DOG', '24-JAN-2020', 'M', 30.50, 'BUDDY');

INSERT INTO animals (pet_number, breed, species, date_of_birth, gender, animal_weight, animal_name)
VALUES (SEQ_ANIMALS.NEXTVAL, 'BULLDOG', 'DOG', '15-FEB-2019', 'F', 39.68, 'TIMMOTHY');

INSERT INTO animals (pet_number, breed, species, date_of_birth, gender, animal_weight, animal_name)
VALUES (SEQ_ANIMALS.NEXTVAL, 'POODLE', 'DOG', '10-DEC-2020', 'M', 63.93, 'DARIUS');

INSERT INTO animals (pet_number, breed, species, date_of_birth, gender, animal_weight, animal_name)
VALUES (SEQ_ANIMALS.NEXTVAL, 'CHIHUAHUA', 'DOG', '11-FEB-2021', 'F', 6.60, 'CHRIS');

INSERT INTO animals (pet_number, breed, species, date_of_birth, gender, animal_weight, animal_name)
VALUES (SEQ_ANIMALS.NEXTVAL, 'DACHSHUND', 'DOG', '25-DEC-2022', 'F', 19.52, 'GAREN');

-- Appointments

INSERT INTO appointments (vet_id, pet_number, appointment_date, fee)
VALUES (1, 1, '30-APR-2025', 85.00);

INSERT INTO appointments (vet_id, pet_number, appointment_date, fee)
VALUES (2, 2, '15-DEC-2025', 50.00);

INSERT INTO appointments (vet_id, pet_number, appointment_date, fee)
VALUES (3, 3, '11-SEP-2025', 60.00);

INSERT INTO appointments (vet_id, pet_number, appointment_date, fee)
VALUES (4, 4, '25-OCT-2025', 40.00);

INSERT INTO appointments (vet_id, pet_number, appointment_date, fee)
VALUES (5, 5, '24-AUG-2025', 50.00);

-- Treatments

INSERT INTO treatments (treatment_id, treatment_name, treatment_description, appointment_date, duration, vet_id, pet_number)
VALUES (SEQ_TREATMENTS.NEXTVAL, 'VACCINATION', 'RABIES VACCINE', '30-APR-2025', 15, 1, 1);

INSERT INTO treatments (treatment_id, treatment_name, treatment_description, appointment_date, duration, vet_id, pet_number)
VALUES (SEQ_TREATMENTS.NEXTVAL, 'MEDICATION', 'CEPHALEXIN', '15-DEC-2025', 20, 2, 2);

INSERT INTO treatments (treatment_id, treatment_name, treatment_description, appointment_date, duration, vet_id, pet_number)
VALUES (SEQ_TREATMENTS.NEXTVAL, 'MEDICATION', 'PENCILLIN', '11-SEP-2025', 20, 3, 3);

INSERT INTO treatments (treatment_id, treatment_name, treatment_description, appointment_date, duration, vet_id, pet_number)
VALUES (SEQ_TREATMENTS.NEXTVAL, 'VACCINATION', 'BORDETELLA', '25-OCT-2025', 10, 4, 4);

INSERT INTO treatments (treatment_id, treatment_name, treatment_description, appointment_date, duration, vet_id, pet_number)
VALUES (SEQ_TREATMENTS.NEXTVAL, 'MEDICATION', 'ANTIPARASITICS', '24-AUG-2025', 20, 5, 5);

-- Tests

INSERT INTO tests (test_id, test_name, category, test_type)
VALUES (SEQ_TESTS.NEXTVAL, 'BLOOD', 'HEMATOLOGY', 'CHECK UP');

INSERT INTO tests (test_id, test_name, category, test_type)
VALUES (SEQ_TESTS.NEXTVAL, 'FECAL', 'PARASITOLOGY', 'CHECK UP');

INSERT INTO tests (test_id, test_name, category, test_type)
VALUES (SEQ_TESTS.NEXTVAL, 'X RAY', 'IMAGING', 'CHECK UP');

INSERT INTO tests (test_id, test_name, category, test_type)
VALUES (SEQ_TESTS.NEXTVAL, 'ULTRASOUND', 'IMAGING', 'CHECK UP');

INSERT INTO tests (test_id, test_name, category, test_type)
VALUES (SEQ_TESTS.NEXTVAL, 'THYROID', 'ENDOCRINOLOGY', 'CHECK UP');

-- Results

INSERT INTO results (test_id, vet_id, pet_number, result_date, outcome)
VALUES (1, 1, 1, '14-JUL-2025', 'NORMAL');

INSERT INTO results (test_id, vet_id, pet_number, result_date, outcome)
VALUES (2, 2, 2, '28-MAY-2025', 'SERIOUS');

INSERT INTO results (test_id, vet_id, pet_number, result_date, outcome)
VALUES (3, 3, 3, '30-JAN-2025', 'NORMAL');

INSERT INTO results (test_id, vet_id, pet_number, result_date, outcome)
VALUES (4, 4, 4, '21-APR-2025', 'CONCERN');

INSERT INTO results (test_id, vet_id, pet_number, result_date, outcome)
VALUES (5, 5, 5, '12-APR-2025', 'NORMAL');

-- Medications

INSERT INTO medications (medication_id, medication_name, medication_description)
VALUES (SEQ_MEDICATIONS.NEXTVAL, 'AMOXICILLIN', 'ANTIBIOTIC FOR BACTERIAL INFECTIONS');

INSERT INTO medications (medication_id, medication_name, medication_description)
VALUES (SEQ_MEDICATIONS.NEXTVAL, 'CEPHALEXIN', 'ANTIBIOTIC FOR BACTERIAL INFECTIONS');

INSERT INTO medications (medication_id, medication_name, medication_description)
VALUES (SEQ_MEDICATIONS.NEXTVAL, 'MELOXICAM', 'PAIN RELIEVER');

INSERT INTO medications (medication_id, medication_name, medication_description)
VALUES (SEQ_MEDICATIONS.NEXTVAL, 'DIAZEPAM', 'SEDATIVES');

INSERT INTO medications (medication_id, medication_name, medication_description)
VALUES (SEQ_MEDICATIONS.NEXTVAL, 'IVERMECTIN', 'ANTI-PARASITICS');

-- Prescriptions

INSERT INTO prescriptions (medication_id, pet_number, quantity, dosage)
VALUES (1, 1, 11, '20mg');

INSERT INTO prescriptions (medication_id, pet_number, quantity, dosage)
VALUES (2, 2, 8, '30mg');

INSERT INTO prescriptions (medication_id, pet_number, quantity, dosage)
VALUES (3, 3, 13, '40mg');

INSERT INTO prescriptions (medication_id, pet_number, quantity, dosage)
VALUES (4, 4, 11, '50mg');

INSERT INTO prescriptions (medication_id, pet_number, quantity, dosage)
VALUES (5, 5, 13, '60mg');
-- Committing
COMMIT;
/*
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
