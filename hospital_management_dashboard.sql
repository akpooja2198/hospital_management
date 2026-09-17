-- Project Phase 1 — Appointment Details View sdfsddfsd
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

    
-- Pending bills report KPI
-- Show patients who still have a balance to pay. 
SELECT * FROM vw_billing_summary
WHERE payment_status='Pending';

-- this is correct. 
SELECT
    patient_code,
    patient_name,
    total_amount,
    amount_paid,
    balance_amount
FROM vw_billing_summary
WHERE balance_amount > 0
ORDER BY balance_amount DESC;

-- Show total pending amount for the hospital.
SELECT
    SUM(balance_amount) AS total_pending_amount
FROM vw_billing_summary
WHERE balance_amount > 0
ORDER BY balance_amount;

-- correct methoded
SELECT
    COALESCE(SUM(balance_amount), 0) AS total_pending_amount
FROM vw_billing_summary
WHERE balance_amount > 0;

-- Show total amount collected by each payment_method, highest amount first.
select * from payments;
select payment_method, sum(amount_paid) as total_amount from payments
group by payment_method
order by total_amount desc ;

-- Find the average treatment cost for each doctor, highest average first.
select d.doctor_name,
 avg(t.treatment_cost) as average_treatment_cost from treatments t
join doctors d on t.doctor_id = d.doctor_id
group by d.doctor_name;


-- Find the total treatment cost for each admission, 
-- showing:admission_code patient_name total_treatment_cost
select a.admission_code, p.patient_name, 
sum(t.treatment_cost) as total_treatment_cost from treatments t 
join admissions a on t.admission_id = a.admission_id 
join patients p on a.patient_id = p.patient_id
group by a.admission_code, p.patient_name;

-- Show the total bill amount, total paid amount, and remaining balance for each patient.
-- Use vw_billing_summary with SUM() and GROUP BY patient_code, patient_name.
select * from vw_billing_summary;
select  patient_code, patient_name,sum(total_amount) as total_bill_amount ,
sum(amount_paid) as 'total paid amount', sum(balance_amount) as 'remaining balance'
from vw_billing_summary
group by patient_code, patient_name;

-- Find the patient with the highest remaining balance.
select  patient_code, patient_name,sum(total_amount) as total_bill_amount ,
sum(amount_paid) as total_paid_amount, sum(balance_amount) as remaining_balance
from vw_billing_summary
group by patient_code, patient_name
order by remaining_balance desc limit 1;
 