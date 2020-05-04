DELIMITER $$
CREATE TRIGGER new_appointment_received
AFTER INSERT ON appointment 
FOR EACH ROW 
BEGIN 
    INSERT INTO queue (Appointment_id,actual_time ) VALUES (new.Appointment_id,null) ;
END$$
DELIMITER ;