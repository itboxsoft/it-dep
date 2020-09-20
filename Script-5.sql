--Сколько программ установлено на каждом оборудовании.
select distinct 
	CONCAT(ht.hard_type_nm, ' - ', h.inventar_no) as оборудование
	, count(s.soft_id)over(partition by h.hard_id) as "количество программ"
from 
	hardware h 
	inner join hardware_x_software hxs ON h.hard_id = hxs.hard_id 
	left join software s on hxs.soft_id = s.soft_id 
	inner join hardware_type ht on h.hard_type_id = ht.hard_type_id 
where 
	s.sta_id = 5
	and h.sta_id = 1
;

--Найти сотрудника, который чаше других работает в бухгалтерии.
select 
	FIO
	, count(job_id) as job_count
from	
(select 
	CONCAT(e.last_nm, ' ', e.first_nm, ' ', e.middle_nm) as FIO
	, j.job_id
	, o.dep_nm
from 
	employee e 
	inner join job j on j.empl_id = e.empl_id 
	inner join job_x_hardtware jxh on jxh.job_id = j.job_id 
	inner join hardware h on h.hard_id = jxh.hard_id 
	inner join office o on o.ofc_id = h.ofc_id 
union all
select 
	CONCAT(e.last_nm, ' ', e.first_nm, ' ', e.middle_nm) as FIO 
	, j.job_id
	, o.dep_nm
from 
	employee e 
	inner join job j on j.empl_id = e.empl_id 
	inner join job_x_software jxs on jxs.job_id = j.job_id 
	inner join software s on s.soft_id = jxs.soft_id 
	inner join hardware_x_software hxs on	hxs.soft_id = s.soft_id 
	inner join hardware h on h.hard_id = hxs.hard_id 
	inner join office o on o.ofc_id = h.ofc_id 
)as job_list
where 
	dep_nm = 'Бухгалтерия'
group by 
	FIO
order by
	job_count desc
limit 1	
;

--Найти программы, лицензия у которых, заканчивается в текущем году. 
select 
	soft_nm
	, serial_no
	, lic_expire_dt
from 
	software s2 
where 
	EXTRACT(YEAR FROM lic_expire_dt) = EXTRACT(YEAR FROM current_date)
;	

--Какие работы проводились на оборудовании в прошлом году.
select 
	jt.job_type_nm 	
	, h.hard_desc 
from 
	job j  
	inner join job_x_hardtware jxh on jxh.job_id = j.job_id 
	inner join hardware h on h.hard_id = jxh.hard_id
	inner join job_type jt on jt.job_type_id = j.job_type_id 
where 
	EXTRACT(YEAR FROM j.exec_dt) = EXTRACT(YEAR FROM (current_date - interval '1 year'))
;

--Какое оборудование установлено в кабинетах
select 
	o.room_no 
	, o.dep_nm 
	, hm.hard_model_nm 
from 
	office o 
	inner join hardware h on o.ofc_id = h.ofc_id 
	inner join hardware_model hm on hm.hard_model_id = h.hard_model_id 
	inner join status s2 on s2.sta_id = h.sta_id 
where 
	s2.sta_id = 1
order by 
	o.room_no 
	, o.dep_nm 
	, hm.hard_model_nm 
	