CREATE VIEW V_EMPLOYEE AS
select
	last_nm || first_nm || middle_nm as Name
	, post_text 
	, 'XXX-XXXX-'|| Right(phone_no, 4) as Phone
	, case 
		when email_txt is null then 'none'
		else 'username@domain.com'
	  end	
from
	employee e ;

CREATE VIEW V_ORDER AS
select 
	order_nm 
	, order_dt 
from 
	"order";

CREATE VIEW V_SOFTWARE AS
select 
	serial_no 
	, '***-***-***' as key_code 
	, soft_desc 
	, soft_nm 
from 
	software;

CREATE VIEW V_HARDWARE as
select 
	serial_no 
	, inventar_no 
	, hard_desc 
from 
	hardware;
