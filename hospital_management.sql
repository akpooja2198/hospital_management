CREATE DATABASE hospital_management;
USE hospital_management;

CREATE TABLE departments (
    department_id INT PRIMARY KEY AUTO_INCREMENT,
    department_code VARCHAR(10) NOT NULL UNIQUE,
    department_name VARCHAR(100) NOT NULL
);

INSERT INTO departments
    (department_code, department_name)
VALUES
    ('DI-101', 'Cardiology'),
    ('DI-102', 'Neurology'),
    ('DI-103', 'Orthopedics'),
    ('DI-104', 'General Medicine'),
    ('DI-105', 'Pediatrics');
    
INSERT INTO departments
    (department_code, department_name)
VALUES
    ('DI-106', 'Dermatology'),
    ('DI-107', 'ENT'),
    ('DI-108', 'Gastroenterology'),
    ('DI-109', 'Gynecology'),
    ('DI-110', 'Ophthalmology');    

SELECT * FROM departments;

CREATE TABLE doctors (
    doctor_id INT PRIMARY KEY AUTO_INCREMENT,
    doctor_code VARCHAR(10) NOT NULL UNIQUE,
    doctor_name VARCHAR(100) NOT NULL,
    specialization VARCHAR(100),
    department_id INT NOT NULL,
    phone VARCHAR(20),
    email VARCHAR(100),

    FOREIGN KEY (department_id)
        REFERENCES departments(department_id)
);

INSERT INTO doctors
    (doctor_code, doctor_name, specialization, department_id, phone, email)
VALUES
    ('Dr-1001', 'Arun Kumar', 'Cardiologist', 1, '9876543210', 'arun@hospital.com'),
    ('Dr-1002', 'Priya Sharma', 'Neurologist', 2, '9876543211', 'priya@hospital.com'),
    ('Dr-1003', 'Karthik Raj', 'Orthopedic Surgeon', 3, '9876543212', 'karthik@hospital.com'),
    ('Dr-1004', 'Meena Devi', 'General Physician', 4, '9876543213', 'meena@hospital.com'),
    ('Dr-1005', 'Sanjay Kumar', 'Pediatrician', 5, '9876543214', 'sanjay@hospital.com');
    
    INSERT INTO doctors
    (doctor_code, doctor_name, specialization, department_id, phone, email)
VALUES
    ('Dr-1006', 'Nisha Iyer', 'Dermatologist', 11, '9876543215', 'nisha@hospital.com'),
    ('Dr-1007', 'Rajesh Menon', 'ENT Specialist', 12, '9876543216', 'rajesh@hospital.com'),
    ('Dr-1008', 'Kavya Nair', 'Gastroenterologist', 13, '9876543217', 'kavya@hospital.com'),
    ('Dr-1009', 'Deepa Krishnan', 'Gynecologist', 14, '9876543218', 'deepa@hospital.com'),
    ('Dr-1010', 'Vijay Anand', 'Ophthalmologist', 15, '9876543219', 'vijay@hospital.com'),
    ('Dr-1011', 'Ajay Rao', 'Cardiologist', 1, '9876543220', 'ajay@hospital.com'),
    ('Dr-1012', 'Sneha Patel', 'General Physician', 4, '9876543221', 'sneha@hospital.com');
    
    SELECT * FROM doctors;
    
    SELECT
    d.doctor_code,
    d.doctor_name,
    d.specialization,
    dp.department_code,
    dp.department_name
FROM doctors d
JOIN departments dp
    ON d.department_id = dp.department_id;
    
CREATE TABLE patients (
    patient_id INT PRIMARY KEY AUTO_INCREMENT,
    patient_code VARCHAR(10) NOT NULL UNIQUE,
    patient_name VARCHAR(100) NOT NULL,
    gender VARCHAR(10),
    date_of_birth DATE,
    phone VARCHAR(20),
    email VARCHAR(100),
    city VARCHAR(100)
);    

INSERT INTO patients
    (patient_code, patient_name, gender, date_of_birth, phone, email, city)
VALUES
    ('P-10001', 'Ravi Kumar', 'Male', '1985-06-15', '9000000001', 'ravi@gmail.com', 'Chennai'),
    ('P-10002', 'Anitha S', 'Female', '1992-11-20', '9000000002', 'anitha@gmail.com', 'Bengaluru'),
    ('P-10003', 'Suresh Babu', 'Male', '1978-03-08', '9000000003', 'suresh@gmail.com', 'Chennai'),
    ('P-10004', 'Lakshmi R', 'Female', '2000-09-12', '9000000004', 'lakshmi@gmail.com', 'Coimbatore'),
    ('P-10005', 'Manoj K', 'Male', '1995-01-25', '9000000005', 'manoj@gmail.com', 'Madurai');

INSERT INTO patients
    (patient_code, patient_name, gender, date_of_birth, phone, email, city)
VALUES
('P-10006', 'Arun Prakash', 'Male', '1988-04-12', '9000000006', 'arun.p@gmail.com', 'Chennai'),
('P-10007', 'Divya N', 'Female', '1996-07-21', '9000000007', 'divya.n@gmail.com', 'Chennai'),
('P-10008', 'Vignesh R', 'Male', '1991-12-10', '9000000008', 'vignesh@gmail.com', 'Coimbatore'),
('P-10009', 'Keerthana M', 'Female', '1987-05-17', '9000000009', 'keerthana@gmail.com', 'Madurai'),
('P-10010', 'Saravanan K', 'Male', '1975-08-09', '9000000010', 'saravanan@gmail.com', 'Trichy'),
('P-10011', 'Ramya S', 'Female', '1998-02-14', '9000000011', 'ramya@gmail.com', 'Chennai'),
('P-10012', 'Prakash V', 'Male', '1983-10-22', '9000000012', 'prakash@gmail.com', 'Salem'),
('P-10013', 'Nandhini R', 'Female', '1994-03-19', '9000000013', 'nandhini@gmail.com', 'Chennai'),
('P-10014', 'Karthikeyan S', 'Male', '1980-11-03', '9000000014', 'karthikeyan@gmail.com', 'Erode'),
('P-10015', 'Janani P', 'Female', '2001-01-16', '9000000015', 'janani@gmail.com', 'Coimbatore'),
('P-10016', 'Balaji M', 'Male', '1990-06-27', '9000000016', 'balaji@gmail.com', 'Chennai'),
('P-10017', 'Swetha K', 'Female', '1993-09-08', '9000000017', 'swetha@gmail.com', 'Bengaluru'),
('P-10018', 'Dinesh Kumar', 'Male', '1986-12-01', '9000000018', 'dinesh@gmail.com', 'Madurai'),
('P-10019', 'Harini S', 'Female', '1999-04-25', '9000000019', 'harini@gmail.com', 'Chennai'),
('P-10020', 'Ramesh B', 'Male', '1972-07-13', '9000000020', 'ramesh@gmail.com', 'Trichy'),
('P-10021', 'Gayathri V', 'Female', '1995-05-30', '9000000021', 'gayathri@gmail.com', 'Salem'),
('P-10022', 'Sathish R', 'Male', '1989-02-11', '9000000022', 'sathish@gmail.com', 'Chennai'),
('P-10023', 'Monisha A', 'Female', '1997-08-18', '9000000023', 'monisha@gmail.com', 'Coimbatore'),
('P-10024', 'Naveen P', 'Male', '1984-01-07', '9000000024', 'naveen@gmail.com', 'Bengaluru'),
('P-10025', 'Aishwarya K', 'Female', '2000-10-23', '9000000025', 'aishwarya@gmail.com', 'Chennai'),
('P-10026', 'Mohan Raj', 'Male', '1979-03-15', '9000000026', 'mohan@gmail.com', 'Madurai'),
('P-10027', 'Priyanka S', 'Female', '1992-06-06', '9000000027', 'priyanka@gmail.com', 'Chennai'),
('P-10028', 'Ashok Kumar', 'Male', '1985-09-29', '9000000028', 'ashok@gmail.com', 'Salem'),
('P-10029', 'Meera V', 'Female', '1996-12-12', '9000000029', 'meera@gmail.com', 'Trichy'),
('P-10030', 'Gokul R', 'Male', '1993-05-09', '9000000030', 'gokul@gmail.com', 'Chennai');
    
    
    SELECT * FROM patients;

CREATE TABLE appointments (
    appointment_id INT PRIMARY KEY AUTO_INCREMENT,
    appointment_code VARCHAR(10) NOT NULL UNIQUE,
    patient_id INT NOT NULL,
    doctor_id INT NOT NULL,
    appointment_date DATE NOT NULL,
    appointment_time TIME NOT NULL,
    reason VARCHAR(255),
    status VARCHAR(20) NOT NULL,

    FOREIGN KEY (patient_id)
        REFERENCES patients(patient_id),

    FOREIGN KEY (doctor_id)
        REFERENCES doctors(doctor_id)
);    

INSERT INTO appointments
    (appointment_code, patient_id, doctor_id, appointment_date, appointment_time, reason, status)
VALUES
    ('A-50001', 1, 1, '2026-09-01', '10:00:00', 'Chest pain', 'Completed'),
    ('A-50002', 2, 2, '2026-09-02', '11:30:00', 'Headache', 'Completed'),
    ('A-50003', 3, 3, '2026-09-03', '09:45:00', 'Knee pain', 'Cancelled'),
    ('A-50004', 4, 4, '2026-09-05', '14:00:00', 'Fever', 'Completed'),
    ('A-50005', 5, 5, '2026-09-08', '16:15:00', 'Child consultation', 'Scheduled');
    
INSERT INTO appointments
(
    appointment_code,
    patient_id,
    doctor_id,
    appointment_date,
    appointment_time,
    reason,
    status
)
VALUES

('A-50006',
 (SELECT patient_id FROM patients WHERE patient_code = 'P-10006'),
 (SELECT doctor_id FROM doctors WHERE doctor_code = 'Dr-1001'),
 '2026-01-08', '09:30:00', 'Chest discomfort', 'Completed'),

('A-50007',
 (SELECT patient_id FROM patients WHERE patient_code = 'P-10007'),
 (SELECT doctor_id FROM doctors WHERE doctor_code = 'Dr-1006'),
 '2026-01-15', '10:30:00', 'Skin allergy', 'Completed'),

('A-50008',
 (SELECT patient_id FROM patients WHERE patient_code = 'P-10008'),
 (SELECT doctor_id FROM doctors WHERE doctor_code = 'Dr-1003'),
 '2026-01-22', '11:00:00', 'Back pain', 'Completed'),

('A-50009',
 (SELECT patient_id FROM patients WHERE patient_code = 'P-10009'),
 (SELECT doctor_id FROM doctors WHERE doctor_code = 'Dr-1009'),
 '2026-02-05', '10:00:00', 'Routine checkup', 'Completed'),

('A-50010',
 (SELECT patient_id FROM patients WHERE patient_code = 'P-10010'),
 (SELECT doctor_id FROM doctors WHERE doctor_code = 'Dr-1011'),
 '2026-02-12', '14:30:00', 'Blood pressure', 'Completed'),

('A-50011',
 (SELECT patient_id FROM patients WHERE patient_code = 'P-10011'),
 (SELECT doctor_id FROM doctors WHERE doctor_code = 'Dr-1010'),
 '2026-02-20', '09:45:00', 'Eye irritation', 'Completed'),

('A-50012',
 (SELECT patient_id FROM patients WHERE patient_code = 'P-10012'),
 (SELECT doctor_id FROM doctors WHERE doctor_code = 'Dr-1007'),
 '2026-02-27', '16:00:00', 'Ear pain', 'Cancelled'),

('A-50013',
 (SELECT patient_id FROM patients WHERE patient_code = 'P-10013'),
 (SELECT doctor_id FROM doctors WHERE doctor_code = 'Dr-1004'),
 '2026-03-03', '10:15:00', 'Fever', 'Completed'),

('A-50014',
 (SELECT patient_id FROM patients WHERE patient_code = 'P-10014'),
 (SELECT doctor_id FROM doctors WHERE doctor_code = 'Dr-1003'),
 '2026-03-09', '11:30:00', 'Shoulder pain', 'Completed'),

('A-50015',
 (SELECT patient_id FROM patients WHERE patient_code = 'P-10015'),
 (SELECT doctor_id FROM doctors WHERE doctor_code = 'Dr-1006'),
 '2026-03-18', '15:00:00', 'Skin rash', 'Completed'),

('A-50016',
 (SELECT patient_id FROM patients WHERE patient_code = 'P-10016'),
 (SELECT doctor_id FROM doctors WHERE doctor_code = 'Dr-1008'),
 '2026-03-26', '12:00:00', 'Stomach pain', 'Completed'),

('A-50017',
 (SELECT patient_id FROM patients WHERE patient_code = 'P-10017'),
 (SELECT doctor_id FROM doctors WHERE doctor_code = 'Dr-1002'),
 '2026-04-04', '09:30:00', 'Frequent headache', 'Completed'),

('A-50018',
 (SELECT patient_id FROM patients WHERE patient_code = 'P-10018'),
 (SELECT doctor_id FROM doctors WHERE doctor_code = 'Dr-1012'),
 '2026-04-11', '10:45:00', 'Fever', 'Completed'),

('A-50019',
 (SELECT patient_id FROM patients WHERE patient_code = 'P-10019'),
 (SELECT doctor_id FROM doctors WHERE doctor_code = 'Dr-1009'),
 '2026-04-17', '13:30:00', 'Consultation', 'Completed'),

('A-50020',
 (SELECT patient_id FROM patients WHERE patient_code = 'P-10020'),
 (SELECT doctor_id FROM doctors WHERE doctor_code = 'Dr-1010'),
 '2026-04-25', '15:30:00', 'Vision problem', 'Completed'),

('A-50021',
 (SELECT patient_id FROM patients WHERE patient_code = 'P-10021'),
 (SELECT doctor_id FROM doctors WHERE doctor_code = 'Dr-1006'),
 '2026-05-02', '10:00:00', 'Skin infection', 'Completed'),

('A-50022',
 (SELECT patient_id FROM patients WHERE patient_code = 'P-10022'),
 (SELECT doctor_id FROM doctors WHERE doctor_code = 'Dr-1011'),
 '2026-05-10', '11:15:00', 'Chest pain', 'Completed'),

('A-50023',
 (SELECT patient_id FROM patients WHERE patient_code = 'P-10023'),
 (SELECT doctor_id FROM doctors WHERE doctor_code = 'Dr-1007'),
 '2026-05-16', '14:30:00', 'Sinus problem', 'Cancelled'),

('A-50024',
 (SELECT patient_id FROM patients WHERE patient_code = 'P-10024'),
 (SELECT doctor_id FROM doctors WHERE doctor_code = 'Dr-1008'),
 '2026-05-28', '12:45:00', 'Digestive problem', 'Completed'),

('A-50025',
 (SELECT patient_id FROM patients WHERE patient_code = 'P-10025'),
 (SELECT doctor_id FROM doctors WHERE doctor_code = 'Dr-1009'),
 '2026-06-04', '09:45:00', 'Routine consultation', 'Completed'),

('A-50026',
 (SELECT patient_id FROM patients WHERE patient_code = 'P-10026'),
 (SELECT doctor_id FROM doctors WHERE doctor_code = 'Dr-1001'),
 '2026-06-12', '10:30:00', 'Heart checkup', 'Completed'),

('A-50027',
 (SELECT patient_id FROM patients WHERE patient_code = 'P-10027'),
 (SELECT doctor_id FROM doctors WHERE doctor_code = 'Dr-1012'),
 '2026-07-05', '11:00:00', 'High fever', 'Completed'),

('A-50028',
 (SELECT patient_id FROM patients WHERE patient_code = 'P-10028'),
 (SELECT doctor_id FROM doctors WHERE doctor_code = 'Dr-1003'),
 '2026-07-19', '15:30:00', 'Knee pain', 'Completed'),

('A-50029',
 (SELECT patient_id FROM patients WHERE patient_code = 'P-10029'),
 (SELECT doctor_id FROM doctors WHERE doctor_code = 'Dr-1002'),
 '2026-08-08', '10:15:00', 'Migraine', 'Completed'),

('A-50030',
 (SELECT patient_id FROM patients WHERE patient_code = 'P-10030'),
 (SELECT doctor_id FROM doctors WHERE doctor_code = 'Dr-1007'),
 '2026-08-21', '11:45:00', 'Throat infection', 'Completed');    
    
    
    SELECT * FROM appointments;
    
    SELECT
    a.appointment_code,
    p.patient_code,
    p.patient_name,
    d.doctor_code,
    d.doctor_name,
    dp.department_name,
    a.appointment_date,
    a.appointment_time,
    a.reason,
    a.status
FROM appointments a
JOIN patients p
    ON a.patient_id = p.patient_id
JOIN doctors d
    ON a.doctor_id = d.doctor_id
JOIN departments dp
    ON d.department_id = dp.department_id;
    
CREATE TABLE rooms (
    room_id INT PRIMARY KEY AUTO_INCREMENT,
    room_code VARCHAR(10) NOT NULL UNIQUE,
    room_number VARCHAR(10) NOT NULL UNIQUE,
    room_type VARCHAR(50) NOT NULL,
    daily_charge DECIMAL(10,2) NOT NULL,
    status VARCHAR(20) NOT NULL
);    

INSERT INTO rooms
    (room_code, room_number, room_type, daily_charge, status)
VALUES
    ('R-101', '101', 'General', 1500.00, 'Available'),
    ('R-102', '102', 'General', 1500.00, 'Occupied'),
    ('R-201', '201', 'Private', 3500.00, 'Available'),
    ('R-202', '202', 'Private', 3500.00, 'Occupied'),
    ('R-301', '301', 'ICU', 8000.00, 'Available');
    
INSERT INTO rooms
    (room_code, room_number, room_type, daily_charge, status)
VALUES
    ('R-103', '103', 'General', 1500.00, 'Available'),
    ('R-104', '104', 'General', 1500.00, 'Available'),
    ('R-203', '203', 'Private', 3500.00, 'Available'),
    ('R-204', '204', 'Private', 3500.00, 'Available'),
    ('R-302', '302', 'ICU', 8000.00, 'Available');    
    
    SELECT * FROM rooms;
    
CREATE TABLE admissions (
    admission_id INT PRIMARY KEY AUTO_INCREMENT,
    admission_code VARCHAR(10) NOT NULL UNIQUE,
    patient_id INT NOT NULL,
    doctor_id INT NOT NULL,
    room_id INT NOT NULL,
    admission_date DATE NOT NULL,
    discharge_date DATE,
    diagnosis VARCHAR(255),
    status VARCHAR(20) NOT NULL,

    FOREIGN KEY (patient_id)
        REFERENCES patients(patient_id),

    FOREIGN KEY (doctor_id)
        REFERENCES doctors(doctor_id),

    FOREIGN KEY (room_id)
        REFERENCES rooms(room_id)
);    

INSERT INTO admissions
    (admission_code, patient_id, doctor_id, room_id, admission_date, discharge_date, diagnosis, status)
VALUES
    ('AD-1001', 1, 1, 2, '2026-09-01', '2026-09-04', 'Chest Pain Observation', 'Discharged'),
    ('AD-1002', 2, 2, 4, '2026-09-03', '2026-09-06', 'Migraine Observation', 'Discharged'),
    ('AD-1003', 3, 3, 2, '2026-09-07', NULL, 'Knee Injury', 'Admitted'),
    ('AD-1004', 4, 4, 4, '2026-09-08', NULL, 'High Fever', 'Admitted');
    
INSERT INTO admissions
(
    admission_code,
    patient_id,
    doctor_id,
    room_id,
    admission_date,
    discharge_date,
    diagnosis,
    status
)
VALUES

('AD-1005',
 (SELECT patient_id FROM patients WHERE patient_code = 'P-10006'),
 (SELECT doctor_id FROM doctors WHERE doctor_code = 'Dr-1001'),
 (SELECT room_id FROM rooms WHERE room_code = 'R-103'),
 '2026-01-08', '2026-01-11',
 'Chest Discomfort', 'Discharged'),

('AD-1006',
 (SELECT patient_id FROM patients WHERE patient_code = 'P-10007'),
 (SELECT doctor_id FROM doctors WHERE doctor_code = 'Dr-1006'),
 (SELECT room_id FROM rooms WHERE room_code = 'R-203'),
 '2026-01-18', '2026-01-20',
 'Severe Skin Allergy', 'Discharged'),

('AD-1007',
 (SELECT patient_id FROM patients WHERE patient_code = 'P-10010'),
 (SELECT doctor_id FROM doctors WHERE doctor_code = 'Dr-1011'),
 (SELECT room_id FROM rooms WHERE room_code = 'R-204'),
 '2026-02-06', '2026-02-09',
 'Cardiac Observation', 'Discharged'),

('AD-1008',
 (SELECT patient_id FROM patients WHERE patient_code = 'P-10013'),
 (SELECT doctor_id FROM doctors WHERE doctor_code = 'Dr-1004'),
 (SELECT room_id FROM rooms WHERE room_code = 'R-104'),
 '2026-03-04', '2026-03-07',
 'Viral Fever', 'Discharged'),

('AD-1009',
 (SELECT patient_id FROM patients WHERE patient_code = 'P-10017'),
 (SELECT doctor_id FROM doctors WHERE doctor_code = 'Dr-1002'),
 (SELECT room_id FROM rooms WHERE room_code = 'R-203'),
 '2026-04-05', '2026-04-08',
 'Severe Migraine', 'Discharged'),

('AD-1010',
 (SELECT patient_id FROM patients WHERE patient_code = 'P-10022'),
 (SELECT doctor_id FROM doctors WHERE doctor_code = 'Dr-1011'),
 (SELECT room_id FROM rooms WHERE room_code = 'R-302'),
 '2026-05-11', '2026-05-14',
 'Cardiac Monitoring', 'Discharged'),

('AD-1011',
 (SELECT patient_id FROM patients WHERE patient_code = 'P-10026'),
 (SELECT doctor_id FROM doctors WHERE doctor_code = 'Dr-1001'),
 (SELECT room_id FROM rooms WHERE room_code = 'R-103'),
 '2026-06-13', '2026-06-16',
 'Chest Pain', 'Discharged'),

('AD-1012',
 (SELECT patient_id FROM patients WHERE patient_code = 'P-10027'),
 (SELECT doctor_id FROM doctors WHERE doctor_code = 'Dr-1012'),
 (SELECT room_id FROM rooms WHERE room_code = 'R-104'),
 '2026-07-06', '2026-07-08',
 'High Fever', 'Discharged'),

('AD-1013',
 (SELECT patient_id FROM patients WHERE patient_code = 'P-10029'),
 (SELECT doctor_id FROM doctors WHERE doctor_code = 'Dr-1002'),
 (SELECT room_id FROM rooms WHERE room_code = 'R-204'),
 '2026-08-09', '2026-08-12',
 'Migraine Observation', 'Discharged'),

('AD-1014',
 (SELECT patient_id FROM patients WHERE patient_code = 'P-10030'),
 (SELECT doctor_id FROM doctors WHERE doctor_code = 'Dr-1007'),
 (SELECT room_id FROM rooms WHERE room_code = 'R-203'),
 '2026-09-06', '2026-09-10',
 'Throat Infection', 'Discharged');    
    
    SELECT * FROM admissions;
    
    SELECT
    a.admission_code,
    p.patient_code,
    p.patient_name,
    d.doctor_code,
    d.doctor_name,
    r.room_code,
    r.room_type,
    a.admission_date,
    a.discharge_date,
    a.diagnosis,
    a.status
FROM admissions a
JOIN patients p
    ON a.patient_id = p.patient_id
JOIN doctors d
    ON a.doctor_id = d.doctor_id
JOIN rooms r
    ON a.room_id = r.room_id;
    
CREATE TABLE treatments (
    treatment_id INT PRIMARY KEY AUTO_INCREMENT,
    treatment_code VARCHAR(10) NOT NULL UNIQUE,
    admission_id INT NOT NULL,
    doctor_id INT NOT NULL,
    treatment_name VARCHAR(150) NOT NULL,
    treatment_date DATE NOT NULL,
    treatment_cost DECIMAL(10,2) NOT NULL,
    notes VARCHAR(255),

    FOREIGN KEY (admission_id)
        REFERENCES admissions(admission_id),

    FOREIGN KEY (doctor_id)
        REFERENCES doctors(doctor_id)
);    

INSERT INTO treatments
    (treatment_code, admission_id, doctor_id, treatment_name, treatment_date, treatment_cost, notes)
VALUES
    ('T-1001', 1, 1, 'ECG and Cardiac Observation', '2026-09-01', 2500.00, 'ECG completed'),
    ('T-1002', 1, 1, 'Blood Test', '2026-09-02', 1200.00, 'Routine blood test'),
    ('T-1003', 2, 2, 'Neurological Examination', '2026-09-03', 3000.00, 'Migraine assessment'),
    ('T-1004', 3, 3, 'Knee X-Ray', '2026-09-07', 1800.00, 'Right knee'),
    ('T-1005', 4, 4, 'Fever Investigation', '2026-09-08', 1500.00, 'Blood and urine tests');
    
    
    
    SELECT * FROM treatments;
    
    SELECT
    t.treatment_code,
    a.admission_code,
    p.patient_code,
    p.patient_name,
    d.doctor_code,
    d.doctor_name,
    t.treatment_name,
    t.treatment_date,
    t.treatment_cost
FROM treatments t
JOIN admissions a
    ON t.admission_id = a.admission_id
JOIN patients p
    ON a.patient_id = p.patient_id
JOIN doctors d
    ON t.doctor_id = d.doctor_id;
    
CREATE TABLE billing (
    bill_id INT PRIMARY KEY AUTO_INCREMENT,
    bill_code VARCHAR(10) NOT NULL UNIQUE,
    admission_id INT NOT NULL,
    room_charge DECIMAL(10,2) NOT NULL,
    treatment_charge DECIMAL(10,2) NOT NULL,
    other_charge DECIMAL(10,2) DEFAULT 0,
    total_amount DECIMAL(10,2) NOT NULL,
    bill_date DATE NOT NULL,
    payment_status VARCHAR(20) NOT NULL,

    FOREIGN KEY (admission_id)
        REFERENCES admissions(admission_id)
);    

INSERT INTO billing
    (bill_code, admission_id, room_charge, treatment_charge,
     other_charge, total_amount, bill_date, payment_status)
VALUES
    ('B-1001', 1, 4500.00, 3700.00, 500.00, 8700.00, '2026-09-04', 'Paid'),
    ('B-1002', 2, 10500.00, 3000.00, 750.00, 14250.00, '2026-09-06', 'Paid'),
    ('B-1003', 3, 4500.00, 1800.00, 300.00, 6600.00, '2026-09-09', 'Pending'),
    ('B-1004', 4, 10500.00, 1500.00, 400.00, 12400.00, '2026-09-10', 'Pending');
    
    SELECT * FROM billing;
    
    SELECT
    b.bill_code,
    p.patient_code,
    p.patient_name,
    a.admission_code,
    b.room_charge,
    b.treatment_charge,
    b.other_charge,
    b.total_amount,
    b.payment_status
FROM billing b
JOIN admissions a
    ON b.admission_id = a.admission_id
JOIN patients p
    ON a.patient_id = p.patient_id;
    
    
CREATE TABLE payments (
    payment_id INT PRIMARY KEY AUTO_INCREMENT,
    payment_code VARCHAR(10) NOT NULL UNIQUE,
    bill_id INT NOT NULL,
    payment_date DATE NOT NULL,
    payment_method VARCHAR(30) NOT NULL,
    amount_paid DECIMAL(10,2) NOT NULL,
    transaction_reference VARCHAR(100),

    FOREIGN KEY (bill_id)
        REFERENCES billing(bill_id)
);    

INSERT INTO payments
    (payment_code, bill_id, payment_date, payment_method,
     amount_paid, transaction_reference)
VALUES
    ('PAY-1001', 1, '2026-09-04', 'Card', 8700.00, 'TXN100001'),
    ('PAY-1002', 2, '2026-09-06', 'UPI', 14250.00, 'TXN100002'),
    ('PAY-1003', 3, '2026-09-09', 'Cash', 3000.00, NULL),
    ('PAY-1004', 4, '2026-09-10', 'UPI', 5000.00, 'TXN100004');
    
    SELECT * FROM payments;
    
    SELECT
    b.bill_code,
    p.patient_code,
    p.patient_name,
    b.total_amount,
    COALESCE(SUM(py.amount_paid), 0) AS amount_paid,
    b.total_amount - COALESCE(SUM(py.amount_paid), 0) AS balance_amount
FROM billing b
JOIN admissions a
    ON b.admission_id = a.admission_id
JOIN patients p
    ON a.patient_id = p.patient_id
LEFT JOIN payments py
    ON b.bill_id = py.bill_id
GROUP BY
    b.bill_id,
    b.bill_code,
    p.patient_code,
    p.patient_name,
    b.total_amount;
    
SELECT
    d.doctor_code,
    d.doctor_name,
    dp.department_code,
    dp.department_name
FROM doctors d
JOIN departments dp
    ON d.department_id = dp.department_id; 
    
