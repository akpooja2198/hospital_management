CREATE DATABASE hospital_management;
USE hospital_management;
-- ----------------------------------------------------------------------------------------------------------

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
-- ----------------------------------------------------------------------------------------------------------


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
-- -----------------------------------------------------------------------------------------------------------------------    
    
    
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

INSERT INTO patients
(
    patient_code,
    patient_name,
    gender,
    date_of_birth,
    phone,
    email,
    city
)
VALUES
('P-10031', 'Sangeetha R', 'Female', '1988-03-11', '9000000031', 'sangeetha.r@gmail.com', 'Chennai'),
('P-10032', 'Vijay Kumar', 'Male', '1977-09-23', '9000000032', 'vijay.k@gmail.com', 'Coimbatore'),
('P-10033', 'Shalini M', 'Female', '1995-01-18', '9000000033', 'shalini.m@gmail.com', 'Madurai'),
('P-10034', 'Aravind S', 'Male', '1990-07-14', '9000000034', 'aravind.s@gmail.com', 'Chennai'),
('P-10035', 'Revathi K', 'Female', '1982-12-05', '9000000035', 'revathi.k@gmail.com', 'Trichy'),

('P-10036', 'Senthil Kumar', 'Male', '1974-05-16', '9000000036', 'senthil.k@gmail.com', 'Salem'),
('P-10037', 'Pavithra V', 'Female', '1998-08-27', '9000000037', 'pavithra.v@gmail.com', 'Chennai'),
('P-10038', 'Manikandan R', 'Male', '1986-02-09', '9000000038', 'manikandan.r@gmail.com', 'Erode'),
('P-10039', 'Deepika S', 'Female', '1993-10-21', '9000000039', 'deepika.s@gmail.com', 'Bengaluru'),
('P-10040', 'Rajesh K', 'Male', '1981-06-30', '9000000040', 'rajesh.k@gmail.com', 'Chennai'),

('P-10041', 'Kavitha M', 'Female', '1979-04-12', '9000000041', 'kavitha.m@gmail.com', 'Coimbatore'),
('P-10042', 'Pradeep N', 'Male', '1996-11-06', '9000000042', 'pradeep.n@gmail.com', 'Chennai'),
('P-10043', 'Lavanya P', 'Female', '1991-03-25', '9000000043', 'lavanya.p@gmail.com', 'Madurai'),
('P-10044', 'Siva Kumar', 'Male', '1985-07-19', '9000000044', 'siva.k@gmail.com', 'Trichy'),
('P-10045', 'Bhavani R', 'Female', '2000-02-28', '9000000045', 'bhavani.r@gmail.com', 'Chennai'),

('P-10046', 'Ganesh M', 'Male', '1976-10-15', '9000000046', 'ganesh.m@gmail.com', 'Salem'),
('P-10047', 'Preethi S', 'Female', '1997-06-13', '9000000047', 'preethi.s@gmail.com', 'Chennai'),
('P-10048', 'Muthukumar V', 'Male', '1983-01-24', '9000000048', 'muthukumar.v@gmail.com', 'Coimbatore'),
('P-10049', 'Anjali K', 'Female', '1994-09-17', '9000000049', 'anjali.k@gmail.com', 'Bengaluru'),
('P-10050', 'Hari Prasad', 'Male', '1989-12-02', '9000000050', 'hari.p@gmail.com', 'Chennai');

INSERT INTO patients
(
    patient_code,
    patient_name,
    gender,
    date_of_birth,
    phone,
    email,
    city
)
VALUES
('P-10051', 'Nithya S', 'Female', '1991-04-18', '9000000051', 'nithya.s@gmail.com', 'Chennai'),
('P-10052', 'Kumaravel R', 'Male', '1980-08-09', '9000000052', 'kumaravel.r@gmail.com', 'Madurai'),
('P-10053', 'Haritha M', 'Female', '1996-01-25', '9000000053', 'haritha.m@gmail.com', 'Coimbatore'),
('P-10054', 'Sridhar K', 'Male', '1987-11-14', '9000000054', 'sridhar.k@gmail.com', 'Chennai'),
('P-10055', 'Monica J', 'Female', '1993-06-30', '9000000055', 'monica.j@gmail.com', 'Bengaluru'),

('P-10056', 'Raghu V', 'Male', '1978-02-19', '9000000056', 'raghu.v@gmail.com', 'Trichy'),
('P-10057', 'Sowmya P', 'Female', '1999-10-07', '9000000057', 'sowmya.p@gmail.com', 'Chennai'),
('P-10058', 'Kishore B', 'Male', '1985-05-22', '9000000058', 'kishore.b@gmail.com', 'Salem'),
('P-10059', 'Madhumitha R', 'Female', '1994-12-11', '9000000059', 'madhumitha.r@gmail.com', 'Coimbatore'),
('P-10060', 'Sakthivel M', 'Male', '1982-09-16', '9000000060', 'sakthivel.m@gmail.com', 'Chennai'),

('P-10061', 'Anusha K', 'Female', '1997-03-04', '9000000061', 'anusha.k@gmail.com', 'Madurai'),
('P-10062', 'Ramesh Kumar', 'Male', '1975-07-28', '9000000062', 'ramesh.kumar@gmail.com', 'Chennai'),
('P-10063', 'Sindhu V', 'Female', '1990-11-20', '9000000063', 'sindhu.v@gmail.com', 'Erode'),
('P-10064', 'Vasanth R', 'Male', '1988-01-13', '9000000064', 'vasanth.r@gmail.com', 'Bengaluru'),
('P-10065', 'Keerthi S', 'Female', '2001-05-17', '9000000065', 'keerthi.s@gmail.com', 'Chennai'),

('P-10066', 'Muthu Raj', 'Male', '1979-10-25', '9000000066', 'muthu.raj@gmail.com', 'Coimbatore'),
('P-10067', 'Yamini P', 'Female', '1992-08-08', '9000000067', 'yamini.p@gmail.com', 'Chennai'),
('P-10068', 'Gopinath K', 'Male', '1984-04-02', '9000000068', 'gopinath.k@gmail.com', 'Trichy'),
('P-10069', 'Roshini M', 'Female', '1998-09-29', '9000000069', 'roshini.m@gmail.com', 'Salem'),
('P-10070', 'Karthik S', 'Male', '1986-12-05', '9000000070', 'karthik.s@gmail.com', 'Chennai'),

('P-10071', 'Uma R', 'Female', '1983-06-21', '9000000071', 'uma.r@gmail.com', 'Madurai'),
('P-10072', 'Dhanush V', 'Male', '1995-02-14', '9000000072', 'dhanush.v@gmail.com', 'Chennai'),
('P-10073', 'Nivedha K', 'Female', '2000-07-09', '9000000073', 'nivedha.k@gmail.com', 'Coimbatore'),
('P-10074', 'Manoj Kumar', 'Male', '1981-03-27', '9000000074', 'manoj.kumar@gmail.com', 'Bengaluru'),
('P-10075', 'Aarthi S', 'Female', '1996-11-01', '9000000075', 'aarthi.s@gmail.com', 'Chennai');
    
SELECT * FROM patients;
-- --------------------------------------------------------------------------------------------------------------------------------------------


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

-- January
('A-50031',
 (SELECT patient_id FROM patients WHERE patient_code = 'P-10031'),
 (SELECT doctor_id FROM doctors WHERE doctor_code = 'Dr-1004'),
 '2026-01-10', '09:30:00', 'General health checkup', 'Completed'),

('A-50032',
 (SELECT patient_id FROM patients WHERE patient_code = 'P-10032'),
 (SELECT doctor_id FROM doctors WHERE doctor_code = 'Dr-1001'),
 '2026-01-18', '11:00:00', 'Chest discomfort', 'Completed'),

('A-50033',
 (SELECT patient_id FROM patients WHERE patient_code = 'P-10033'),
 (SELECT doctor_id FROM doctors WHERE doctor_code = 'Dr-1006'),
 '2026-01-25', '14:30:00', 'Skin irritation', 'Completed'),

-- February
('A-50034',
 (SELECT patient_id FROM patients WHERE patient_code = 'P-10034'),
 (SELECT doctor_id FROM doctors WHERE doctor_code = 'Dr-1003'),
 '2026-02-03', '10:15:00', 'Back pain', 'Completed'),

('A-50035',
 (SELECT patient_id FROM patients WHERE patient_code = 'P-10035'),
 (SELECT doctor_id FROM doctors WHERE doctor_code = 'Dr-1002'),
 '2026-02-11', '12:00:00', 'Recurring headache', 'Completed'),

('A-50036',
 (SELECT patient_id FROM patients WHERE patient_code = 'P-10036'),
 (SELECT doctor_id FROM doctors WHERE doctor_code = 'Dr-1010'),
 '2026-02-21', '15:30:00', 'Blurred vision', 'Completed'),

-- March
('A-50037',
 (SELECT patient_id FROM patients WHERE patient_code = 'P-10037'),
 (SELECT doctor_id FROM doctors WHERE doctor_code = 'Dr-1009'),
 '2026-03-05', '09:45:00', 'Routine consultation', 'Completed'),

('A-50038',
 (SELECT patient_id FROM patients WHERE patient_code = 'P-10038'),
 (SELECT doctor_id FROM doctors WHERE doctor_code = 'Dr-1008'),
 '2026-03-13', '11:30:00', 'Stomach discomfort', 'Completed'),

('A-50039',
 (SELECT patient_id FROM patients WHERE patient_code = 'P-10039'),
 (SELECT doctor_id FROM doctors WHERE doctor_code = 'Dr-1007'),
 '2026-03-22', '16:00:00', 'Sinus infection', 'Cancelled'),

-- April
('A-50040',
 (SELECT patient_id FROM patients WHERE patient_code = 'P-10040'),
 (SELECT doctor_id FROM doctors WHERE doctor_code = 'Dr-1011'),
 '2026-04-02', '10:00:00', 'Heart checkup', 'Completed'),

('A-50041',
 (SELECT patient_id FROM patients WHERE patient_code = 'P-10041'),
 (SELECT doctor_id FROM doctors WHERE doctor_code = 'Dr-1004'),
 '2026-04-10', '13:30:00', 'Fever and body pain', 'Completed'),

('A-50042',
 (SELECT patient_id FROM patients WHERE patient_code = 'P-10042'),
 (SELECT doctor_id FROM doctors WHERE doctor_code = 'Dr-1006'),
 '2026-04-19', '15:15:00', 'Skin rash', 'Completed'),

-- May
('A-50043',
 (SELECT patient_id FROM patients WHERE patient_code = 'P-10043'),
 (SELECT doctor_id FROM doctors WHERE doctor_code = 'Dr-1009'),
 '2026-05-04', '09:30:00', 'Routine consultation', 'Completed'),

('A-50044',
 (SELECT patient_id FROM patients WHERE patient_code = 'P-10044'),
 (SELECT doctor_id FROM doctors WHERE doctor_code = 'Dr-1003'),
 '2026-05-12', '11:45:00', 'Shoulder pain', 'Completed'),

('A-50045',
 (SELECT patient_id FROM patients WHERE patient_code = 'P-10045'),
 (SELECT doctor_id FROM doctors WHERE doctor_code = 'Dr-1010'),
 '2026-05-21', '14:15:00', 'Eye irritation', 'Completed'),

-- June
('A-50046',
 (SELECT patient_id FROM patients WHERE patient_code = 'P-10046'),
 (SELECT doctor_id FROM doctors WHERE doctor_code = 'Dr-1001'),
 '2026-06-03', '10:30:00', 'Blood pressure check', 'Completed'),

('A-50047',
 (SELECT patient_id FROM patients WHERE patient_code = 'P-10047'),
 (SELECT doctor_id FROM doctors WHERE doctor_code = 'Dr-1007'),
 '2026-06-11', '12:30:00', 'Ear infection', 'Completed'),

('A-50048',
 (SELECT patient_id FROM patients WHERE patient_code = 'P-10048'),
 (SELECT doctor_id FROM doctors WHERE doctor_code = 'Dr-1008'),
 '2026-06-20', '15:00:00', 'Digestive problem', 'Completed'),

-- July
('A-50049',
 (SELECT patient_id FROM patients WHERE patient_code = 'P-10049'),
 (SELECT doctor_id FROM doctors WHERE doctor_code = 'Dr-1002'),
 '2026-07-04', '09:45:00', 'Migraine', 'Completed'),

('A-50050',
 (SELECT patient_id FROM patients WHERE patient_code = 'P-10050'),
 (SELECT doctor_id FROM doctors WHERE doctor_code = 'Dr-1012'),
 '2026-07-13', '11:00:00', 'High fever', 'Completed'),

('A-50051',
 (SELECT patient_id FROM patients WHERE patient_code = 'P-10031'),
 (SELECT doctor_id FROM doctors WHERE doctor_code = 'Dr-1006'),
 '2026-07-23', '14:30:00', 'Skin allergy', 'Cancelled'),

-- August
('A-50052',
 (SELECT patient_id FROM patients WHERE patient_code = 'P-10032'),
 (SELECT doctor_id FROM doctors WHERE doctor_code = 'Dr-1011'),
 '2026-08-02', '10:00:00', 'Cardiac follow-up', 'Completed'),

('A-50053',
 (SELECT patient_id FROM patients WHERE patient_code = 'P-10033'),
 (SELECT doctor_id FROM doctors WHERE doctor_code = 'Dr-1009'),
 '2026-08-09', '11:30:00', 'Follow-up consultation', 'Completed'),

('A-50054',
 (SELECT patient_id FROM patients WHERE patient_code = 'P-10034'),
 (SELECT doctor_id FROM doctors WHERE doctor_code = 'Dr-1003'),
 '2026-08-17', '13:45:00', 'Knee pain', 'Completed'),

('A-50055',
 (SELECT patient_id FROM patients WHERE patient_code = 'P-10035'),
 (SELECT doctor_id FROM doctors WHERE doctor_code = 'Dr-1008'),
 '2026-08-26', '15:30:00', 'Abdominal discomfort', 'Completed'),

-- September
('A-50056',
 (SELECT patient_id FROM patients WHERE patient_code = 'P-10036'),
 (SELECT doctor_id FROM doctors WHERE doctor_code = 'Dr-1010'),
 '2026-09-03', '09:30:00', 'Vision checkup', 'Completed'),

('A-50057',
 (SELECT patient_id FROM patients WHERE patient_code = 'P-10037'),
 (SELECT doctor_id FROM doctors WHERE doctor_code = 'Dr-1006'),
 '2026-09-08', '11:15:00', 'Skin infection', 'Completed'),

('A-50058',
 (SELECT patient_id FROM patients WHERE patient_code = 'P-10038'),
 (SELECT doctor_id FROM doctors WHERE doctor_code = 'Dr-1007'),
 '2026-09-14', '14:00:00', 'Throat pain', 'Completed'),

('A-50059',
 (SELECT patient_id FROM patients WHERE patient_code = 'P-10039'),
 (SELECT doctor_id FROM doctors WHERE doctor_code = 'Dr-1002'),
 '2026-09-22', '10:30:00', 'Headache follow-up', 'Scheduled'),

('A-50060',
 (SELECT patient_id FROM patients WHERE patient_code = 'P-10040'),
 (SELECT doctor_id FROM doctors WHERE doctor_code = 'Dr-1012'),
 '2026-09-28', '15:00:00', 'General consultation', 'Scheduled');  
 
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

-- January
('A-50061',
 (SELECT patient_id FROM patients WHERE patient_code = 'P-10041'),
 (SELECT doctor_id FROM doctors WHERE doctor_code = 'Dr-1004'),
 '2026-01-06', '10:00:00', 'Fever', 'Completed'),

('A-50062',
 (SELECT patient_id FROM patients WHERE patient_code = 'P-10042'),
 (SELECT doctor_id FROM doctors WHERE doctor_code = 'Dr-1006'),
 '2026-01-12', '11:30:00', 'Skin allergy', 'Completed'),

('A-50063',
 (SELECT patient_id FROM patients WHERE patient_code = 'P-10043'),
 (SELECT doctor_id FROM doctors WHERE doctor_code = 'Dr-1002'),
 '2026-01-20', '14:00:00', 'Headache', 'Completed'),

('A-50064',
 (SELECT patient_id FROM patients WHERE patient_code = 'P-10044'),
 (SELECT doctor_id FROM doctors WHERE doctor_code = 'Dr-1007'),
 '2026-01-28', '15:30:00', 'Ear pain', 'Completed'),

-- February
('A-50065',
 (SELECT patient_id FROM patients WHERE patient_code = 'P-10045'),
 (SELECT doctor_id FROM doctors WHERE doctor_code = 'Dr-1010'),
 '2026-02-04', '09:45:00', 'Eye checkup', 'Completed'),

('A-50066',
 (SELECT patient_id FROM patients WHERE patient_code = 'P-10046'),
 (SELECT doctor_id FROM doctors WHERE doctor_code = 'Dr-1011'),
 '2026-02-09', '10:30:00', 'Chest pain', 'Completed'),

('A-50067',
 (SELECT patient_id FROM patients WHERE patient_code = 'P-10047'),
 (SELECT doctor_id FROM doctors WHERE doctor_code = 'Dr-1009'),
 '2026-02-15', '12:00:00', 'Consultation', 'Completed'),

('A-50068',
 (SELECT patient_id FROM patients WHERE patient_code = 'P-10048'),
 (SELECT doctor_id FROM doctors WHERE doctor_code = 'Dr-1008'),
 '2026-02-22', '14:30:00', 'Stomach pain', 'Completed'),

('A-50069',
 (SELECT patient_id FROM patients WHERE patient_code = 'P-10049'),
 (SELECT doctor_id FROM doctors WHERE doctor_code = 'Dr-1006'),
 '2026-02-25', '16:00:00', 'Skin irritation', 'Cancelled'),

-- March
('A-50070',
 (SELECT patient_id FROM patients WHERE patient_code = 'P-10050'),
 (SELECT doctor_id FROM doctors WHERE doctor_code = 'Dr-1012'),
 '2026-03-02', '09:30:00', 'General checkup', 'Completed'),

('A-50071',
 (SELECT patient_id FROM patients WHERE patient_code = 'P-10001'),
 (SELECT doctor_id FROM doctors WHERE doctor_code = 'Dr-1001'),
 '2026-03-08', '10:45:00', 'Cardiac follow-up', 'Completed'),

('A-50072',
 (SELECT patient_id FROM patients WHERE patient_code = 'P-10002'),
 (SELECT doctor_id FROM doctors WHERE doctor_code = 'Dr-1002'),
 '2026-03-14', '11:15:00', 'Migraine', 'Completed'),

('A-50073',
 (SELECT patient_id FROM patients WHERE patient_code = 'P-10003'),
 (SELECT doctor_id FROM doctors WHERE doctor_code = 'Dr-1003'),
 '2026-03-20', '13:00:00', 'Knee pain', 'Completed'),

('A-50074',
 (SELECT patient_id FROM patients WHERE patient_code = 'P-10004'),
 (SELECT doctor_id FROM doctors WHERE doctor_code = 'Dr-1004'),
 '2026-03-29', '15:00:00', 'Fever', 'Completed'),

-- April
('A-50075',
 (SELECT patient_id FROM patients WHERE patient_code = 'P-10005'),
 (SELECT doctor_id FROM doctors WHERE doctor_code = 'Dr-1007'),
 '2026-04-03', '09:45:00', 'Throat infection', 'Completed'),

('A-50076',
 (SELECT patient_id FROM patients WHERE patient_code = 'P-10006'),
 (SELECT doctor_id FROM doctors WHERE doctor_code = 'Dr-1011'),
 '2026-04-07', '10:30:00', 'Blood pressure follow-up', 'Completed'),

('A-50077',
 (SELECT patient_id FROM patients WHERE patient_code = 'P-10007'),
 (SELECT doctor_id FROM doctors WHERE doctor_code = 'Dr-1006'),
 '2026-04-14', '12:00:00', 'Skin rash', 'Completed'),

('A-50078',
 (SELECT patient_id FROM patients WHERE patient_code = 'P-10008'),
 (SELECT doctor_id FROM doctors WHERE doctor_code = 'Dr-1003'),
 '2026-04-20', '14:00:00', 'Back pain', 'Completed'),

('A-50079',
 (SELECT patient_id FROM patients WHERE patient_code = 'P-10009'),
 (SELECT doctor_id FROM doctors WHERE doctor_code = 'Dr-1009'),
 '2026-04-27', '15:30:00', 'Follow-up consultation', 'Completed'),

-- May
('A-50080',
 (SELECT patient_id FROM patients WHERE patient_code = 'P-10010'),
 (SELECT doctor_id FROM doctors WHERE doctor_code = 'Dr-1001'),
 '2026-05-03', '09:30:00', 'Heart checkup', 'Completed'),

('A-50081',
 (SELECT patient_id FROM patients WHERE patient_code = 'P-10011'),
 (SELECT doctor_id FROM doctors WHERE doctor_code = 'Dr-1010'),
 '2026-05-08', '10:45:00', 'Eye irritation', 'Completed'),

('A-50082',
 (SELECT patient_id FROM patients WHERE patient_code = 'P-10012'),
 (SELECT doctor_id FROM doctors WHERE doctor_code = 'Dr-1007'),
 '2026-05-14', '12:15:00', 'Sinus problem', 'Completed'),

('A-50083',
 (SELECT patient_id FROM patients WHERE patient_code = 'P-10013'),
 (SELECT doctor_id FROM doctors WHERE doctor_code = 'Dr-1012'),
 '2026-05-20', '14:30:00', 'Body pain', 'Completed'),

('A-50084',
 (SELECT patient_id FROM patients WHERE patient_code = 'P-10014'),
 (SELECT doctor_id FROM doctors WHERE doctor_code = 'Dr-1003'),
 '2026-05-26', '15:45:00', 'Shoulder pain', 'Cancelled'),

-- June
('A-50085',
 (SELECT patient_id FROM patients WHERE patient_code = 'P-10015'),
 (SELECT doctor_id FROM doctors WHERE doctor_code = 'Dr-1009'),
 '2026-06-02', '09:30:00', 'Routine consultation', 'Completed'),

('A-50086',
 (SELECT patient_id FROM patients WHERE patient_code = 'P-10016'),
 (SELECT doctor_id FROM doctors WHERE doctor_code = 'Dr-1008'),
 '2026-06-08', '10:30:00', 'Digestive issue', 'Completed'),

('A-50087',
 (SELECT patient_id FROM patients WHERE patient_code = 'P-10017'),
 (SELECT doctor_id FROM doctors WHERE doctor_code = 'Dr-1002'),
 '2026-06-13', '11:45:00', 'Headache', 'Completed'),

('A-50088',
 (SELECT patient_id FROM patients WHERE patient_code = 'P-10018'),
 (SELECT doctor_id FROM doctors WHERE doctor_code = 'Dr-1004'),
 '2026-06-19', '13:30:00', 'Fever', 'Completed'),

('A-50089',
 (SELECT patient_id FROM patients WHERE patient_code = 'P-10019'),
 (SELECT doctor_id FROM doctors WHERE doctor_code = 'Dr-1006'),
 '2026-06-25', '15:00:00', 'Skin infection', 'Completed'),

-- July
('A-50090',
 (SELECT patient_id FROM patients WHERE patient_code = 'P-10020'),
 (SELECT doctor_id FROM doctors WHERE doctor_code = 'Dr-1011'),
 '2026-07-02', '09:45:00', 'Chest discomfort', 'Completed'),

('A-50091',
 (SELECT patient_id FROM patients WHERE patient_code = 'P-10021'),
 (SELECT doctor_id FROM doctors WHERE doctor_code = 'Dr-1008'),
 '2026-07-08', '11:15:00', 'Abdominal pain', 'Completed'),

('A-50092',
 (SELECT patient_id FROM patients WHERE patient_code = 'P-10022'),
 (SELECT doctor_id FROM doctors WHERE doctor_code = 'Dr-1001'),
 '2026-07-16', '14:00:00', 'Cardiac consultation', 'Completed'),

('A-50093',
 (SELECT patient_id FROM patients WHERE patient_code = 'P-10023'),
 (SELECT doctor_id FROM doctors WHERE doctor_code = 'Dr-1007'),
 '2026-07-25', '15:30:00', 'ENT consultation', 'Cancelled'),

-- August
('A-50094',
 (SELECT patient_id FROM patients WHERE patient_code = 'P-10024'),
 (SELECT doctor_id FROM doctors WHERE doctor_code = 'Dr-1008'),
 '2026-08-04', '09:30:00', 'Digestive issue', 'Completed'),

('A-50095',
 (SELECT patient_id FROM patients WHERE patient_code = 'P-10025'),
 (SELECT doctor_id FROM doctors WHERE doctor_code = 'Dr-1009'),
 '2026-08-12', '11:00:00', 'Consultation', 'Completed'),

('A-50096',
 (SELECT patient_id FROM patients WHERE patient_code = 'P-10026'),
 (SELECT doctor_id FROM doctors WHERE doctor_code = 'Dr-1001'),
 '2026-08-20', '14:30:00', 'Heart follow-up', 'Completed'),

('A-50097',
 (SELECT patient_id FROM patients WHERE patient_code = 'P-10027'),
 (SELECT doctor_id FROM doctors WHERE doctor_code = 'Dr-1012'),
 '2026-08-28', '16:00:00', 'General consultation', 'Completed'),

-- September
('A-50098',
 (SELECT patient_id FROM patients WHERE patient_code = 'P-10028'),
 (SELECT doctor_id FROM doctors WHERE doctor_code = 'Dr-1003'),
 '2026-09-05', '10:00:00', 'Joint pain', 'Completed'),

('A-50099',
 (SELECT patient_id FROM patients WHERE patient_code = 'P-10029'),
 (SELECT doctor_id FROM doctors WHERE doctor_code = 'Dr-1002'),
 '2026-09-19', '11:30:00', 'Migraine follow-up', 'Scheduled'),

('A-50100',
 (SELECT patient_id FROM patients WHERE patient_code = 'P-10030'),
 (SELECT doctor_id FROM doctors WHERE doctor_code = 'Dr-1007'),
 '2026-09-26', '15:00:00', 'ENT follow-up', 'Scheduled');
 
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

-- January
('A-50101',
 (SELECT patient_id FROM patients WHERE patient_code = 'P-10051'),
 (SELECT doctor_id FROM doctors WHERE doctor_code = 'Dr-1001'),
 '2026-01-05', '09:30:00', 'Chest discomfort', 'Completed'),

('A-50102',
 (SELECT patient_id FROM patients WHERE patient_code = 'P-10052'),
 (SELECT doctor_id FROM doctors WHERE doctor_code = 'Dr-1004'),
 '2026-01-09', '10:30:00', 'Fever', 'Completed'),

('A-50103',
 (SELECT patient_id FROM patients WHERE patient_code = 'P-10053'),
 (SELECT doctor_id FROM doctors WHERE doctor_code = 'Dr-1006'),
 '2026-01-14', '11:45:00', 'Skin rash', 'Completed'),

('A-50104',
 (SELECT patient_id FROM patients WHERE patient_code = 'P-10054'),
 (SELECT doctor_id FROM doctors WHERE doctor_code = 'Dr-1003'),
 '2026-01-19', '14:00:00', 'Back pain', 'Completed'),

('A-50105',
 (SELECT patient_id FROM patients WHERE patient_code = 'P-10055'),
 (SELECT doctor_id FROM doctors WHERE doctor_code = 'Dr-1010'),
 '2026-01-27', '15:30:00', 'Eye irritation', 'Completed'),

-- February
('A-50106',
 (SELECT patient_id FROM patients WHERE patient_code = 'P-10056'),
 (SELECT doctor_id FROM doctors WHERE doctor_code = 'Dr-1011'),
 '2026-02-02', '09:45:00', 'Blood pressure check', 'Completed'),

('A-50107',
 (SELECT patient_id FROM patients WHERE patient_code = 'P-10057'),
 (SELECT doctor_id FROM doctors WHERE doctor_code = 'Dr-1007'),
 '2026-02-07', '11:00:00', 'Throat pain', 'Completed'),

('A-50108',
 (SELECT patient_id FROM patients WHERE patient_code = 'P-10058'),
 (SELECT doctor_id FROM doctors WHERE doctor_code = 'Dr-1008'),
 '2026-02-13', '12:30:00', 'Digestive problem', 'Completed'),

('A-50109',
 (SELECT patient_id FROM patients WHERE patient_code = 'P-10059'),
 (SELECT doctor_id FROM doctors WHERE doctor_code = 'Dr-1002'),
 '2026-02-18', '14:15:00', 'Headache', 'Completed'),

('A-50110',
 (SELECT patient_id FROM patients WHERE patient_code = 'P-10060'),
 (SELECT doctor_id FROM doctors WHERE doctor_code = 'Dr-1009'),
 '2026-02-26', '16:00:00', 'Routine consultation', 'Completed'),

-- March
('A-50111',
 (SELECT patient_id FROM patients WHERE patient_code = 'P-10061'),
 (SELECT doctor_id FROM doctors WHERE doctor_code = 'Dr-1004'),
 '2026-03-01', '09:30:00', 'General checkup', 'Completed'),

('A-50112',
 (SELECT patient_id FROM patients WHERE patient_code = 'P-10062'),
 (SELECT doctor_id FROM doctors WHERE doctor_code = 'Dr-1001'),
 '2026-03-06', '10:45:00', 'Heart checkup', 'Completed'),

('A-50113',
 (SELECT patient_id FROM patients WHERE patient_code = 'P-10063'),
 (SELECT doctor_id FROM doctors WHERE doctor_code = 'Dr-1006'),
 '2026-03-11', '12:00:00', 'Skin allergy', 'Completed'),

('A-50114',
 (SELECT patient_id FROM patients WHERE patient_code = 'P-10064'),
 (SELECT doctor_id FROM doctors WHERE doctor_code = 'Dr-1003'),
 '2026-03-16', '13:30:00', 'Joint pain', 'Completed'),

('A-50115',
 (SELECT patient_id FROM patients WHERE patient_code = 'P-10065'),
 (SELECT doctor_id FROM doctors WHERE doctor_code = 'Dr-1010'),
 '2026-03-24', '15:00:00', 'Vision problem', 'Completed'),

('A-50116',
 (SELECT patient_id FROM patients WHERE patient_code = 'P-10066'),
 (SELECT doctor_id FROM doctors WHERE doctor_code = 'Dr-1008'),
 '2026-03-30', '16:15:00', 'Stomach pain', 'Cancelled'),

-- April
('A-50117',
 (SELECT patient_id FROM patients WHERE patient_code = 'P-10067'),
 (SELECT doctor_id FROM doctors WHERE doctor_code = 'Dr-1002'),
 '2026-04-01', '09:45:00', 'Migraine', 'Completed'),

('A-50118',
 (SELECT patient_id FROM patients WHERE patient_code = 'P-10068'),
 (SELECT doctor_id FROM doctors WHERE doctor_code = 'Dr-1007'),
 '2026-04-06', '11:15:00', 'Ear infection', 'Completed'),

('A-50119',
 (SELECT patient_id FROM patients WHERE patient_code = 'P-10069'),
 (SELECT doctor_id FROM doctors WHERE doctor_code = 'Dr-1009'),
 '2026-04-12', '12:45:00', 'Consultation', 'Completed'),

('A-50120',
 (SELECT patient_id FROM patients WHERE patient_code = 'P-10070'),
 (SELECT doctor_id FROM doctors WHERE doctor_code = 'Dr-1011'),
 '2026-04-18', '14:00:00', 'Chest pain', 'Completed'),

('A-50121',
 (SELECT patient_id FROM patients WHERE patient_code = 'P-10071'),
 (SELECT doctor_id FROM doctors WHERE doctor_code = 'Dr-1012'),
 '2026-04-24', '15:30:00', 'Viral fever', 'Completed'),

('A-50122',
 (SELECT patient_id FROM patients WHERE patient_code = 'P-10072'),
 (SELECT doctor_id FROM doctors WHERE doctor_code = 'Dr-1003'),
 '2026-04-29', '16:15:00', 'Knee pain', 'Completed'),

-- May
('A-50123',
 (SELECT patient_id FROM patients WHERE patient_code = 'P-10073'),
 (SELECT doctor_id FROM doctors WHERE doctor_code = 'Dr-1006'),
 '2026-05-01', '09:30:00', 'Skin infection', 'Completed'),

('A-50124',
 (SELECT patient_id FROM patients WHERE patient_code = 'P-10074'),
 (SELECT doctor_id FROM doctors WHERE doctor_code = 'Dr-1008'),
 '2026-05-06', '10:45:00', 'Abdominal discomfort', 'Completed'),

('A-50125',
 (SELECT patient_id FROM patients WHERE patient_code = 'P-10075'),
 (SELECT doctor_id FROM doctors WHERE doctor_code = 'Dr-1010'),
 '2026-05-11', '12:00:00', 'Eye checkup', 'Completed'),

('A-50126',
 (SELECT patient_id FROM patients WHERE patient_code = 'P-10051'),
 (SELECT doctor_id FROM doctors WHERE doctor_code = 'Dr-1004'),
 '2026-05-17', '13:30:00', 'Fever follow-up', 'Completed'),

('A-50127',
 (SELECT patient_id FROM patients WHERE patient_code = 'P-10052'),
 (SELECT doctor_id FROM doctors WHERE doctor_code = 'Dr-1001'),
 '2026-05-22', '15:00:00', 'Cardiac consultation', 'Completed'),

('A-50128',
 (SELECT patient_id FROM patients WHERE patient_code = 'P-10053'),
 (SELECT doctor_id FROM doctors WHERE doctor_code = 'Dr-1007'),
 '2026-05-29', '16:00:00', 'Sinus problem', 'Cancelled'),

-- June
('A-50129',
 (SELECT patient_id FROM patients WHERE patient_code = 'P-10054'),
 (SELECT doctor_id FROM doctors WHERE doctor_code = 'Dr-1003'),
 '2026-06-01', '09:45:00', 'Shoulder pain', 'Completed'),

('A-50130',
 (SELECT patient_id FROM patients WHERE patient_code = 'P-10055'),
 (SELECT doctor_id FROM doctors WHERE doctor_code = 'Dr-1009'),
 '2026-06-05', '11:00:00', 'Routine consultation', 'Completed'),

('A-50131',
 (SELECT patient_id FROM patients WHERE patient_code = 'P-10056'),
 (SELECT doctor_id FROM doctors WHERE doctor_code = 'Dr-1011'),
 '2026-06-10', '12:30:00', 'Hypertension review', 'Completed'),

('A-50132',
 (SELECT patient_id FROM patients WHERE patient_code = 'P-10057'),
 (SELECT doctor_id FROM doctors WHERE doctor_code = 'Dr-1006'),
 '2026-06-15', '14:00:00', 'Skin irritation', 'Completed'),

('A-50133',
 (SELECT patient_id FROM patients WHERE patient_code = 'P-10058'),
 (SELECT doctor_id FROM doctors WHERE doctor_code = 'Dr-1008'),
 '2026-06-20', '15:30:00', 'Digestive issue', 'Completed'),

('A-50134',
 (SELECT patient_id FROM patients WHERE patient_code = 'P-10059'),
 (SELECT doctor_id FROM doctors WHERE doctor_code = 'Dr-1002'),
 '2026-06-27', '16:15:00', 'Migraine follow-up', 'Completed'),

-- July
('A-50135',
 (SELECT patient_id FROM patients WHERE patient_code = 'P-10060'),
 (SELECT doctor_id FROM doctors WHERE doctor_code = 'Dr-1009'),
 '2026-07-01', '09:30:00', 'Follow-up consultation', 'Completed'),

('A-50136',
 (SELECT patient_id FROM patients WHERE patient_code = 'P-10061'),
 (SELECT doctor_id FROM doctors WHERE doctor_code = 'Dr-1012'),
 '2026-07-06', '10:45:00', 'General consultation', 'Completed'),

('A-50137',
 (SELECT patient_id FROM patients WHERE patient_code = 'P-10062'),
 (SELECT doctor_id FROM doctors WHERE doctor_code = 'Dr-1001'),
 '2026-07-12', '12:00:00', 'Chest discomfort', 'Completed'),

('A-50138',
 (SELECT patient_id FROM patients WHERE patient_code = 'P-10063'),
 (SELECT doctor_id FROM doctors WHERE doctor_code = 'Dr-1007'),
 '2026-07-18', '13:30:00', 'Ear pain', 'Completed'),

('A-50139',
 (SELECT patient_id FROM patients WHERE patient_code = 'P-10064'),
 (SELECT doctor_id FROM doctors WHERE doctor_code = 'Dr-1003'),
 '2026-07-24', '15:00:00', 'Back pain', 'Completed'),

('A-50140',
 (SELECT patient_id FROM patients WHERE patient_code = 'P-10065'),
 (SELECT doctor_id FROM doctors WHERE doctor_code = 'Dr-1010'),
 '2026-07-30', '16:00:00', 'Eye examination', 'Completed'),

-- August
('A-50141',
 (SELECT patient_id FROM patients WHERE patient_code = 'P-10066'),
 (SELECT doctor_id FROM doctors WHERE doctor_code = 'Dr-1008'),
 '2026-08-03', '09:45:00', 'Gastric problem', 'Completed'),

('A-50142',
 (SELECT patient_id FROM patients WHERE patient_code = 'P-10067'),
 (SELECT doctor_id FROM doctors WHERE doctor_code = 'Dr-1002'),
 '2026-08-08', '11:00:00', 'Headache', 'Completed'),

('A-50143',
 (SELECT patient_id FROM patients WHERE patient_code = 'P-10068'),
 (SELECT doctor_id FROM doctors WHERE doctor_code = 'Dr-1007'),
 '2026-08-14', '12:30:00', 'Throat infection', 'Completed'),

('A-50144',
 (SELECT patient_id FROM patients WHERE patient_code = 'P-10069'),
 (SELECT doctor_id FROM doctors WHERE doctor_code = 'Dr-1006'),
 '2026-08-19', '14:00:00', 'Skin rash', 'Completed'),

('A-50145',
 (SELECT patient_id FROM patients WHERE patient_code = 'P-10070'),
 (SELECT doctor_id FROM doctors WHERE doctor_code = 'Dr-1011'),
 '2026-08-25', '15:30:00', 'Cardiac follow-up', 'Completed'),

('A-50146',
 (SELECT patient_id FROM patients WHERE patient_code = 'P-10071'),
 (SELECT doctor_id FROM doctors WHERE doctor_code = 'Dr-1004'),
 '2026-08-30', '16:15:00', 'Body pain', 'Completed'),

-- September
('A-50147',
 (SELECT patient_id FROM patients WHERE patient_code = 'P-10072'),
 (SELECT doctor_id FROM doctors WHERE doctor_code = 'Dr-1003'),
 '2026-09-04', '09:30:00', 'Joint pain', 'Completed'),

('A-50148',
 (SELECT patient_id FROM patients WHERE patient_code = 'P-10073'),
 (SELECT doctor_id FROM doctors WHERE doctor_code = 'Dr-1006'),
 '2026-09-10', '11:00:00', 'Skin allergy', 'Completed'),

('A-50149',
 (SELECT patient_id FROM patients WHERE patient_code = 'P-10074'),
 (SELECT doctor_id FROM doctors WHERE doctor_code = 'Dr-1008'),
 '2026-09-22', '14:30:00', 'Digestive consultation', 'Scheduled'),

('A-50150',
 (SELECT patient_id FROM patients WHERE patient_code = 'P-10075'),
 (SELECT doctor_id FROM doctors WHERE doctor_code = 'Dr-1010'),
 '2026-09-29', '15:30:00', 'Eye follow-up', 'Scheduled');
 
SELECT * FROM appointments;
-- -----------------------------------------------------------------------------------------------------------------

    
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
-- ------------------------------------------------------------------------------------------------------------    
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

('AD-1015',
 (SELECT patient_id FROM patients WHERE patient_code = 'P-10031'),
 (SELECT doctor_id FROM doctors WHERE doctor_code = 'Dr-1004'),
 (SELECT room_id FROM rooms WHERE room_code = 'R-103'),
 '2026-01-12', '2026-01-15',
 'Viral Fever', 'Discharged'),

('AD-1016',
 (SELECT patient_id FROM patients WHERE patient_code = 'P-10032'),
 (SELECT doctor_id FROM doctors WHERE doctor_code = 'Dr-1011'),
 (SELECT room_id FROM rooms WHERE room_code = 'R-203'),
 '2026-01-26', '2026-01-29',
 'Chest Pain', 'Discharged'),

('AD-1017',
 (SELECT patient_id FROM patients WHERE patient_code = 'P-10035'),
 (SELECT doctor_id FROM doctors WHERE doctor_code = 'Dr-1002'),
 (SELECT room_id FROM rooms WHERE room_code = 'R-204'),
 '2026-02-12', '2026-02-15',
 'Severe Migraine', 'Discharged'),

('AD-1018',
 (SELECT patient_id FROM patients WHERE patient_code = 'P-10036'),
 (SELECT doctor_id FROM doctors WHERE doctor_code = 'Dr-1010'),
 (SELECT room_id FROM rooms WHERE room_code = 'R-104'),
 '2026-02-22', '2026-02-24',
 'Eye Infection', 'Discharged'),

('AD-1019',
 (SELECT patient_id FROM patients WHERE patient_code = 'P-10038'),
 (SELECT doctor_id FROM doctors WHERE doctor_code = 'Dr-1008'),
 (SELECT room_id FROM rooms WHERE room_code = 'R-203'),
 '2026-03-14', '2026-03-17',
 'Gastric Infection', 'Discharged'),

('AD-1020',
 (SELECT patient_id FROM patients WHERE patient_code = 'P-10040'),
 (SELECT doctor_id FROM doctors WHERE doctor_code = 'Dr-1011'),
 (SELECT room_id FROM rooms WHERE room_code = 'R-302'),
 '2026-04-03', '2026-04-06',
 'Cardiac Observation', 'Discharged'),

('AD-1021',
 (SELECT patient_id FROM patients WHERE patient_code = 'P-10041'),
 (SELECT doctor_id FROM doctors WHERE doctor_code = 'Dr-1004'),
 (SELECT room_id FROM rooms WHERE room_code = 'R-103'),
 '2026-04-11', '2026-04-14',
 'High Fever', 'Discharged'),

('AD-1022',
 (SELECT patient_id FROM patients WHERE patient_code = 'P-10042'),
 (SELECT doctor_id FROM doctors WHERE doctor_code = 'Dr-1006'),
 (SELECT room_id FROM rooms WHERE room_code = 'R-204'),
 '2026-04-20', '2026-04-23',
 'Skin Infection', 'Discharged'),

('AD-1023',
 (SELECT patient_id FROM patients WHERE patient_code = 'P-10044'),
 (SELECT doctor_id FROM doctors WHERE doctor_code = 'Dr-1003'),
 (SELECT room_id FROM rooms WHERE room_code = 'R-203'),
 '2026-05-13', '2026-05-16',
 'Shoulder Injury', 'Discharged'),

('AD-1024',
 (SELECT patient_id FROM patients WHERE patient_code = 'P-10045'),
 (SELECT doctor_id FROM doctors WHERE doctor_code = 'Dr-1010'),
 (SELECT room_id FROM rooms WHERE room_code = 'R-104'),
 '2026-05-22', '2026-05-24',
 'Eye Infection', 'Discharged'),

('AD-1025',
 (SELECT patient_id FROM patients WHERE patient_code = 'P-10046'),
 (SELECT doctor_id FROM doctors WHERE doctor_code = 'Dr-1001'),
 (SELECT room_id FROM rooms WHERE room_code = 'R-302'),
 '2026-06-04', '2026-06-07',
 'Hypertension Observation', 'Discharged'),

('AD-1026',
 (SELECT patient_id FROM patients WHERE patient_code = 'P-10047'),
 (SELECT doctor_id FROM doctors WHERE doctor_code = 'Dr-1007'),
 (SELECT room_id FROM rooms WHERE room_code = 'R-103'),
 '2026-06-12', '2026-06-14',
 'Ear Infection', 'Discharged'),

('AD-1027',
 (SELECT patient_id FROM patients WHERE patient_code = 'P-10048'),
 (SELECT doctor_id FROM doctors WHERE doctor_code = 'Dr-1008'),
 (SELECT room_id FROM rooms WHERE room_code = 'R-203'),
 '2026-06-21', '2026-06-24',
 'Abdominal Pain', 'Discharged'),

('AD-1028',
 (SELECT patient_id FROM patients WHERE patient_code = 'P-10049'),
 (SELECT doctor_id FROM doctors WHERE doctor_code = 'Dr-1002'),
 (SELECT room_id FROM rooms WHERE room_code = 'R-204'),
 '2026-07-05', '2026-07-08',
 'Migraine Observation', 'Discharged'),

('AD-1029',
 (SELECT patient_id FROM patients WHERE patient_code = 'P-10050'),
 (SELECT doctor_id FROM doctors WHERE doctor_code = 'Dr-1012'),
 (SELECT room_id FROM rooms WHERE room_code = 'R-104'),
 '2026-08-14', '2026-08-17',
 'Viral Fever', 'Discharged'),

('AD-1030',
 (SELECT patient_id FROM patients WHERE patient_code = 'P-10037'),
 (SELECT doctor_id FROM doctors WHERE doctor_code = 'Dr-1006'),
 (SELECT room_id FROM rooms WHERE room_code = 'R-103'),
 '2026-09-15', NULL,
 'Severe Skin Infection', 'Admitted');
 
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

('AD-1031',
 (SELECT patient_id FROM patients WHERE patient_code = 'P-10051'),
 (SELECT doctor_id FROM doctors WHERE doctor_code = 'Dr-1001'),
 (SELECT room_id FROM rooms WHERE room_code = 'R-203'),
 '2026-01-06', '2026-01-09',
 'Chest Pain Observation', 'Discharged'),

('AD-1032',
 (SELECT patient_id FROM patients WHERE patient_code = 'P-10053'),
 (SELECT doctor_id FROM doctors WHERE doctor_code = 'Dr-1006'),
 (SELECT room_id FROM rooms WHERE room_code = 'R-103'),
 '2026-02-14', '2026-02-16',
 'Severe Skin Allergy', 'Discharged'),

('AD-1033',
 (SELECT patient_id FROM patients WHERE patient_code = 'P-10056'),
 (SELECT doctor_id FROM doctors WHERE doctor_code = 'Dr-1011'),
 (SELECT room_id FROM rooms WHERE room_code = 'R-302'),
 '2026-03-07', '2026-03-10',
 'Hypertension Observation', 'Discharged'),

('AD-1034',
 (SELECT patient_id FROM patients WHERE patient_code = 'P-10059'),
 (SELECT doctor_id FROM doctors WHERE doctor_code = 'Dr-1002'),
 (SELECT room_id FROM rooms WHERE room_code = 'R-204'),
 '2026-04-02', '2026-04-05',
 'Migraine Observation', 'Discharged'),

('AD-1035',
 (SELECT patient_id FROM patients WHERE patient_code = 'P-10062'),
 (SELECT doctor_id FROM doctors WHERE doctor_code = 'Dr-1001'),
 (SELECT room_id FROM rooms WHERE room_code = 'R-203'),
 '2026-05-10', '2026-05-13',
 'Cardiac Observation', 'Discharged'),

('AD-1036',
 (SELECT patient_id FROM patients WHERE patient_code = 'P-10065'),
 (SELECT doctor_id FROM doctors WHERE doctor_code = 'Dr-1010'),
 (SELECT room_id FROM rooms WHERE room_code = 'R-104'),
 '2026-06-06', '2026-06-08',
 'Eye Infection', 'Discharged'),

('AD-1037',
 (SELECT patient_id FROM patients WHERE patient_code = 'P-10068'),
 (SELECT doctor_id FROM doctors WHERE doctor_code = 'Dr-1007'),
 (SELECT room_id FROM rooms WHERE room_code = 'R-103'),
 '2026-07-09', '2026-07-11',
 'Throat Infection', 'Discharged'),

('AD-1038',
 (SELECT patient_id FROM patients WHERE patient_code = 'P-10071'),
 (SELECT doctor_id FROM doctors WHERE doctor_code = 'Dr-1004'),
 (SELECT room_id FROM rooms WHERE room_code = 'R-104'),
 '2026-08-05', '2026-08-08',
 'Viral Fever', 'Discharged'),

('AD-1039',
 (SELECT patient_id FROM patients WHERE patient_code = 'P-10073'),
 (SELECT doctor_id FROM doctors WHERE doctor_code = 'Dr-1008'),
 (SELECT room_id FROM rooms WHERE room_code = 'R-203'),
 '2026-09-08', '2026-09-11',
 'Gastric Infection', 'Discharged'),

('AD-1040',
 (SELECT patient_id FROM patients WHERE patient_code = 'P-10075'),
 (SELECT doctor_id FROM doctors WHERE doctor_code = 'Dr-1010'),
 (SELECT room_id FROM rooms WHERE room_code = 'R-204'),
 '2026-09-16', NULL,
 'Eye Infection Observation', 'Admitted');
 
SELECT * FROM admissions;
-- -------------------------------------------------------------------------------------------------------------    
    
    
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
    
    INSERT INTO treatments
(
    treatment_code,
    admission_id,
    doctor_id,
    treatment_name,
    treatment_date,
    treatment_cost,
    notes
)
VALUES

('T-1006',
 (SELECT admission_id FROM admissions WHERE admission_code = 'AD-1005'),
 (SELECT doctor_id FROM doctors WHERE doctor_code = 'Dr-1001'),
 'ECG', '2026-01-08', 2500, 'ECG completed'),

('T-1007',
 (SELECT admission_id FROM admissions WHERE admission_code = 'AD-1005'),
 (SELECT doctor_id FROM doctors WHERE doctor_code = 'Dr-1001'),
 'Blood Test', '2026-01-09', 1200, 'Cardiac blood panel'),

('T-1008',
 (SELECT admission_id FROM admissions WHERE admission_code = 'AD-1006'),
 (SELECT doctor_id FROM doctors WHERE doctor_code = 'Dr-1006'),
 'Allergy Evaluation', '2026-01-18', 1800, 'Skin examination'),

('T-1009',
 (SELECT admission_id FROM admissions WHERE admission_code = 'AD-1006'),
 (SELECT doctor_id FROM doctors WHERE doctor_code = 'Dr-1006'),
 'Skin Allergy Test', '2026-01-19', 2200, 'Allergy testing'),

('T-1010',
 (SELECT admission_id FROM admissions WHERE admission_code = 'AD-1007'),
 (SELECT doctor_id FROM doctors WHERE doctor_code = 'Dr-1011'),
 'Echocardiogram', '2026-02-06', 3500, 'Heart imaging'),

('T-1011',
 (SELECT admission_id FROM admissions WHERE admission_code = 'AD-1007'),
 (SELECT doctor_id FROM doctors WHERE doctor_code = 'Dr-1011'),
 'Cardiac Blood Panel', '2026-02-07', 1800, 'Blood investigation'),

('T-1012',
 (SELECT admission_id FROM admissions WHERE admission_code = 'AD-1008'),
 (SELECT doctor_id FROM doctors WHERE doctor_code = 'Dr-1004'),
 'Fever Panel', '2026-03-04', 1500, 'Blood examination'),

('T-1013',
 (SELECT admission_id FROM admissions WHERE admission_code = 'AD-1008'),
 (SELECT doctor_id FROM doctors WHERE doctor_code = 'Dr-1004'),
 'IV Medication', '2026-03-05', 1200, 'IV treatment'),

('T-1014',
 (SELECT admission_id FROM admissions WHERE admission_code = 'AD-1009'),
 (SELECT doctor_id FROM doctors WHERE doctor_code = 'Dr-1002'),
 'Neurological Examination', '2026-04-05', 3000, 'Migraine examination'),

('T-1015',
 (SELECT admission_id FROM admissions WHERE admission_code = 'AD-1009'),
 (SELECT doctor_id FROM doctors WHERE doctor_code = 'Dr-1002'),
 'Brain MRI', '2026-04-06', 6500, 'MRI investigation'),

('T-1016',
 (SELECT admission_id FROM admissions WHERE admission_code = 'AD-1010'),
 (SELECT doctor_id FROM doctors WHERE doctor_code = 'Dr-1011'),
 'Cardiac Observation', '2026-05-11', 4000, 'Continuous monitoring'),

('T-1017',
 (SELECT admission_id FROM admissions WHERE admission_code = 'AD-1010'),
 (SELECT doctor_id FROM doctors WHERE doctor_code = 'Dr-1011'),
 'Echocardiogram', '2026-05-12', 3500, 'Heart scan'),

('T-1018',
 (SELECT admission_id FROM admissions WHERE admission_code = 'AD-1011'),
 (SELECT doctor_id FROM doctors WHERE doctor_code = 'Dr-1001'),
 'ECG', '2026-06-13', 2500, 'ECG completed'),

('T-1019',
 (SELECT admission_id FROM admissions WHERE admission_code = 'AD-1011'),
 (SELECT doctor_id FROM doctors WHERE doctor_code = 'Dr-1001'),
 'Stress Test', '2026-06-14', 4500, 'Cardiac stress test'),

('T-1020',
 (SELECT admission_id FROM admissions WHERE admission_code = 'AD-1012'),
 (SELECT doctor_id FROM doctors WHERE doctor_code = 'Dr-1012'),
 'Blood Investigation', '2026-07-06', 1400, 'Routine blood tests'),

('T-1021',
 (SELECT admission_id FROM admissions WHERE admission_code = 'AD-1012'),
 (SELECT doctor_id FROM doctors WHERE doctor_code = 'Dr-1012'),
 'IV Treatment', '2026-07-07', 1600, 'Medication administered'),

('T-1022',
 (SELECT admission_id FROM admissions WHERE admission_code = 'AD-1013'),
 (SELECT doctor_id FROM doctors WHERE doctor_code = 'Dr-1002'),
 'Migraine Evaluation', '2026-08-09', 3200, 'Neurological assessment'),

('T-1023',
 (SELECT admission_id FROM admissions WHERE admission_code = 'AD-1013'),
 (SELECT doctor_id FROM doctors WHERE doctor_code = 'Dr-1002'),
 'CT Head Scan', '2026-08-10', 5500, 'CT examination'),

('T-1024',
 (SELECT admission_id FROM admissions WHERE admission_code = 'AD-1014'),
 (SELECT doctor_id FROM doctors WHERE doctor_code = 'Dr-1007'),
 'ENT Examination', '2026-09-06', 2200, 'ENT assessment'),

('T-1025',
 (SELECT admission_id FROM admissions WHERE admission_code = 'AD-1014'),
 (SELECT doctor_id FROM doctors WHERE doctor_code = 'Dr-1007'),
 'Nasal Endoscopy', '2026-09-07', 3800, 'Endoscopic examination');
 
 INSERT INTO treatments
(
    treatment_code,
    admission_id,
    doctor_id,
    treatment_name,
    treatment_date,
    treatment_cost,
    notes
)
VALUES

-- AD-1015 : Viral Fever
('T-1026',
 (SELECT admission_id FROM admissions WHERE admission_code = 'AD-1015'),
 (SELECT doctor_id FROM doctors WHERE doctor_code = 'Dr-1004'),
 'Blood Test', '2026-01-12', 1400, 'Complete blood examination'),

('T-1027',
 (SELECT admission_id FROM admissions WHERE admission_code = 'AD-1015'),
 (SELECT doctor_id FROM doctors WHERE doctor_code = 'Dr-1004'),
 'IV Medication', '2026-01-13', 1200, 'IV fluids and medication'),

-- AD-1016 : Chest Pain
('T-1028',
 (SELECT admission_id FROM admissions WHERE admission_code = 'AD-1016'),
 (SELECT doctor_id FROM doctors WHERE doctor_code = 'Dr-1011'),
 'ECG', '2026-01-26', 2500, 'Cardiac ECG'),

('T-1029',
 (SELECT admission_id FROM admissions WHERE admission_code = 'AD-1016'),
 (SELECT doctor_id FROM doctors WHERE doctor_code = 'Dr-1011'),
 'Echocardiogram', '2026-01-27', 3500, 'Heart imaging'),

('T-1030',
 (SELECT admission_id FROM admissions WHERE admission_code = 'AD-1016'),
 (SELECT doctor_id FROM doctors WHERE doctor_code = 'Dr-1011'),
 'Cardiac Blood Panel', '2026-01-28', 1800, 'Cardiac enzyme test'),

-- AD-1017 : Migraine
('T-1031',
 (SELECT admission_id FROM admissions WHERE admission_code = 'AD-1017'),
 (SELECT doctor_id FROM doctors WHERE doctor_code = 'Dr-1002'),
 'Neurological Examination', '2026-02-12', 3000, 'Neurological assessment'),

('T-1032',
 (SELECT admission_id FROM admissions WHERE admission_code = 'AD-1017'),
 (SELECT doctor_id FROM doctors WHERE doctor_code = 'Dr-1002'),
 'CT Head Scan', '2026-02-13', 5500, 'Head CT investigation'),

-- AD-1018 : Eye Infection
('T-1033',
 (SELECT admission_id FROM admissions WHERE admission_code = 'AD-1018'),
 (SELECT doctor_id FROM doctors WHERE doctor_code = 'Dr-1010'),
 'Eye Examination', '2026-02-22', 1800, 'Detailed eye examination'),

('T-1034',
 (SELECT admission_id FROM admissions WHERE admission_code = 'AD-1018'),
 (SELECT doctor_id FROM doctors WHERE doctor_code = 'Dr-1010'),
 'Eye Infection Treatment', '2026-02-23', 1400, 'Medication and treatment'),

-- AD-1019 : Gastric Infection
('T-1035',
 (SELECT admission_id FROM admissions WHERE admission_code = 'AD-1019'),
 (SELECT doctor_id FROM doctors WHERE doctor_code = 'Dr-1008'),
 'Abdominal Ultrasound', '2026-03-14', 2800, 'Abdominal imaging'),

('T-1036',
 (SELECT admission_id FROM admissions WHERE admission_code = 'AD-1019'),
 (SELECT doctor_id FROM doctors WHERE doctor_code = 'Dr-1008'),
 'Blood Investigation', '2026-03-15', 1500, 'Blood examination'),

-- AD-1020 : Cardiac Observation
('T-1037',
 (SELECT admission_id FROM admissions WHERE admission_code = 'AD-1020'),
 (SELECT doctor_id FROM doctors WHERE doctor_code = 'Dr-1011'),
 'ECG', '2026-04-03', 2500, 'Cardiac ECG'),

('T-1038',
 (SELECT admission_id FROM admissions WHERE admission_code = 'AD-1020'),
 (SELECT doctor_id FROM doctors WHERE doctor_code = 'Dr-1011'),
 'Echocardiogram', '2026-04-04', 3500, 'Heart imaging'),

('T-1039',
 (SELECT admission_id FROM admissions WHERE admission_code = 'AD-1020'),
 (SELECT doctor_id FROM doctors WHERE doctor_code = 'Dr-1011'),
 'Cardiac Monitoring', '2026-04-05', 3000, 'Continuous monitoring'),

-- AD-1021 : High Fever
('T-1040',
 (SELECT admission_id FROM admissions WHERE admission_code = 'AD-1021'),
 (SELECT doctor_id FROM doctors WHERE doctor_code = 'Dr-1004'),
 'Fever Panel', '2026-04-11', 1500, 'Blood and infection tests'),

('T-1041',
 (SELECT admission_id FROM admissions WHERE admission_code = 'AD-1021'),
 (SELECT doctor_id FROM doctors WHERE doctor_code = 'Dr-1004'),
 'IV Treatment', '2026-04-12', 1300, 'IV fluids and medication'),

-- AD-1022 : Skin Infection
('T-1042',
 (SELECT admission_id FROM admissions WHERE admission_code = 'AD-1022'),
 (SELECT doctor_id FROM doctors WHERE doctor_code = 'Dr-1006'),
 'Skin Examination', '2026-04-20', 1800, 'Dermatology examination'),

('T-1043',
 (SELECT admission_id FROM admissions WHERE admission_code = 'AD-1022'),
 (SELECT doctor_id FROM doctors WHERE doctor_code = 'Dr-1006'),
 'Allergy Test', '2026-04-21', 2200, 'Skin allergy testing'),

-- AD-1023 : Shoulder Injury
('T-1044',
 (SELECT admission_id FROM admissions WHERE admission_code = 'AD-1023'),
 (SELECT doctor_id FROM doctors WHERE doctor_code = 'Dr-1003'),
 'Shoulder X-Ray', '2026-05-13', 1900, 'Shoulder X-ray'),

('T-1045',
 (SELECT admission_id FROM admissions WHERE admission_code = 'AD-1023'),
 (SELECT doctor_id FROM doctors WHERE doctor_code = 'Dr-1003'),
 'Orthopedic Treatment', '2026-05-14', 2800, 'Pain management'),

-- AD-1024 : Eye Infection
('T-1046',
 (SELECT admission_id FROM admissions WHERE admission_code = 'AD-1024'),
 (SELECT doctor_id FROM doctors WHERE doctor_code = 'Dr-1010'),
 'Eye Examination', '2026-05-22', 1800, 'Detailed eye examination'),

('T-1047',
 (SELECT admission_id FROM admissions WHERE admission_code = 'AD-1024'),
 (SELECT doctor_id FROM doctors WHERE doctor_code = 'Dr-1010'),
 'Eye Medication', '2026-05-23', 1200, 'Eye infection medication'),

-- AD-1025 : Hypertension
('T-1048',
 (SELECT admission_id FROM admissions WHERE admission_code = 'AD-1025'),
 (SELECT doctor_id FROM doctors WHERE doctor_code = 'Dr-1001'),
 'ECG', '2026-06-04', 2500, 'ECG examination'),

('T-1049',
 (SELECT admission_id FROM admissions WHERE admission_code = 'AD-1025'),
 (SELECT doctor_id FROM doctors WHERE doctor_code = 'Dr-1001'),
 'Blood Pressure Monitoring', '2026-06-05', 1600, 'Continuous BP monitoring'),

('T-1050',
 (SELECT admission_id FROM admissions WHERE admission_code = 'AD-1025'),
 (SELECT doctor_id FROM doctors WHERE doctor_code = 'Dr-1001'),
 'Blood Test', '2026-06-06', 1400, 'Routine blood investigation'),

-- AD-1026 : Ear Infection
('T-1051',
 (SELECT admission_id FROM admissions WHERE admission_code = 'AD-1026'),
 (SELECT doctor_id FROM doctors WHERE doctor_code = 'Dr-1007'),
 'ENT Examination', '2026-06-12', 2200, 'ENT evaluation'),

('T-1052',
 (SELECT admission_id FROM admissions WHERE admission_code = 'AD-1026'),
 (SELECT doctor_id FROM doctors WHERE doctor_code = 'Dr-1007'),
 'Ear Infection Treatment', '2026-06-13', 1700, 'Medication and cleaning'),

-- AD-1027 : Abdominal Pain
('T-1053',
 (SELECT admission_id FROM admissions WHERE admission_code = 'AD-1027'),
 (SELECT doctor_id FROM doctors WHERE doctor_code = 'Dr-1008'),
 'Abdominal Ultrasound', '2026-06-21', 2800, 'Ultrasound examination'),

('T-1054',
 (SELECT admission_id FROM admissions WHERE admission_code = 'AD-1027'),
 (SELECT doctor_id FROM doctors WHERE doctor_code = 'Dr-1008'),
 'Liver Function Test', '2026-06-22', 1800, 'Liver function analysis'),

-- AD-1028 : Migraine
('T-1055',
 (SELECT admission_id FROM admissions WHERE admission_code = 'AD-1028'),
 (SELECT doctor_id FROM doctors WHERE doctor_code = 'Dr-1002'),
 'Neurological Examination', '2026-07-05', 3000, 'Neurological assessment'),

('T-1056',
 (SELECT admission_id FROM admissions WHERE admission_code = 'AD-1028'),
 (SELECT doctor_id FROM doctors WHERE doctor_code = 'Dr-1002'),
 'Brain MRI', '2026-07-06', 6500, 'MRI examination'),

-- AD-1029 : Viral Fever
('T-1057',
 (SELECT admission_id FROM admissions WHERE admission_code = 'AD-1029'),
 (SELECT doctor_id FROM doctors WHERE doctor_code = 'Dr-1012'),
 'Blood Investigation', '2026-08-14', 1400, 'Blood tests'),

('T-1058',
 (SELECT admission_id FROM admissions WHERE admission_code = 'AD-1029'),
 (SELECT doctor_id FROM doctors WHERE doctor_code = 'Dr-1012'),
 'IV Treatment', '2026-08-15', 1600, 'IV fluids and medication'),

-- AD-1030 : Skin Infection
('T-1059',
 (SELECT admission_id FROM admissions WHERE admission_code = 'AD-1030'),
 (SELECT doctor_id FROM doctors WHERE doctor_code = 'Dr-1006'),
 'Skin Examination', '2026-09-15', 1800, 'Dermatology examination'),

('T-1060',
 (SELECT admission_id FROM admissions WHERE admission_code = 'AD-1030'),
 (SELECT doctor_id FROM doctors WHERE doctor_code = 'Dr-1006'),
 'Allergy Test', '2026-09-16', 2200, 'Allergy investigation'),

('T-1061',
 (SELECT admission_id FROM admissions WHERE admission_code = 'AD-1030'),
 (SELECT doctor_id FROM doctors WHERE doctor_code = 'Dr-1006'),
 'Skin Culture Test', '2026-09-17', 2000, 'Laboratory culture test');

INSERT INTO treatments
(
    treatment_code,
    admission_id,
    doctor_id,
    treatment_name,
    treatment_date,
    treatment_cost,
    notes
)
VALUES

-- AD-1031 : Chest Pain
('T-1062',
 (SELECT admission_id FROM admissions WHERE admission_code = 'AD-1031'),
 (SELECT doctor_id FROM doctors WHERE doctor_code = 'Dr-1001'),
 'ECG', '2026-01-06', 2500, 'Cardiac ECG'),

('T-1063',
 (SELECT admission_id FROM admissions WHERE admission_code = 'AD-1031'),
 (SELECT doctor_id FROM doctors WHERE doctor_code = 'Dr-1001'),
 'Blood Test', '2026-01-07', 1400, 'Cardiac blood investigation'),

-- AD-1032 : Skin Allergy
('T-1064',
 (SELECT admission_id FROM admissions WHERE admission_code = 'AD-1032'),
 (SELECT doctor_id FROM doctors WHERE doctor_code = 'Dr-1006'),
 'Skin Examination', '2026-02-14', 1800, 'Dermatology examination'),

('T-1065',
 (SELECT admission_id FROM admissions WHERE admission_code = 'AD-1032'),
 (SELECT doctor_id FROM doctors WHERE doctor_code = 'Dr-1006'),
 'Allergy Test', '2026-02-15', 2200, 'Skin allergy testing'),

-- AD-1033 : Hypertension
('T-1066',
 (SELECT admission_id FROM admissions WHERE admission_code = 'AD-1033'),
 (SELECT doctor_id FROM doctors WHERE doctor_code = 'Dr-1011'),
 'ECG', '2026-03-07', 2500, 'Cardiac evaluation'),

('T-1067',
 (SELECT admission_id FROM admissions WHERE admission_code = 'AD-1033'),
 (SELECT doctor_id FROM doctors WHERE doctor_code = 'Dr-1011'),
 'Blood Pressure Monitoring', '2026-03-08', 1600, 'Continuous BP monitoring'),

-- AD-1034 : Migraine
('T-1068',
 (SELECT admission_id FROM admissions WHERE admission_code = 'AD-1034'),
 (SELECT doctor_id FROM doctors WHERE doctor_code = 'Dr-1002'),
 'Neurological Examination', '2026-04-02', 3000, 'Neurological assessment'),

('T-1069',
 (SELECT admission_id FROM admissions WHERE admission_code = 'AD-1034'),
 (SELECT doctor_id FROM doctors WHERE doctor_code = 'Dr-1002'),
 'CT Head Scan', '2026-04-03', 5500, 'CT examination'),

-- AD-1035 : Cardiac Observation
('T-1070',
 (SELECT admission_id FROM admissions WHERE admission_code = 'AD-1035'),
 (SELECT doctor_id FROM doctors WHERE doctor_code = 'Dr-1001'),
 'Echocardiogram', '2026-05-10', 3500, 'Heart imaging'),

('T-1071',
 (SELECT admission_id FROM admissions WHERE admission_code = 'AD-1035'),
 (SELECT doctor_id FROM doctors WHERE doctor_code = 'Dr-1001'),
 'Cardiac Monitoring', '2026-05-11', 3000, 'Continuous cardiac monitoring'),

-- AD-1036 : Eye Infection
('T-1072',
 (SELECT admission_id FROM admissions WHERE admission_code = 'AD-1036'),
 (SELECT doctor_id FROM doctors WHERE doctor_code = 'Dr-1010'),
 'Eye Examination', '2026-06-06', 1800, 'Detailed eye examination'),

('T-1073',
 (SELECT admission_id FROM admissions WHERE admission_code = 'AD-1036'),
 (SELECT doctor_id FROM doctors WHERE doctor_code = 'Dr-1010'),
 'Eye Infection Treatment', '2026-06-07', 1400, 'Medication and treatment'),

-- AD-1037 : Throat Infection
('T-1074',
 (SELECT admission_id FROM admissions WHERE admission_code = 'AD-1037'),
 (SELECT doctor_id FROM doctors WHERE doctor_code = 'Dr-1007'),
 'ENT Examination', '2026-07-09', 2200, 'ENT assessment'),

('T-1075',
 (SELECT admission_id FROM admissions WHERE admission_code = 'AD-1037'),
 (SELECT doctor_id FROM doctors WHERE doctor_code = 'Dr-1007'),
 'Throat Infection Treatment', '2026-07-10', 1700, 'Medication and treatment'),

-- AD-1038 : Viral Fever
('T-1076',
 (SELECT admission_id FROM admissions WHERE admission_code = 'AD-1038'),
 (SELECT doctor_id FROM doctors WHERE doctor_code = 'Dr-1004'),
 'Fever Panel', '2026-08-05', 1500, 'Blood and infection tests'),

('T-1077',
 (SELECT admission_id FROM admissions WHERE admission_code = 'AD-1038'),
 (SELECT doctor_id FROM doctors WHERE doctor_code = 'Dr-1004'),
 'IV Treatment', '2026-08-06', 1300, 'IV fluids and medication'),

-- AD-1039 : Gastric Infection
('T-1078',
 (SELECT admission_id FROM admissions WHERE admission_code = 'AD-1039'),
 (SELECT doctor_id FROM doctors WHERE doctor_code = 'Dr-1008'),
 'Abdominal Ultrasound', '2026-09-08', 2800, 'Abdominal imaging'),

('T-1079',
 (SELECT admission_id FROM admissions WHERE admission_code = 'AD-1039'),
 (SELECT doctor_id FROM doctors WHERE doctor_code = 'Dr-1008'),
 'Blood Investigation', '2026-09-09', 1500, 'Blood examination'),

-- AD-1040 : Eye Infection Observation
('T-1080',
 (SELECT admission_id FROM admissions WHERE admission_code = 'AD-1040'),
 (SELECT doctor_id FROM doctors WHERE doctor_code = 'Dr-1010'),
 'Eye Examination', '2026-09-16', 1800, 'Eye infection assessment');   
 
SELECT * FROM treatments;
-- -------------------------------------------------------------------------------------------------------------
    
    
    
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
    
INSERT INTO billing
(
    bill_code,
    admission_id,
    room_charge,
    treatment_charge,
    other_charge,
    total_amount,
    bill_date,
    payment_status
)
VALUES

('B-1005',
 (SELECT admission_id FROM admissions WHERE admission_code = 'AD-1005'),
 4500, 3700, 500, 8700, '2026-01-11', 'Paid'),

('B-1006',
 (SELECT admission_id FROM admissions WHERE admission_code = 'AD-1006'),
 7000, 4000, 600, 11600, '2026-01-20', 'Pending'),

('B-1007',
 (SELECT admission_id FROM admissions WHERE admission_code = 'AD-1007'),
 10500, 5300, 900, 16700, '2026-02-09', 'Paid'),

('B-1008',
 (SELECT admission_id FROM admissions WHERE admission_code = 'AD-1008'),
 4500, 2700, 400, 7600, '2026-03-07', 'Paid'),

('B-1009',
 (SELECT admission_id FROM admissions WHERE admission_code = 'AD-1009'),
 10500, 9500, 1200, 21200, '2026-04-08', 'Pending'),

('B-1010',
 (SELECT admission_id FROM admissions WHERE admission_code = 'AD-1010'),
 24000, 7500, 1500, 33000, '2026-05-14', 'Paid'),

('B-1011',
 (SELECT admission_id FROM admissions WHERE admission_code = 'AD-1011'),
 4500, 7000, 700, 12200, '2026-06-16', 'Paid'),

('B-1012',
 (SELECT admission_id FROM admissions WHERE admission_code = 'AD-1012'),
 3000, 3000, 350, 6350, '2026-07-08', 'Pending'),

('B-1013',
 (SELECT admission_id FROM admissions WHERE admission_code = 'AD-1013'),
 10500, 8700, 800, 20000, '2026-08-12', 'Paid'),

('B-1014',
 (SELECT admission_id FROM admissions WHERE admission_code = 'AD-1014'),
 14000, 6000, 650, 20650, '2026-09-10', 'Pending'); 
 
 INSERT INTO billing
(
    bill_code,
    admission_id,
    room_charge,
    treatment_charge,
    other_charge,
    total_amount,
    bill_date,
    payment_status
)
VALUES

('B-1015',
 (SELECT admission_id FROM admissions WHERE admission_code = 'AD-1015'),
 4500, 2600, 450, 7550, '2026-01-15', 'Paid'),

('B-1016',
 (SELECT admission_id FROM admissions WHERE admission_code = 'AD-1016'),
 10500, 7800, 900, 19200, '2026-01-29', 'Pending'),

('B-1017',
 (SELECT admission_id FROM admissions WHERE admission_code = 'AD-1017'),
 10500, 8500, 1200, 20200, '2026-02-15', 'Paid'),

('B-1018',
 (SELECT admission_id FROM admissions WHERE admission_code = 'AD-1018'),
 3000, 3200, 350, 6550, '2026-02-24', 'Paid'),

('B-1019',
 (SELECT admission_id FROM admissions WHERE admission_code = 'AD-1019'),
 10500, 4300, 650, 15450, '2026-03-17', 'Pending'),

('B-1020',
 (SELECT admission_id FROM admissions WHERE admission_code = 'AD-1020'),
 24000, 9000, 1800, 34800, '2026-04-06', 'Paid'),

('B-1021',
 (SELECT admission_id FROM admissions WHERE admission_code = 'AD-1021'),
 4500, 2800, 400, 7700, '2026-04-14', 'Paid'),

('B-1022',
 (SELECT admission_id FROM admissions WHERE admission_code = 'AD-1022'),
 10500, 4000, 650, 15150, '2026-04-23', 'Pending'),

('B-1023',
 (SELECT admission_id FROM admissions WHERE admission_code = 'AD-1023'),
 10500, 4700, 700, 15900, '2026-05-16', 'Paid'),

('B-1024',
 (SELECT admission_id FROM admissions WHERE admission_code = 'AD-1024'),
 3000, 3000, 350, 6350, '2026-05-24', 'Paid'),

('B-1025',
 (SELECT admission_id FROM admissions WHERE admission_code = 'AD-1025'),
 24000, 5500, 1400, 30900, '2026-06-07', 'Pending'),

('B-1026',
 (SELECT admission_id FROM admissions WHERE admission_code = 'AD-1026'),
 3000, 3900, 400, 7300, '2026-06-14', 'Paid'),

('B-1027',
 (SELECT admission_id FROM admissions WHERE admission_code = 'AD-1027'),
 10500, 4600, 750, 15850, '2026-06-24', 'Pending'),

('B-1028',
 (SELECT admission_id FROM admissions WHERE admission_code = 'AD-1028'),
 10500, 9500, 1200, 21200, '2026-07-08', 'Paid'),

('B-1029',
 (SELECT admission_id FROM admissions WHERE admission_code = 'AD-1029'),
 4500, 3000, 450, 7950, '2026-08-17', 'Paid'),

('B-1030',
 (SELECT admission_id FROM admissions WHERE admission_code = 'AD-1030'),
 3000, 6000, 500, 9500, '2026-09-17', 'Pending');
 
 INSERT INTO billing
(
    bill_code,
    admission_id,
    room_charge,
    treatment_charge,
    other_charge,
    total_amount,
    bill_date,
    payment_status
)
VALUES

('B-1031',
 (SELECT admission_id FROM admissions WHERE admission_code = 'AD-1031'),
 10500, 3900, 600, 15000,
 '2026-01-09', 'Paid'),

('B-1032',
 (SELECT admission_id FROM admissions WHERE admission_code = 'AD-1032'),
 3000, 4000, 400, 7400,
 '2026-02-16', 'Paid'),

('B-1033',
 (SELECT admission_id FROM admissions WHERE admission_code = 'AD-1033'),
 24000, 4100, 1500, 29600,
 '2026-03-10', 'Pending'),

('B-1034',
 (SELECT admission_id FROM admissions WHERE admission_code = 'AD-1034'),
 10500, 8500, 1000, 20000,
 '2026-04-05', 'Paid'),

('B-1035',
 (SELECT admission_id FROM admissions WHERE admission_code = 'AD-1035'),
 10500, 6500, 800, 17800,
 '2026-05-13', 'Pending'),

('B-1036',
 (SELECT admission_id FROM admissions WHERE admission_code = 'AD-1036'),
 3000, 3200, 350, 6550,
 '2026-06-08', 'Paid'),

('B-1037',
 (SELECT admission_id FROM admissions WHERE admission_code = 'AD-1037'),
 3000, 3900, 400, 7300,
 '2026-07-11', 'Paid'),

('B-1038',
 (SELECT admission_id FROM admissions WHERE admission_code = 'AD-1038'),
 4500, 2800, 450, 7750,
 '2026-08-08', 'Pending'),

('B-1039',
 (SELECT admission_id FROM admissions WHERE admission_code = 'AD-1039'),
 10500, 4300, 700, 15500,
 '2026-09-11', 'Paid'),

('B-1040',
 (SELECT admission_id FROM admissions WHERE admission_code = 'AD-1040'),
 3500, 1800, 300, 5600,
 '2026-09-17', 'Pending');
    
SELECT * FROM billing;
-- -------------------------------------------------------------------------------------------------------------
    
    

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
    
INSERT INTO payments
(
    payment_code,
    bill_id,
    payment_date,
    payment_method,
    amount_paid,
    transaction_reference
)
VALUES

('PAY-1005',
 (SELECT bill_id FROM billing WHERE bill_code = 'B-1005'),
 '2026-01-11', 'Card', 8700, 'TXN100005'),

('PAY-1006',
 (SELECT bill_id FROM billing WHERE bill_code = 'B-1006'),
 '2026-01-20', 'UPI', 8000, 'TXN100006'),

('PAY-1007',
 (SELECT bill_id FROM billing WHERE bill_code = 'B-1007'),
 '2026-02-09', 'UPI', 10000, 'TXN100007'),

('PAY-1008',
 (SELECT bill_id FROM billing WHERE bill_code = 'B-1007'),
 '2026-02-09', 'Card', 6700, 'TXN100008'),

('PAY-1009',
 (SELECT bill_id FROM billing WHERE bill_code = 'B-1008'),
 '2026-03-07', 'Cash', 7600, NULL),

('PAY-1010',
 (SELECT bill_id FROM billing WHERE bill_code = 'B-1009'),
 '2026-04-08', 'Card', 15000, 'TXN100010'),

('PAY-1011',
 (SELECT bill_id FROM billing WHERE bill_code = 'B-1010'),
 '2026-05-14', 'UPI', 25000, 'TXN100011'),

('PAY-1012',
 (SELECT bill_id FROM billing WHERE bill_code = 'B-1010'),
 '2026-05-14', 'Insurance', 8000, 'INS100012'),

('PAY-1013',
 (SELECT bill_id FROM billing WHERE bill_code = 'B-1011'),
 '2026-06-16', 'UPI', 12200, 'TXN100013'),

('PAY-1014',
 (SELECT bill_id FROM billing WHERE bill_code = 'B-1012'),
 '2026-07-08', 'Cash', 3000, NULL),

('PAY-1015',
 (SELECT bill_id FROM billing WHERE bill_code = 'B-1013'),
 '2026-08-12', 'Card', 20000, 'TXN100015'),

('PAY-1016',
 (SELECT bill_id FROM billing WHERE bill_code = 'B-1014'),
 '2026-09-10', 'UPI', 10000, 'TXN100016'); 
 
 INSERT INTO payments
(
    payment_code,
    bill_id,
    payment_date,
    payment_method,
    amount_paid,
    transaction_reference
)
VALUES

-- B-1015 : Fully Paid = 7550
('PAY-1017',
 (SELECT bill_id FROM billing WHERE bill_code = 'B-1015'),
 '2026-01-15', 'UPI', 5000, 'TXN100017'),

('PAY-1018',
 (SELECT bill_id FROM billing WHERE bill_code = 'B-1015'),
 '2026-01-15', 'Card', 2550, 'TXN100018'),

-- B-1016 : Partial = 10000 / 19200
('PAY-1019',
 (SELECT bill_id FROM billing WHERE bill_code = 'B-1016'),
 '2026-01-29', 'UPI', 6000, 'TXN100019'),

('PAY-1020',
 (SELECT bill_id FROM billing WHERE bill_code = 'B-1016'),
 '2026-01-30', 'Cash', 4000, NULL),

-- B-1017 : Fully Paid = 20200
('PAY-1021',
 (SELECT bill_id FROM billing WHERE bill_code = 'B-1017'),
 '2026-02-15', 'Insurance', 12000, 'INS100021'),

('PAY-1022',
 (SELECT bill_id FROM billing WHERE bill_code = 'B-1017'),
 '2026-02-15', 'Card', 8200, 'TXN100022'),

-- B-1018 : Fully Paid = 6550
('PAY-1023',
 (SELECT bill_id FROM billing WHERE bill_code = 'B-1018'),
 '2026-02-24', 'Cash', 6550, NULL),

-- B-1019 : Partial = 8000 / 15450
('PAY-1024',
 (SELECT bill_id FROM billing WHERE bill_code = 'B-1019'),
 '2026-03-17', 'UPI', 5000, 'TXN100024'),

('PAY-1025',
 (SELECT bill_id FROM billing WHERE bill_code = 'B-1019'),
 '2026-03-18', 'Cash', 3000, NULL),

-- B-1020 : Fully Paid = 34800
('PAY-1026',
 (SELECT bill_id FROM billing WHERE bill_code = 'B-1020'),
 '2026-04-06', 'Insurance', 20000, 'INS100026'),

('PAY-1027',
 (SELECT bill_id FROM billing WHERE bill_code = 'B-1020'),
 '2026-04-06', 'Card', 14800, 'TXN100027'),

-- B-1021 : Fully Paid = 7700
('PAY-1028',
 (SELECT bill_id FROM billing WHERE bill_code = 'B-1021'),
 '2026-04-14', 'UPI', 7700, 'TXN100028'),

-- B-1022 : Partial = 9000 / 15150
('PAY-1029',
 (SELECT bill_id FROM billing WHERE bill_code = 'B-1022'),
 '2026-04-23', 'Card', 9000, 'TXN100029'),

-- B-1023 : Fully Paid = 15900
('PAY-1030',
 (SELECT bill_id FROM billing WHERE bill_code = 'B-1023'),
 '2026-05-16', 'UPI', 10000, 'TXN100030'),

('PAY-1031',
 (SELECT bill_id FROM billing WHERE bill_code = 'B-1023'),
 '2026-05-16', 'Insurance', 5900, 'INS100031'),

-- B-1024 : Fully Paid = 6350
('PAY-1032',
 (SELECT bill_id FROM billing WHERE bill_code = 'B-1024'),
 '2026-05-24', 'Cash', 6350, NULL),

-- B-1025 : Partial = 15000 / 30900
('PAY-1033',
 (SELECT bill_id FROM billing WHERE bill_code = 'B-1025'),
 '2026-06-07', 'Insurance', 10000, 'INS100033'),

('PAY-1034',
 (SELECT bill_id FROM billing WHERE bill_code = 'B-1025'),
 '2026-06-08', 'UPI', 5000, 'TXN100034'),

-- B-1026 : Fully Paid = 7300
('PAY-1035',
 (SELECT bill_id FROM billing WHERE bill_code = 'B-1026'),
 '2026-06-14', 'UPI', 7300, 'TXN100035'),

-- B-1027 : Partial = 8000 / 15850
('PAY-1036',
 (SELECT bill_id FROM billing WHERE bill_code = 'B-1027'),
 '2026-06-24', 'Card', 8000, 'TXN100036'),

-- B-1028 : Fully Paid = 21200
('PAY-1037',
 (SELECT bill_id FROM billing WHERE bill_code = 'B-1028'),
 '2026-07-08', 'UPI', 10000, 'TXN100037'),

('PAY-1038',
 (SELECT bill_id FROM billing WHERE bill_code = 'B-1028'),
 '2026-07-08', 'Insurance', 11200, 'INS100038'),

-- B-1029 : Fully Paid = 7950
('PAY-1039',
 (SELECT bill_id FROM billing WHERE bill_code = 'B-1029'),
 '2026-08-17', 'Card', 7950, 'TXN100039'),

-- B-1030 : Partial = 4000 / 9500
('PAY-1040',
 (SELECT bill_id FROM billing WHERE bill_code = 'B-1030'),
 '2026-09-17', 'UPI', 2500, 'TXN100040'),

('PAY-1041',
 (SELECT bill_id FROM billing WHERE bill_code = 'B-1030'),
 '2026-09-17', 'Cash', 1500, NULL);
 
INSERT INTO payments
(
    payment_code,
    bill_id,
    payment_date,
    payment_method,
    amount_paid,
    transaction_reference
)
VALUES

-- B-1031 : Fully Paid
('PAY-1042',
 (SELECT bill_id FROM billing WHERE bill_code = 'B-1031'),
 '2026-01-09', 'Card', 15000, 'TXN100042'),

-- B-1032 : Fully Paid
('PAY-1043',
 (SELECT bill_id FROM billing WHERE bill_code = 'B-1032'),
 '2026-02-16', 'UPI', 7400, 'TXN100043'),

-- B-1033 : Partial Payment
('PAY-1044',
 (SELECT bill_id FROM billing WHERE bill_code = 'B-1033'),
 '2026-03-10', 'Insurance', 12000, 'INS100044'),

-- B-1034 : Fully Paid
('PAY-1045',
 (SELECT bill_id FROM billing WHERE bill_code = 'B-1034'),
 '2026-04-05', 'Insurance', 20000, 'INS100045'),

-- B-1035 : Partial Payment
('PAY-1046',
 (SELECT bill_id FROM billing WHERE bill_code = 'B-1035'),
 '2026-05-13', 'UPI', 10000, 'TXN100046'),

-- B-1036 : Fully Paid
('PAY-1047',
 (SELECT bill_id FROM billing WHERE bill_code = 'B-1036'),
 '2026-06-08', 'Cash', 6550, NULL),

-- B-1037 : Fully Paid
('PAY-1048',
 (SELECT bill_id FROM billing WHERE bill_code = 'B-1037'),
 '2026-07-11', 'UPI', 7300, 'TXN100048'),

-- B-1038 : Partial Payment
('PAY-1049',
 (SELECT bill_id FROM billing WHERE bill_code = 'B-1038'),
 '2026-08-08', 'Card', 4000, 'TXN100049'),

-- B-1039 : Fully Paid
('PAY-1050',
 (SELECT bill_id FROM billing WHERE bill_code = 'B-1039'),
 '2026-09-11', 'Card', 15500, 'TXN100050'); 
    
SELECT * FROM payments;
-- ----------------------------------------------------------------------------------------------------------
    
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
    
SELECT
    d.doctor_code,
    d.doctor_name,
    d.specialization,
    dp.department_code,
    dp.department_name
FROM doctors d
JOIN departments dp
    ON d.department_id = dp.department_id;  
    
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
    
/*-------------------------------------------------------------------------------------------------------*/    
SELECT *
FROM vw_billing_summary
ORDER BY bill_date;  

select * from vw_admission_details
order by admission_date ;
    
select * from vw_appointment_details
order by appointment_date,
appointment_time;
/*--------------------------------------------------------------------------------------------------------*/
   
