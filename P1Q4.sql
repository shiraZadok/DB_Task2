-- DELIMITER $$
-- CREATE TRIGGER new_patient_received 
-- AFTER INSERT ON queue 
-- FOR EACH ROW 
-- BEGIN 
-- update queue_summary set num_of_Patient=num_of_Patient+1
-- where 
-- (doctor_id = (select doctor_id from appointment where Appointment_id=new.Appointment_id))
-- and
-- (cast(date_ as date) = (select cast(Appointment_time as date) from appointment where Appointment_id=new.Appointment_id));
-- END$$
-- DELIMITER ;

-- DELIMITER $$
-- CREATE TRIGGER patient_delete 
-- AFTER DELETE ON queue 
-- FOR EACH ROW 
-- BEGIN 
-- update queue_summary set  num_of_Patient=num_of_Patient-1
-- where 
-- (doctor_id = (select doctor_id from appointment where Appointment_id = OLD.Appointment_id))
-- and
-- (cast(date_ as date) = (select cast(Appointment_time as date) from appointment where Appointment_id = OLD.Appointment_id));
-- END$$
-- DELIMITER ;

drop trigger patient_delete;
drop trigger new_patient_received;
DELETE FROM queue WHERE Appointment_id=4 ;
call show_queue_summary();
-- insert into queue values (4,null);
-- call show_queue_summary();