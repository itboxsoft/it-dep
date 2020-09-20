--Курсовая работа по курсу «Базы данных»

drop schema if exists it_dep cascade;

create schema if not exists it_dep;

-- 11. STATUS/Статус

create table it_dep.status (
	sta_id serial primary key not null
	, sta_nm varchar(50)
	, group_code smallint
);

-- 10. HARDWARE_MODEL/Модель оборудования

create table it_dep.hardware_model (
	hard_model_id serial primary key not null
	, hard_model_nm varchar(100)
	, hard_model_desc varchar(200)
);

-- 9. JOB_TYPE/Тип работы

create table it_dep.job_type (
	job_type_id serial primary key not null
	, job_type_nm varchar(50)
	, job_type_desc varchar(200)
);

-- 8. SOFTWARE_TYPE/Тип программы	
 
create table it_dep.software_type (
	soft_type_id serial primary key not null
	, soft_type_nm varchar(100)
	, soft_type_desc varchar(200)
);

-- 7. HARDWARE_TYPE/Тип оборудования

create table it_dep.hardware_type (
	hard_type_id serial primary key not null
	, hard_type_nm varchar(100)
	, hard_type_desc varchar(200)
);

-- 6. OFFICE/Кабинет

create table it_dep.office (
	ofc_id serial primary key not null
	, room_no smallint
	, floor_no smallint
	, bldg_nm varchar(50)
	, dep_nm varchar(50)
	, note_txt varchar(500)
);

-- 5. ORDER/Заказ

create table it_dep.order (
	order_id serial primary key not null
	, order_nm varchar(50)
	, note_txt varchar(500)
	, order_dt date
	, seller_nm varchar(50)
	, sta_id integer
	, foreign key (sta_id) references status(sta_id)
);

-- 3. EMPLOYEE/Сотрудник

create table employee (
    empl_id serial primary key not null
    , last_nm varchar(50) not null
    , first_nm varchar(50) not null
    , middle_nm varchar(50)
    , post_text varchar(50)
    , gender_code varchar(1)
    , phone_no varchar(20) 
    , email_txt varchar(50)
);


-- 4. JOB/Работа

create table it_dep.job (
	job_id serial primary key not null
	, job_nm varchar(50) not null
	, job_desc varchar(200)
	, exec_dt date not null
	, sta_id integer not null
	, empl_id integer
	, job_type_id integer not null
	, foreign key (sta_id) references status(sta_id)
	, foreign key (empl_id) references employee(empl_id)
	, foreign key (job_type_id) references job_type(job_type_id) 
);

-- 2. SOFTWARE/Программное обеспечение

create table it_dep.software (
	soft_id serial primary key not null
    , serial_no varchar(50)
    , key_code varchar(50)
    , activation_code varchar(2000)
    , sta_id integer not null
    , soft_desc varchar(200)
    , lic_expire_dt date
    , soft_nm varchar(50)
    , price_amt decimal(12,2)
    , soft_type_id integer
    , foreign key (sta_id)references status(sta_id) 
    , foreign key (soft_type_id)references software_type(soft_type_id) 
);

-- 1. HARDWARE/Оборудование

create table it_dep.hardware (
    hard_id serial primary key not null
    , serial_no varchar(50)
    , inventar_no varchar(50) not null
    , hard_type_id integer not null
    , hard_model_id integer not null
    , ofc_id integer not null
    , sta_id integer not null
    , hard_desc varchar(200)
    , guaranty_dt date
    , life_time_dt date
    , price_amt decimal(12,2)
    , foreign key (hard_type_id) references hardware_type(hard_type_id) 
    , foreign key (hard_model_id) references hardware_model(hard_model_id) 
    , foreign key (ofc_id) references office(ofc_id) 
    , foreign key (sta_id) references status(sta_id)
);

-- 12. ORDER_X_SOFTWARE

create table order_x_software(
	order_id integer not null
	, soft_id integer not null
	, foreign key (order_id) references "order" (order_id)
	, foreign key (soft_id) references software (soft_id)
);	
	
-- 13. ORDER_X_HARDWARE

create table order_x_hardtware(
	order_id integer not null
	, hard_id integer not null
	, foreign key (order_id) references "order" (order_id)
	, foreign key (hard_id) references hardware (hard_id)
);		

-- 14. JOB_X_HARDWARE

create table job_x_hardtware(
	job_id integer not null
	, hard_id integer not null
	, foreign key (job_id) references job (job_id)
	, foreign key (hard_id) references hardware (hard_id)
);		

-- 15. JOB_X_SOFTWARE

create table job_x_software(
	job_id integer not null
	, soft_id integer not null
	, foreign key (job_id) references job (job_id)
	, foreign key (soft_id) references software (soft_id)
);	

-- 16. HARDWARE_X_SOFTWARE

create table hardware_x_software(
	hard_id integer not null
	, soft_id integer not null
	, foreign key (hard_id) references hardware (hard_id)
	, foreign key (soft_id) references software (soft_id)
);	

