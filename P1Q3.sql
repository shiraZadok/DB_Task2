-- CREATE VIEW max_waiting AS
-- select Patient_id, TIMEDIFF(q.actual_time,a.Appointment_time) as Waiting_Time
-- from appointment as a join  queue as q
-- on a.Appointment_id = q.Appointment_id
-- order by  Waiting_Time desc limit 10;

select * from max_waiting
