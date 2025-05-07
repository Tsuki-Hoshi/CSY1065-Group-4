-- Dropping Foreign Key Constraints

ALTER TABLE surgeries
DROP CONSTRAINT fk_s_branches;

ALTER TABLE vets
DROP CONSTRAINT fk_v_surgeries;

ALTER TABLE appointments
DROP CONSTRAINT fk_a_vets;

ALTER TABLE appointments
DROP CONSTRAINT fk_a_animals;

ALTER TABLE treatments
DROP CONSTRAINT fk_t_appointments;

ALTER TABLE results
DROP CONSTRAINT fk_r_tests;

ALTER TABLE results
DROP CONSTRAINT fk_r_vets;

ALTER TABLE results
DROP CONSTRAINT fk_r_animals;

ALTER TABLE prescriptions
DROP CONSTRAINT fk_p_medications;

ALTER TABLE prescriptions
DROP CONSTRAINT fk_p_animals;


-- Dropping Primary Key Constraints

ALTER TABLE branches
DROP CONSTRAINT pk_branches;

ALTER TABLE surgeries
DROP CONSTRAINT pk_surgeries;

ALTER TABLE vets
DROP CONSTRAINT pk_vets;

ALTER TABLE animals
DROP CONSTRAINT pk_animals;

ALTER TABLE appointments
DROP CONSTRAINT pk_appointments;

ALTER TABLE treatments
DROP CONSTRAINT pk_treatments;

ALTER TABLE tests
DROP CONSTRAINT pk_tests;

ALTER TABLE results
DROP CONSTRAINT pk_results;

ALTER TABLE medications
DROP CONSTRAINT pk_medications;

ALTER TABLE prescriptions
DROP CONSTRAINT pk_prescriptions;


-- Dropping Tables

DROP TABLE prescriptions;
DROP TABLE medications;
DROP TABLE results;
DROP TABLE tests;
DROP TABLE treatments;
DROP TABLE appointments;
DROP TABLE animals;
DROP TABLE vets;
DROP TABLE surgeries;
DROP TABLE branches;

-- Dropping Sequences
DROP SEQUENCE seq_branches;
DROP SEQUENCE seq_surgeries;
DROP SEQUENCE seq_vets;
DROP SEQUENCE seq_animals;
DROP SEQUENCE seq_treatments;
DROP SEQUENCE seq_tests;
DROP SEQUENCE seq_medications;

-- Purging Tables And Committing

PURGE RECYCLEBIN;

COMMIT;

/*
Command:

--Describes the table structure
DESC table_name;

--Lists all tables
SELECT TNAME FROM TAB;

--Shows all constraints
SELECT CONSTRAINT_NAME, TABLENAME
FROM USER_CONSTRAINT;

--Deletes the table
DROP TABLE table_name;
*/