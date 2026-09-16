-- Project Phase 1 — Appointment Details View s
CREATE VIEW vw_appointment_details AS
SELECT
    a.appointment_code,
    p.patient_code,
    p.patient_name,
    p.gender,
    p.city,
    d.doctor_code,
    d.doctor_name,
    d.specialization,
    dp.department_code,
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
    
SELECT * FROM vw_appointment_details
WHERE status = 'Completed';

-- Project Phase 2 - Admission Details View.
CREATE VIEW vw_admission_details AS
SELECT
    a.admission_code,
    p.patient_code,
    p.patient_name,
    p.gender,
    p.city,
    d.doctor_name,
    dp.department_name,
    r.room_number,
    r.room_type,
    r.daily_charge,
    a.admission_date,
    a.discharge_date,
    a.diagnosis,
    a.status
FROM admissions a
JOIN patients p
    ON a.patient_id = p.patient_id
JOIN doctors d
    ON a.doctor_id = d.doctor_id
JOIN departments dp
    ON d.department_id = dp.department_id
JOIN rooms r
    ON a.room_id = r.room_id;

SELECT *
FROM vw_admission_details;

SELECT
    admission_code,
    patient_name,
    doctor_name,
    room_number,
    diagnosis
FROM vw_admission_details
WHERE status = 'Admitted';

-- Project Phase 3 — Billing Summary View
CREATE VIEW vw_billing_summary AS
SELECT
    b.bill_code,
    p.patient_code,
    p.patient_name,
    a.admission_code,
    b.total_amount,
    COALESCE(SUM(py.amount_paid), 0) AS amount_paid,
    b.total_amount - COALESCE(SUM(py.amount_paid), 0) AS balance_amount,
    b.bill_date,
    b.payment_status
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
    a.admission_code,
    b.total_amount,
    b.bill_date,
    b.payment_status;
    
SELECT * FROM vw_billing_summary;

SELECT * FROM vw_billing_summary
WHERE payment_status='Pending';

-- Business KPI phase of the project.
-- KPI 1 — Total Hospital Revenue.
SELECT
    SUM(amount_paid) AS total_revenue
FROM payments;

-- pending amount:
SELECT
    SUM(balance_amount) AS total_pending_amount
FROM vw_billing_summary
WHERE balance_amount > 0;

SELECT
    department_name,
    COUNT(*) AS total_appointments
FROM vw_appointment_details
GROUP BY department_name
ORDER BY total_appointments DESC;

SELECT
    doctor_name,
    COUNT(*) AS total_appointments
FROM vw_appointment_details
GROUP BY doctor_name
ORDER BY total_appointments DESC;

-- KPI:Find the top 3 doctors by number of appointments.
SELECT
    doctor_name,
    COUNT(*) AS total_appointments
FROM vw_appointment_details
GROUP BY doctor_name
ORDER BY total_appointments DESC limit 3;

-- Find the top 3 departments by number of appointments.
SELECT
    department_name,
    COUNT(*) AS total_appointments
FROM vw_appointment_details
GROUP BY department_name
ORDER BY total_appointments DESC limit 3;

-- Monthly Revenue Analysis.
-- Use the payments table
SELECT
    YEAR(payment_date) AS year,
    MONTH(payment_date) AS month,
    SUM(amount_paid) AS monthly_revenue
FROM payments
GROUP BY
    YEAR(payment_date),
    MONTH(payment_date)
ORDER BY
    year,
    month;
    
SELECT
    DATE_FORMAT(payment_date, '%Y-%m') AS revenue_month,
    SUM(amount_paid) AS monthly_revenue
FROM payments
GROUP BY DATE_FORMAT(payment_date, '%Y-%m')
ORDER BY revenue_month;    

    
