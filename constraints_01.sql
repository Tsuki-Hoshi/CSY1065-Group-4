-- CSY1065 AS2 Group 4: Constraints
-- Done By Junyo, Natnael, Warren, Yameen
/*
CSY1065_227@database/23855548
@C:\GitHub\CSY1065-Group-4\create_login.sql
@C:\GitHub\CSY1065-Group-4\constraints_01.sql

@C:\GitHub\CSY1065-Group-4\drop_01.sql
*/
/* Command List:
-- Describe Table Structure
DESC table_name;

-- List All Tables
SELECT TNAME FROM TAB;

-- Show All Constraints
SELECT CONSTRAINT_NAME, TABLENAME
FROM USER_CONSTRAINT;

-- Show All Sequences
SELECT SEQUENCE_NAME
FROM USER_SEQUENCES;

-- Drop Table
DROP TABLE table_name;
*/

-- Adding Primary Key Constraints , 10 Total

ALTER TABLE branches
ADD CONSTRAINT pk_branches
PRIMARY KEY (branch_id);

ALTER TABLE surgeries
ADD CONSTRAINT pk_surgeries
PRIMARY KEY (surgery_id);

ALTER TABLE vets
ADD CONSTRAINT pk_vets
PRIMARY KEY (vet_id);

ALTER TABLE animals
ADD CONSTRAINT pk_animals
PRIMARY KEY (pet_number);

ALTER TABLE appointments
ADD CONSTRAINT pk_appointments
PRIMARY KEY (vet_id, pet_number, appointment_date);

ALTER TABLE treatments
ADD CONSTRAINT pk_treatments
PRIMARY KEY (treatment_id);

ALTER TABLE tests
ADD CONSTRAINT pk_tests
PRIMARY KEY (test_id);

ALTER TABLE results
ADD CONSTRAINT pk_results
PRIMARY KEY (test_id, vet_id, pet_number);

ALTER TABLE medications
ADD CONSTRAINT pk_medications
PRIMARY KEY (medication_id);

ALTER TABLE prescriptions
ADD CONSTRAINT pk_prescriptions
PRIMARY KEY (medication_id, pet_number);

-- Adding Foreign Key Constraints , 10

ALTER TABLE surgeries
ADD CONSTRAINT fk_s_branches
FOREIGN KEY (branch_id)
REFERENCES branches (branch_id);

ALTER TABLE vets
ADD CONSTRAINT fk_v_surgeries
FOREIGN KEY (surgery_id)
REFERENCES surgeries (surgery_id);

ALTER TABLE appointments
ADD CONSTRAINT fk_a_vets
FOREIGN KEY (vet_id)
REFERENCES vets (vet_id);

ALTER TABLE appointments
ADD CONSTRAINT fk_a_animals
FOREIGN KEY (pet_number)
REFERENCES animals (pet_number);

ALTER TABLE treatments
ADD CONSTRAINT fk_t_appointments
FOREIGN KEY (vet_id, pet_number, appointment_date)
REFERENCES appointments (vet_id, pet_number, appointment_date);

ALTER TABLE results
ADD CONSTRAINT fk_r_tests
FOREIGN KEY (test_id)
REFERENCES tests (test_id);

ALTER TABLE results
ADD CONSTRAINT fk_r_vets
FOREIGN KEY (vet_id)
REFERENCES vets (vet_id);

ALTER TABLE results
ADD CONSTRAINT fk_r_animals
FOREIGN KEY (pet_number)
REFERENCES animals (pet_number);

ALTER TABLE prescriptions
ADD CONSTRAINT fk_p_medications
FOREIGN KEY (medication_id)
REFERENCES medications (medication_id);

ALTER TABLE prescriptions
ADD CONSTRAINT fk_p_animals
FOREIGN KEY (pet_number)
REFERENCES animals (pet_number);

-- Committing

COMMIT;
