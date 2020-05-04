-- DELIMITER $$
-- CREATE PROCEDURE `show_queue_summary`()
-- BEGIN
-- select doctor_id, date_, num_of_Patient from queue_summary
-- group by doctor_id, date_;
-- END $$
-- DELIMITER ;

call show_queue_summary();