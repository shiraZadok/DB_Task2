-- DELIMITER $$
-- CREATE PROCEDURE `my_queue`
-- (in idDoc int)
-- BEGIN
-- SELECT a.Patient_id ,p.Patient_name, Appointment_time from appointment as a join patients as p
-- where a.Patient_id=p.Patient_id and doctor_id=idDoc and Appointment_time>now()
-- group by doctor_id ,appointment_time ;
-- END $$
-- DELIMITER ;

call my_queue(22);

