select doctor_name, salary
from doctors as `do` inner join queue_summary as `qu`
where `do`.doctor_id = `qu`.doctor_id and (cast(date_ as date)='2020-04-20' and num_of_Patient>4);
