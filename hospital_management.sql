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