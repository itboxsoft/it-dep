--\/\/\/\--
insert into status (sta_nm, group_code) values('Исправно', 1);
insert into status (sta_nm, group_code) values('Требует ремонта', 1);
insert into status (sta_nm, group_code) values('В ремонте', 1);
insert into status (sta_nm, group_code) values('Списано', 1);
insert into status (sta_nm, group_code) values('Установлено, работает', 2);
insert into status (sta_nm, group_code) values('Нет лицензии', 2);
insert into status (sta_nm, group_code) values('Требует обновления', 2);
insert into status (sta_nm, group_code) values('Устарело', 2);
insert into status (sta_nm, group_code) values('Назначена', 3);
insert into status (sta_nm, group_code) values('В процессе выполнения', 3);
insert into status (sta_nm, group_code) values('Выполнена', 3);
insert into status (sta_nm, group_code) values('Запланирован', 4);
insert into status (sta_nm, group_code) values('Согласование', 4);
insert into status (sta_nm, group_code) values('Выполнен', 4);
--\/\/\/\--
--insert into hardware_model (hard_model_nm, hard_model_desc) values('Компьютер');
--\/\/\/\--
insert into job_type (job_type_nm) values('Чистка от пыли');
insert into job_type (job_type_nm) values('Диагностика');
insert into job_type (job_type_nm) values('Установка оборудования');
insert into job_type (job_type_nm) values('Замена оборудования');
insert into job_type (job_type_nm) values('Ремонт оборудования');
insert into job_type (job_type_nm) values('Устновка программы');
insert into job_type (job_type_nm) values('Обновление программы');
insert into job_type (job_type_nm) values('Настройка программы');
insert into job_type (job_type_nm) values('Замена картриджа');
insert into job_type (job_type_nm) values('Профилакатика 1');
insert into job_type (job_type_nm) values('Профилакатика 2');
insert into job_type (job_type_nm) values('Проверка на вирусы');
--\/\/\/\--
insert into software_type (soft_type_nm, soft_type_desc) values('Операционные системы', 'комплекс взаимосвязанных программ, предназначенных для управления ресурсами компьютера и организации взаимодействия с пользователем.');
insert into software_type (soft_type_nm, soft_type_desc) values('Системные утилиты', 'системное не решает конкретные практические задачи, а лишь обеспечивает работу других программ, предоставляя им сервисные функции.');
insert into software_type (soft_type_nm, soft_type_desc) values('Видеоредакторы', 'Видеоредактор — компьютерная программа, включающая в себя набор инструментов, которые позволяют осуществлять нелинейный монтаж видео- и звука.');
insert into software_type (soft_type_nm, soft_type_desc) values('Антивирусы', 'Антиви́русная програ́мма (антиви́рус, средство антивирусной защиты[1], средство обнаружения вредоносных программ[1])...');
insert into software_type (soft_type_nm, soft_type_desc) values('Офисные пакеты', 'О́фисный паке́т — набор приложений, предназначенных для обработки электронной документации на персональном компьютере.');
--\/\/\/\--
insert into hardware_type (hard_type_nm) values('Компьютер');
insert into hardware_type (hard_type_nm) values('Моноблок');
insert into hardware_type (hard_type_nm) values('МФУ');
insert into hardware_type (hard_type_nm) values('Принтер');
insert into hardware_type (hard_type_nm) values('Проектор');
insert into hardware_type (hard_type_nm) values('Монитор');
insert into hardware_type (hard_type_nm) values('Интерактивная доска');
insert into hardware_type (hard_type_nm) values('Документ-камера');
insert into hardware_type (hard_type_nm, hard_type_desc) values('ИБП', 'источник электропитания, обеспечивающий при кратковременном отключении основного источника мощности питания, а также защиту от помех в сети основного источника');
--\/\/\/\--
-- компьютер
insert into hardware_model (hard_model_nm) values('Lenovo ThinkCentre M720');
insert into hardware_model (hard_model_nm) values('Acer Aspire TC-885');
insert into hardware_model (hard_model_nm) values('Asus VivoMini VC66-C');
insert into hardware_model (hard_model_nm) values('Intel NUC Hades Canyon');
insert into hardware_model (hard_model_nm) values('Apple Mac mini');
insert into hardware_model (hard_model_nm) values('Dell Inspiron 5680');
insert into hardware_model (hard_model_nm) values('HP Omen Obelisk');
insert into hardware_model (hard_model_nm) values('Acer Predator Orion 5000');
insert into hardware_model (hard_model_nm) values('MSI Trident X');
-- моноблок
insert into hardware_model (hard_model_nm) values('DELL Optiplex 7770');
insert into hardware_model (hard_model_nm) values('HP 200 G3');
insert into hardware_model (hard_model_nm) values('Apple iMac (Retina 5K) 2019');
insert into hardware_model (hard_model_nm) values('Lenovo IdeaCentre AIO A340-24');
insert into hardware_model (hard_model_nm) values('Acer Aspire C22-865');
insert into hardware_model (hard_model_nm) values('Lenovo IdeaCentre AIO 520-27');
insert into hardware_model (hard_model_nm) values('Apple iMac Pro (Retina 5K) 2017');
insert into hardware_model (hard_model_nm) values('HP EliteOne 1000 G2 - 34"');
insert into hardware_model (hard_model_nm) values('MSI Pro 24');
insert into hardware_model (hard_model_nm) values('ASUS Zen AiO Z272SD');
-- мфу
insert into hardware_model (hard_model_nm) values('HP LaserJet Pro MFP M28w');
insert into hardware_model (hard_model_nm) values('Canon PIXMA MG2540S');
insert into hardware_model (hard_model_nm) values('Epson WorkForce Pro WF-C5790DWF');
insert into hardware_model (hard_model_nm) values('Brother DCP-L2520DWR');
insert into hardware_model (hard_model_nm) values('Epson L3050');
insert into hardware_model (hard_model_nm) values('Canon PIXMA TS5040');
insert into hardware_model (hard_model_nm) values('HP LaserJet Pro MFP M428dw');
insert into hardware_model (hard_model_nm) values('Brother MFC-L3770CDW');
insert into hardware_model (hard_model_nm) values('Xerox B205');
insert into hardware_model (hard_model_nm) values('Canon i-SENSYS MF643Cdw');
-- принтер
insert into hardware_model (hard_model_nm) values('Xerox Phaser 3020BI');
insert into hardware_model (hard_model_nm) values('HP LaserJet Pro M15w');
insert into hardware_model (hard_model_nm) values('Epson L120');
insert into hardware_model (hard_model_nm) values('Canon i-SENSYS LBP7110Cw');
insert into hardware_model (hard_model_nm) values('Canon i-SENSYS LBP7018C');
insert into hardware_model (hard_model_nm) values('Brother HL-L2340DWR');
insert into hardware_model (hard_model_nm) values('Samsung Xpress M2020');
insert into hardware_model (hard_model_nm) values('HP Color LaserJet Pro M254dw');
insert into hardware_model (hard_model_nm) values('HP Ink Tank 115');
insert into hardware_model (hard_model_nm) values('Pantum P2207');
-- проектор
insert into hardware_model (hard_model_nm) values('BenQ W1720');
insert into hardware_model (hard_model_nm) values('Epson EH-TW5400');
insert into hardware_model (hard_model_nm) values('TouYinGer X20');
insert into hardware_model (hard_model_nm) values('Viewsonic PA503S');
insert into hardware_model (hard_model_nm) values('Star Shower Laser Light Projector');
insert into hardware_model (hard_model_nm) values('Xiaomi Mijia Laser Projection MJJGYY02FM');
insert into hardware_model (hard_model_nm) values('Epson EH-TW9400');
insert into hardware_model (hard_model_nm) values('Barco G60-W10 черный');
insert into hardware_model (hard_model_nm) values('DIGMA DiMagic Cube');
insert into hardware_model (hard_model_nm) values('Acer X118');
-- монитор
insert into hardware_model (hard_model_nm) values('Samsung C27F591FDI');
insert into hardware_model (hard_model_nm) values('LG 25UM58');
insert into hardware_model (hard_model_nm) values('LG 34WK95C');
insert into hardware_model (hard_model_nm) values('Acer Nitro VG271Pbmiipx');
insert into hardware_model (hard_model_nm) values('Samsung S24D300H');
insert into hardware_model (hard_model_nm) values('DELL S2719DGF');
insert into hardware_model (hard_model_nm) values('ASUS ROG Swift PG27UQ');
insert into hardware_model (hard_model_nm) values('Philips 6E9QSB 27');
insert into hardware_model (hard_model_nm) values('HP Z22n G2');
insert into hardware_model (hard_model_nm) values('AOC Q3277PQU');
-- интерактивная доска
insert into hardware_model (hard_model_nm) values('Triumph Board IFP UHD');
insert into hardware_model (hard_model_nm) values('Prestigio MultiBoard L-series');
insert into hardware_model (hard_model_nm) values('SMART Board SB480');
insert into hardware_model (hard_model_nm) values('ActivBoard Touch DryErase');
insert into hardware_model (hard_model_nm) values('IQBoard DVT TN100');
-- документ камера
insert into hardware_model (hard_model_nm) values('AVer Vision U50');
insert into hardware_model (hard_model_nm) values('Elmo MX-1');
insert into hardware_model (hard_model_nm) values('Doko DC1310F');
insert into hardware_model (hard_model_nm) values('Smart SDC-450');
insert into hardware_model (hard_model_nm) values('Epson ELPDC13');
-- ИБП
insert into hardware_model (hard_model_nm) values('APC by Schneider Electric Back-UPS BE550G-RS');
insert into hardware_model (hard_model_nm) values('Powercom SPIDER SPD-1000N');
insert into hardware_model (hard_model_nm) values('Powercom WOW-850 U');
insert into hardware_model (hard_model_nm) values('APC by Schneider Electric Smart-UPS 1000VA USB & Serial 230V');
insert into hardware_model (hard_model_nm) values('APC by Schneider Electric Smart-UPS 1500VA LCD 230V');
insert into hardware_model (hard_model_nm) values('Powercom RAPTOR RPT-2000AP');
insert into hardware_model (hard_model_nm) values('CyberPower PR1500ELCD');
insert into hardware_model (hard_model_nm) values('APC by Schneider Electric Back-UPS BX1100CI-RS');
insert into hardware_model (hard_model_nm) values('Powercom Imperial IMP-825AP');
insert into hardware_model (hard_model_nm) values('Ippon Back Basic 650');
insert into hardware_model (hard_model_nm) values('Ippon Innova RT 1000');
insert into hardware_model (hard_model_nm) values('CyberPower OLS2000EC');
--\/\/\/\--
insert into office (room_no, floor_no, bldg_nm, dep_nm) values(1, 1, 'Главный корпус', 'Бухгалтерия');
insert into office (room_no, floor_no, bldg_nm, dep_nm) values(2, 1, 'Главный корпус', 'Читальный зал');
insert into office (room_no, floor_no, bldg_nm, dep_nm) values(3, 1, 'Главный корпус', 'Библиотека');
insert into office (room_no, floor_no, bldg_nm, dep_nm) values(5, 2, 'Главный корпус', 'Лаборатория');
insert into office (room_no, floor_no, bldg_nm, dep_nm) values(6, 2, 'Главный корпус', 'Учебный класс №1');
insert into office (room_no, floor_no, bldg_nm, dep_nm) values(10, 2, 'Главный корпус', 'Администрация');
insert into office (room_no, floor_no, bldg_nm, dep_nm) values(7, 2, 'Главный корпус', 'Директор');
--\/\/\/\--
insert into employee (last_nm, first_nm, middle_nm, post_text, gender_code, phone_no, email_txt)
	values('Лучистый', 'Кристалл', 'Конфуциевич', 'начальник', 'M', '+7 (909) 8300017', 'wuffalupy-2014@yopmail.com');
insert into employee (last_nm, first_nm, middle_nm, post_text, gender_code, phone_no, email_txt)
	values('Грандиозный', 'Образ', 'Аврелиевич', 'системный администратор', 'M', '+7 (909) 8300018', 'zygubeje-2986@yopmail.com');
insert into employee (last_nm, first_nm, middle_nm, post_text, gender_code, phone_no, email_txt)
	values('Аннигилирующий', 'Соперник', 'Сократович', 'техник', 'M', '+7 (909) 8300092', 'tagadesidu-8546@yopmail.com');
insert into employee (last_nm, first_nm, middle_nm, post_text, gender_code, phone_no, email_txt)
	values('Мыслительный', 'Кодекс', 'Аврелиевич', 'техник', 'M', '+79095762879', 'uttapellana-8451@yopmail.com');
insert into employee (last_nm, first_nm, middle_nm, post_text, gender_code, phone_no, email_txt)
	values('Вечный', 'Вердикт', 'Парацельсиевич', 'ведущий специалист', 'M', '+79097088037', 'rorrapoxom-1171@yopmail.com');
insert into employee (last_nm, first_nm, middle_nm, post_text, gender_code, phone_no, email_txt)
	values('Пробивной', 'Артефакт', 'Паскалевич', 'специалист', 'M', '+79098281641', 'emminattorru-0525@yopmail.com');
--\/\/\/\--
insert into software (soft_nm, price_amt, serial_no, key_code, activation_code, sta_id, soft_desc, lic_expire_dt, soft_type_id)
	values('Антивирус 2019', 24500, 'A-1234', '1234-123456-123', null, 5, 'Купили на контору в 2019 году.', '2020-07-01', 5);
insert into software (soft_nm, price_amt, serial_no, key_code, activation_code, sta_id, soft_desc, lic_expire_dt, soft_type_id)
	values('Антивирус 2020', 24500, 'A-1234', '7894-123456-789', null, 4, '30 лицензий', '2021-07-01', 5);
insert into software (soft_nm, price_amt, serial_no, key_code, activation_code, sta_id, soft_desc, lic_expire_dt, soft_type_id)
	values('Windows10', 90000, null, 'DGRYJH-DGRYJH-DGRYJH-DGRYJH', null, 4, '10 лицензий', '9999-12-31', 2);
--\/\/\/\--
insert into hardware (serial_no, inventar_no, hard_type_id, hard_model_id, ofc_id, sta_id, hard_desc, guaranty_dt, life_time_dt, price_amt)
	values('ser-123456789-01', 'inv123456789-01', 1, 3, 1, 1, 'комп главбуха', '2020-02-10', '2024-02-10', 60280);
insert into hardware (serial_no, inventar_no, hard_type_id, hard_model_id, ofc_id, sta_id, hard_desc, guaranty_dt, life_time_dt, price_amt)
	values('ser-123456789-02', 'inv123456789-02', 1, 3, 1, 1, 'комп бухгалтера', '2020-02-10', '2024-02-10', 60280);
insert into hardware (serial_no, inventar_no, hard_type_id, hard_model_id, ofc_id, sta_id, hard_desc, guaranty_dt, life_time_dt, price_amt)
	values('ser-123456789-03', 'inv123456789-03', 1, 3, 1, 1, 'комп бухгалтера', '2020-02-10', '2024-02-10', 60280);
insert into hardware (serial_no, inventar_no, hard_type_id, hard_model_id, ofc_id, sta_id, hard_desc, guaranty_dt, life_time_dt, price_amt)
	values('ser-123456789-04', 'inv123456789-04', 1, 6, 1, 4, 'комп бухгалтера', '2019-02-25', '2022-02-25', 45100);
--\/\/\/\--
insert into "order" (order_nm, order_dt, note_txt, seller_nm, sta_id)
	values('Закупка компьютеров', '2019-02-01', 'договор №1', 'ООО "Компик"', 14);
insert into order_x_hardtware values(1,1);
insert into order_x_hardtware values(1,2);
insert into order_x_hardtware values(1,3);
--\/\/\/\--
-- работа с оборудованием
insert into job (job_type_id, empl_id, sta_id, exec_dt, job_nm, job_desc)
	values(2, 5, 11, '2019-01-20', 'Компьютер зависает', 'Перегрев материнской платы');
insert into job_x_hardtware values (1, 4);
--\/\/\/\--
-- работа с программой
insert into job (job_type_id, empl_id, sta_id, exec_dt, job_nm, job_desc)
	values(6, 3, 11, '2020-07-05', 'Установить антивирус', 'старый удали');
insert into job_x_software values (2, 2);
insert into hardware_x_software values (2, 2);
insert into hardware_x_software values (3, 2);
insert into hardware_x_software values (4, 2);


