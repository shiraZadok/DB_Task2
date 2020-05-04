-- DELIMITER $$
-- CREATE PROCEDURE `actual_time`
-- (in idPatient int)
-- BEGIN
-- select @numAp := Appointment_id from appointment where Patient_id in(
-- select Patient_id from appointment where Patient_id=idPatient);
-- update queue set actual_time=now() where Appointment_id = @numAp;  
-- END $$
-- DELIMITER ;

call actual_time(88);

