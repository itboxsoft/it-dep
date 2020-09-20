CREATE VIEW V_ORDERS AS
select 
	order_nm 
	, order_dt 
	, h.serial_no 
	, ht.hard_type_nm 
from 
	"order" o 
	inner join order_x_hardtware oxh on oxh.order_id = o.order_id 
	inner join hardware h on h.hard_id = oxh.hard_id 
	inner join hardware_type ht on h.hard_type_id = ht.hard_type_id 
union all
select 
	order_nm 
	, order_dt 
	, s.serial_no 
	, st.soft_type_nm 
from 
	"order" o 
	inner join order_x_software oxs on oxs.order_id = o.order_id 
	inner join software s on s.soft_id = oxs.soft_id 	
	inner join software_type st on s.soft_type_id = st.soft_type_id 
;

--какие программы установлены на каждом оборудовании.
CREATE VIEW V_SOFTWARE_ON_HARDWARE as
select 
	hard_model_nm
	, h.serial_no
	, h.inventar_no
	, soft_nm
from 
	hardware h 
	inner join hardware_x_software hxs ON h.hard_id = hxs.hard_id 
	left join software s on hxs.soft_id = s.soft_id 
	inner join hardware_type ht on h.hard_type_id = ht.hard_type_id
	inner join hardware_model hm on h.hard_model_id = hm.hard_model_id 
where 
	s.sta_id = 5
	and h.sta_id = 1
;