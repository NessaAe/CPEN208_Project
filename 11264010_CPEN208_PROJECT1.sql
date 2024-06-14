-- CREATE TABLE STUDENT (
--     student_id SERIAL PRIMARY KEY,
--     first_name VARCHAR(30),
--     last_name VARCHAR(30),
--     email VARCHAR(50),
--     phone VARCHAR(15),
--     date_of_birth DATE
-- );

-- CREATE TABLE STUDENT_FEES_PAYMENTS(
--     payment_id SERIAL PRIMARY KEY,
--     student_id INT REFERENCES student(student_id),
--     amount DECIMAL(10, 2),
--     payment_date DATE
-- );

-- CREATE TABLE COURSES(
--     course_code VARCHAR(10) PRIMARY KEY,
--     course_name VARCHAR(50),
-- 	credit_hours INT
--     );

-- CREATE TABLE ENROLLMENT(
--     enrollment_id SERIAL PRIMARY KEY,
--     student_id INT REFERENCES student(student_id),
--     course_code VARCHAR(10) REFERENCES COURSES(course_code),
-- 	enrollment_date DATE
-- );

-- CREATE TABLE LECTURERS(
--     lecturer_id SERIAL PRIMARY KEY,
--     first_name VARCHAR(30),
--     last_name VARCHAR(30),
--     email VARCHAR(50)
-- );

-- CREATE TABLE LECTURE_ASSIGNMENTS(
--     assignment_id SERIAL PRIMARY KEY,
--     lecturer_id INT REFERENCES lecturers(lecturer_id),
--     course_code VARCHAR(10) REFERENCES courses(course_code)
-- );

-- CREATE TABLE TEACHING_ASSISTANTS(
--     TA_id SERIAL PRIMARY KEY,
--     first_name VARCHAR(30),
--     last_name VARCHAR(30),
--     email VARCHAR(50)
-- );

-- CREATE TABLE TA_ASSIGNMENTS(
--     ta_assignment_id SERIAL PRIMARY KEY,
--     TA_id INT REFERENCES TEACHING_ASSISTANTS( TA_id ),
--     lecturer_id INT REFERENCES lecturers(lecturer_id)
-- );

--Inserting values into the various tables

-- INSERT INTO STUDENT(first_name, last_name, email, phone, date_of_birth) VALUES
-- ('Samia', 'Soleiman', 'sasoleiman@st.ug.edu.gh', '+233200530010', '2004-06-18'),
-- ('Nhyira', 'Nsaako', 'nansaako@st.ug.edu.gh', '+233200380045', '2004-02-21'),
-- ('Ishaan', 'Bhardwaj', 'ibhardwaj@st.ug.edu.gh', '+233200010036', '2004-04-11'),
-- ('John', 'Fodjour', 'jefodjour@st.ug.edu.gh', '+233207600027', '2000-06-01'),
-- ('Hayet',  'Dabanka', 'habanka@st.ug.edu.gh', '+233200054008', '2000-05-09'),
-- ('Mohammed',  'Hamisu', 'mshamisu@st.ug.edu.gh', '+233200210089', '2003-06-14'),
-- ('Asare', 'Marvin', 'asmarvin@st.ug.edu.gh', '+233202306010', '2004-05-16'),
-- ('Peggy', 'Somuah', 'pesomuah@st.ug.edu.gh', '+233201205012', '2004-09-01'),
-- ('Yasmeen', 'Doku', 'yxdoku@st.ug.edu.gh', '+233203408015', '2005-12-21'),
-- ('Muhammed', 'Haqq', 'mnhaqq@st.ug.edu.gh', '+233200330016', '2005-01-01'),
-- ('Vanessa', 'Ayertey', 'veayertey@st.ug.edu.gh', '+233203400017', '2004-02-04'),
-- ('Bernadine', 'Okrah', 'baokrah@st.ug.edu.gh', '+233200206018', '2004-03-09'),
-- ('Ebenezer', 'Arthur', 'eharthur@st.ug.edu.gh', '+233200860023', '2004-04-12'),
-- ('Andrews', 'Kwarteng ', 'atkwarteng.@st.ug.edu.gh', '+233202601020', '2004-05-11'),
-- ('Mohammed', 'Tanko', 'matanko@st.ug.edu.gh', '+233202604021', '2004-06-01');

-- INSERT INTO STUDENT_FEES_PAYMENTS(payment_id, student_id, amount, payment_date)VALUES
-- (10, 1, 2600.00, '2024-04-10'),
-- (11, 2, 1300.00, '2024-04-15'),
-- (12, 3, 1600.00, '2024-04-10'),
-- (13, 4, 2000.00, '2024-04-23'),
-- (14, 5, 1500.00, '2024-05-07'),
-- (15, 6, 2600.00, '2024-05-18'),
-- (16, 7, 1300.00, '2024-05-15'),
-- (17, 8, 2000.00, '2024-04-20'),
-- (18, 9, 1500.00, '2024-04-01'),
-- (19, 10, 1400.00, '2024-04-10'),
-- (20, 11, 2700.00, '2024-04-15'),
-- (21, 12, 2000.00, '2024-05-11'),
-- (22, 13, 1700.00, '2024-04-19'),
-- (23, 14, 3000.00, '2024-04-13'),
-- (24, 15, 2600.00, '2024-04-20');

-- INSERT INTO COURSES (course_code, course_name, credit_hours) VALUES
-- ('CPEN202', 'COMPUTER SYSTEMS DESIGN', 3),
-- ('CPEN206', 'LINEAR CIRCUITS', 3),
-- ('CPEN208', 'SOFTWARE ENGINEERING', 3),
-- ('CPEN212', 'DATA COMMUNICATION', 2),
-- ('CPEN204', 'DATA STRUCTURES AND ALGORITHMS', 2),
-- ('CBAS210', 'ACADEMIC WRITING II', 3),
-- ('SENG202', 'DIFFERENTIAL EQUATIONS', 4);

-- INSERT INTO ENROLLMENT( enrollment_id, student_id, course_code, enrollment_date)VALUES
-- (1, 1, 'CPEN202', '2024-05-10'),
-- (2, 2, 'CPEN208', '2024-05-15'),
-- (3, 3, 'CPEN202', '2024-05-20'),
-- (4, 1, 'CPEN204', '2024-05-10'),
-- (5, 1, 'CPEN206', '2024-05-15'),
-- (6, 5, 'CBAS210', '2024-05-20'),
-- (7, 2, 'CPEN206', '2024-06-01'),
-- (8, 3, 'SENG202', '2024-05-10'),
-- (9, 6, 'CBAS210', '2024-05-15'),
-- (10, 14, 'CPEN212', '2024-05-20'),
-- (11, 5, 'SENG202', '2024-06-01'),
-- (12, 8, 'CPEN204', '2024-05-10'),
-- (13, 4, 'CPEN212', '2024-05-15'),
-- (14, 7, 'CPEN208', '2024-05-20'),
-- (15, 6, 'CPEN208', '2024-06-01');

-- INSERT INTO LECTURERS(lecturer_id, first_name, last_name, email)VALUES
-- (01, 'Isaac', 'Aboagye', 'isaacaboagye@staff.ug.edu.gh'),
-- (02, 'Margaret', 'Ansah', 'margaretansah@staff.ug.edu.gh'),
-- (03, 'Percy', 'Okae', 'percyokae@staff.ug.edu.gh'),
-- (04, 'Godfrey', 'Mills', 'godfreymills@staff.ug.edu.gh'),
-- (05, 'John', 'Asiamah', 'johnasiamah@staff.ug.edu.gh'),
-- (06, 'Isaac', 'Debrah', 'isaacdebrah@staff.ug.edu.gh'),
-- (07, 'John', 'Kutor', 'johnkutor@@staff.ug.edu.gh');

--    INSERT INTO LECTURE_ASSIGNMENTS(assignment_id, lecturer_id, course_code)VALUES
--    (10, 04,'CPEN206'),
--    (11, 02,'CPEN204'),
--    (12, 05,'CPEN208'),
--    (13, 01,'CPEN212'),
--    (14, 06,'CPEN202'),
--    (15, 07,'SENG202'),
--    (16, 01,'CBAS210');
		
	
-- INSERT INTO TEACHING_ASSISTANTS (TA_id, first_name, last_name, email) VALUES
-- (1, 'Bamzy', NULL, 'bamzy@gmail.com'),
-- (2, 'Foster', 'Anopansuo', 'foster.anopansuo@gmail.com'),
-- (5, 'Hakeem', 'Nasser', 'hakeem.nasser@gmail.com'),
-- (6, 'Said', NULL, 'said@gmail.com'),
-- (7, 'Thaddeus', NULL, 'thaddeus@gmail.com');

-- INSERT INTO TA_ASSIGNMENTS(ta_assignment_id, TA_id, lecturer_id) VALUES
-- (10, 1, 01),
-- (11, 2, 02),
-- (12, 1, 03),
-- (13, 5, 04),
-- (14, 7, 05),
-- (15, 5, 06),
-- (16, 7, 07);


--Function for calculating outstanding fees

-- CREATE TABLE student_total_fees (
--     student_id INT PRIMARY KEY REFERENCES student(student_id),
--     total_fee DECIMAL(10, 2) NOT NULL DEFAULT 3000.00
-- );

 -- Populate the student_total_fees table with the total fee amount for each student
-- INSERT INTO student_total_fees (student_id, total_fee)
-- SELECT student_id, 3000.00
-- FROM student;

 -- Create the function to calculate outstanding fees
-- CREATE OR REPLACE FUNCTION calculate_outstanding_fees()
-- RETURNS JSON AS $$
-- DECLARE
--     result JSON;
-- BEGIN
--     SELECT json_agg(row_to_json(t))
--     INTO result
--     FROM (
--         SELECT s.student_id, s.first_name, s.last_name,
--                stf.total_fee - COALESCE(SUM(sfp.amount), 0) AS outstanding_fee
--         FROM student s
--         LEFT JOIN student_fees_payments sfp ON s.student_id = sfp.student_id
--         JOIN student_total_fees stf ON s.student_id = stf.student_id
--         GROUP BY s.student_id, stf.total_fee
--     ) t;

--     RETURN result;
-- END;
-- $$ LANGUAGE plpgsql;

--Calling the function to calculate the outstanding fees
SELECT calculate_outstanding_fees();

 
		
	
