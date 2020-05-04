select doctor_name, salary
from doctors inner join queue_summary
where (cast(date_ as date)='2020-04-20' and num_of_Patient>4);