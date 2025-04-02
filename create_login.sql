CREATE TABLE branches (
branch_id NUMBER(3),
name VARCHAR(25),
house VARCHAR(15),
street VARCHAR(20),
postcode VARCHAR(7),
rating CHAR(1) DEFAULT 'D'
);

CREATE TABLE surgeries (
surgery_id NUMBER(5),
surgery_date DATE,
type VARCHAR(8),
branch_id NUMBER(3)
);

CREATE TABLE vets (
vet_id NUMBER(3),
job_role VARCHAR(12),
title VARCHAR(15),
first_name VARCHAR(16),
last_name VARCHAR(20),
phone_number VARCHAR(13),
surgery_id NUMBER(5)
);

CREATE TABLE animals (
pet_number NUMBER(5),
breed VARCHAR(20),
species VARCHAR(20),
date_of_birth DATE,
gender CHAR(1),
weight NUMBER(5,2),
name VARCHAR(15)
);

CREATE TABLE appointments (
vet_id NUMBER(3),
pet_number NUMBER(5),
appointment_date DATE,
fee NUMBER(6,2)
);

CREATE TABLE treatments (
treatment_id NUMBER(5),
name VARCHAR(20),
description VARCHAR(40),
appointment_date DATE,
duration NUMBER(4),
vet_id NUMBER(3),
pet_number NUMBER(5)
);

CREATE TABLE tests (
test_id NUMBER(5),
name VARCHAR(20),
category VARCHAR(20),
type VARCHAR(10)
);

CREATE TABLE results (
test_id NUMBER(5),
vet_id NUMBER(3),
pet_number NUMBER(5),
result_date DATE,
outcome VARCHAR(20) DEFAULT 'NO ACTION'
);

CREATE TABLE medications (
medication_id NUMBER(5),
name VARCHAR(20),
description VARCHAR(40)
);

CREATE TABLE prescriptions (
medication_id NUMBER(5),
animal_id NUMBER(5),
quantity NUMBER(3),
dosage VARCHAR(20)
);

COMMIT;