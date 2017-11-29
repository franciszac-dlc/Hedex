INSERT INTO regions
  (id,region_name,created_at,updated_at)
VALUES
	(1,'Ilocos Region','2017-11-16','2017-11-16'),
	(2,'Cagayan Valley','2017-11-16','2017-11-16'),
	(3,'Central Luzon','2017-11-16','2017-11-16'),
	(4,'CALABARZON','2017-11-16','2017-11-16'),
	(5,'Bicol Region','2017-11-16','2017-11-16'),
	(6,'Western Visayas','2017-11-16','2017-11-16'),
	(7,'Central Visayas','2017-11-16','2017-11-16'),
	(8,'Eastern Visayas','2017-11-16','2017-11-16'),
	(9,'Zamboanga Peninsula','2017-11-16','2017-11-16'),
	(10,'Northern Mindanao','2017-11-16','2017-11-16'),
	(11,'Davao Region','2017-11-16','2017-11-16'),
	(12,'SOCCSKSARGEN','2017-11-16','2017-11-16'),
	(13,'National Capital Region','2017-11-16','2017-11-16'),
	(14,'Cordillera Administrative Region','2017-11-16','2017-11-16'),
	(15,'Autonomous Region for Muslim Mindanao','2017-11-16','2017-11-16'),
	(16,'Caraga Region','2017-11-16','2017-11-16'),
	(17,'MIMAROPA','2017-11-16','2017-11-16');

INSERT INTO institutions (id, name, inst_class, address_province, address_municipality, address_street_no, cong_distr_num, created_at, updated_at) VALUES (1, 'The Mariam College of Nursing, Inc.', 'HEI', 'Basilan', 'Lamitan City', 'Flores St.', 'Lone', '2017-11-16', '2017-11-16');

INSERT INTO institutions (id, name, inst_class, address_province, address_municipality, address_street_no, cong_distr_num, created_at, updated_at) VALUES (2, 'BENECO Skills Development Training Center', 'TVI', 'Benguet', 'Buguias', 'Bekes, Buyacoaan', 'Lone', '2017-11-16', '2017-11-16');

INSERT INTO institutions (id, name, inst_class, address_province, address_municipality, address_street_no, cong_distr_num, created_at, updated_at) VALUES (3, 'PROVINCIAL TRAINING CENTER-AGUSAN DEL NORTE (CABADBARAN)', 'TESDA Technology Institution', 'Agusan del Norte', 'Cabadbaran', 'Government Center', '2nd', '2017-11-16', '2017-11-16');

INSERT INTO institutions (id, name, inst_class, address_province, address_municipality, address_street_no, cong_distr_num, created_at, updated_at) VALUES (4, 'St. Bernadette College of Alabang', 'HEI', '', 'Muntinlupa City', 'Km. 23.6 East Service Rd., Udings Cmpd. I, Alabang', 'Lone', '2017-11-16', '2017-11-16');

INSERT INTO institutions (id, name, inst_class, address_province, address_municipality, address_street_no, cong_distr_num, created_at, updated_at) VALUES (5, 'Olivarez College, Inc.', 'HEI', '', 'Parañaque City', 'Dr. A. Santos Avenue, Brgy. San Dionisio', '1st', '2017-11-16', '2017-11-16');

INSERT INTO institutions (id, name, inst_class, address_province, address_municipality, address_street_no, cong_distr_num, created_at, updated_at) VALUES (6, 'Asia Pacific School of Arts and Sciences, Inc.', 'TVI', '', 'Quezon City', 'No. 16 & 18 Lands St., Brgy. Vasra Visayas Ave., Diliman', '2nd', '2017-11-16', '2017-11-16');

INSERT INTO institutions (id, name, inst_class, address_province, address_municipality, address_street_no, cong_distr_num, created_at, updated_at) VALUES (7, 'A2Z Driving Academy Inc.', 'TVI', 'Batangas', 'Batangas City', 'Areza Town Center, Brgy. Concepcion', '5th', '2017-11-16', '2017-11-16');

INSERT INTO institutions (id, name, inst_class, address_province, address_municipality, address_street_no, cong_distr_num, created_at, updated_at) VALUES (8, 'Dr. Emilio B. Espinosa, Sr. Memorial State College of Agriculture and Technology', 'SUC', 'Masbate', 'Mandaon', 'Cabitan', '3rd', '2017-11-16', '2017-11-16');

INSERT INTO institutions (id, name, inst_class, address_province, address_municipality, address_street_no, cong_distr_num, created_at, updated_at) VALUES (9, 'AGO Medical and Educational Center, Inc.', 'TVI', 'Albay', 'Legazpi City', 'Rizal St., Old Albay', '2nd', '2017-11-16', '2017-11-16');

INSERT INTO institutions (id, name, inst_class, address_province, address_municipality, address_street_no, cong_distr_num, created_at, updated_at) VALUES (10, 'Alemarz School of Science and Technology Foundation', 'HEI', 'Bukidnon', 'Valencia City', '', '2nd', '2017-11-16', '2017-11-16');

INSERT INTO institutions (id, name, inst_class, address_province, address_municipality, address_street_no, cong_distr_num, created_at, updated_at) VALUES (11, 'Aloran Trade High School', 'DepED', 'Misamis Occidental', 'Aloran', '', '1st', '2017-11-16', '2017-11-16');

INSERT INTO institutions (id, name, inst_class, address_province, address_municipality, address_street_no, cong_distr_num, created_at, updated_at) VALUES (12, 'Graciano Institute Academy, Inc.', 'TVI', 'Sarangani-Gensan', 'General Santos City', 'Upper Cahilsot, Calumpang', '1st', '2017-11-16', '2017-11-16');

INSERT INTO inst_contacts (id, institution_id, contact_num, created_at, updated_at) VALUES (1, 3, 3430292, '2017-11-16', '2017-11-16');

INSERT INTO inst_contacts (id, institution_id, contact_num, created_at, updated_at) VALUES (2, 3, 2812773, '2017-11-16', '2017-11-16');

INSERT INTO inst_contacts (id, institution_id, contact_num, created_at, updated_at) VALUES (3, 4, 8422139, '2017-11-16', '2017-11-16');
INSERT INTO inst_contacts (id, institution_id, contact_num, created_at, updated_at) VALUES (4, 4, 8566602, '2017-11-16', '2017-11-16');

INSERT INTO inst_contacts (id, institution_id, contact_num, created_at, updated_at) VALUES (5, 5, 8290703, '2017-11-16', '2017-11-16');
INSERT INTO inst_contacts (id, institution_id, contact_num, created_at, updated_at) VALUES (6, 5, 8260750, '2017-11-16', '2017-11-16');

INSERT INTO inst_contacts (id, institution_id, contact_num, created_at, updated_at) VALUES (7, 6, 3321296, '2017-11-16', '2017-11-16');
INSERT INTO inst_contacts (id, institution_id, contact_num, created_at, updated_at) VALUES (8, 6, 2095111, '2017-11-16', '2017-11-16');

INSERT INTO inst_contacts (id, institution_id, contact_num, created_at, updated_at) VALUES (9, 7, 7025917, '2017-11-16', '2017-11-16');
INSERT INTO inst_contacts (id, institution_id, contact_num, created_at, updated_at) VALUES (10, 7, 09233743999, '2017-11-16', '2017-11-16');

INSERT INTO inst_contacts (id, institution_id, contact_num, created_at, updated_at) VALUES (11, 9, 4813777, '2017-11-16', '2017-11-16');
INSERT INTO inst_contacts (id, institution_id, contact_num, created_at, updated_at) VALUES (12, 9, 4811155, '2017-11-16', '2017-11-16');

INSERT INTO inst_contacts (id, institution_id, contact_num, created_at, updated_at) VALUES (13, 10, 0888283330, '2017-11-16', '2017-11-16');
INSERT INTO inst_contacts (id, institution_id, contact_num, created_at, updated_at) VALUES (14, 10, 0888442100, '2017-11-16', '2017-11-16');

INSERT INTO inst_contacts (id, institution_id, contact_num, created_at, updated_at) VALUES (15, 12, 09168713891, '2017-11-16', '2017-11-16');

INSERT INTO regional_data_records
(region_id,release_date,acadyr,cost_per_stud,private_nonsec,private_sec,"special_HEI",other_govt_schools,ched_supervised_institution,local_colleges_and_uni,"SUCs_main","SUCs_sat",created_at,updated_at)
VALUES
(1,'2017-09-20',2012,21879.41,66,15,0,0,0,4,6,21,'2017-11-16','2017-11-16'),
(2,'2017-09-20',2012,16831.64,39,10,0,0,0,0,5,20,'2017-11-16','2017-11-16'),
(3,'2017-09-20',2012,13573.84,142,24,0,0,0,12,12,37,'2017-11-16','2017-11-16'),
(4,'2017-09-20',2012,10740.97,173,56,1,0,0,13,5,56,'2017-11-16','2017-11-16'),
(5,'2017-09-20',2012,19392.78,93,14,0,0,0,16,9,23,'2017-11-16','2017-11-16'),
(6,'2017-09-20',2012,17880.34,48,29,0,1,0,9,11,53,'2017-11-16','2017-11-16'),
(7,'2017-09-20',2012,11743.19,98,25,0,0,0,10,5,24,'2017-11-16','2017-11-16'),
(8,'2017-09-20',2012,19163.92,37,17,0,0,0,3,10,28,'2017-11-16','2017-11-16'),
(9,'2017-09-20',2012,15587.58,40,14,0,0,0,0,6,46,'2017-11-16','2017-11-16'),
(10,'2017-09-20',2012,19093.79,47,19,0,0,0,6,6,34,'2017-11-16','2017-11-16'),
(11,'2017-09-20',2012,15303.09,61,19,0,0,0,4,4,8,'2017-11-16','2017-11-16'),
(12,'2017-09-20',2012,28987.35,73,15,0,0,0,0,4,11,'2017-11-16','2017-11-16'),
(13,'2017-09-20',2012,39872.70,244,61,3,0,0,16,8,9,'2017-11-16','2017-11-16'),
(14,'2017-09-20',2012,23406.71,30,6,1,0,0,0,6,14,'2017-11-16','2017-11-16'),
(15,'2017-09-20',2012,NULL,49,2,0,6,1,0,4,5,'2017-11-16','2017-11-16'),
(16,'2017-09-20',2012,15120.26,35,10,0,0,0,1,4,10,'2017-11-16','2017-11-16'),
(17,'2017-09-20',2012,14490.93,32,9,0,0,0,1,6,43,'2017-11-16','2017-11-16');

INSERT INTO faculty_headcounts
(institution_id,release_date,acadyr_termno,bacc,ms_ma,phd,maintainer,created_at,updated_at)
VALUES
(1,'2017-09-20','2012-2013_1',58,95,442,NULL,'2017-11-16','2017-11-16'),
(2,'2017-09-20','2012-2013_1',95,42,13,NULL,'2017-11-16','2017-11-16'),
(3,'2017-09-20','2012-2013_1',167,223,71,NULL,'2017-11-16','2017-11-16'),
(4,'2017-09-20','2012-2013_1',48,29,10,NULL,'2017-11-16','2017-11-16'),
(5,'2017-09-20','2012-2013_1',183,279,102,NULL,'2017-11-16','2017-11-16'),
(6,'2017-09-20','2012-2013_1',182,218,71,NULL,'2017-11-16','2017-11-16'),
(7,'2017-09-20','2012-2013_1',23,13,1,NULL,'2017-11-16','2017-11-16'),
(8,'2017-09-20','2012-2013_1',275,526,174,NULL,'2017-11-16','2017-11-16'),
(9,'2017-09-20','2012-2013_1',346,413,169,NULL,'2017-11-16','2017-11-16'),
(10,'2017-09-20','2012-2013_1',98,138,95,NULL,'2017-11-16','2017-11-16'),
(11,'2017-09-20','2012-2013_1',60,17,12,NULL,'2017-11-16','2017-11-16'),
(12,'2017-09-20','2012-2013_1',60,17,9,NULL,'2017-11-16','2017-11-16');

INSERT INTO tuitions
(institution_id,release_date,acadyr_termno,bacc,ms_ma,phd,created_at,updated_at)
VALUES
(1,'2017-09-20','2012-2013_1',100,230,300,'2017-11-16','2017-11-16'),
(2,'2017-09-20','2012-2013_1',100,NULL,NULL,'2017-11-16','2017-11-16'),
(3,'2017-09-20','2012-2013_1',100,200,300,'2017-11-16','2017-11-16'),
(4,'2017-09-20','2012-2013_1',NULL,175,NULL,'2017-11-16','2017-11-16'),
(5,'2017-09-20','2012-2013_1',100,120,180,'2017-11-16','2017-11-16'),
(6,'2017-09-20','2012-2013_1',100,NULL,NULL,'2017-11-16','2017-11-16'),
(7,'2017-09-20','2012-2013_1',75,NULL,NULL,'2017-11-16','2017-11-16'),
(8,'2017-09-20','2012-2013_1',0,280,300,'2017-11-16','2017-11-16'),
(9,'2017-09-20','2012-2013_1',100,300,400,'2017-11-16','2017-11-16'),
(10,'2017-09-20','2012-2013_1',100,150,250,'2017-11-16','2017-11-16'),
(11,'2017-09-20','2012-2013_1',65,300,NULL,'2017-11-16','2017-11-16'),
(12,'2017-09-20','2012-2013_1',100,500,NULL,'2017-11-16','2017-11-16');

INSERT INTO data_records
(institution_id,release_date,acadyr_termno,stud_count,enrolled,graduated,cost_per_stud,created_at,updated_at)
VALUES
(1,'2017-09-20','2012-2013_1',NULL,15465,NULL,32430,'2017-11-16','2017-11-16'),
(2,'2017-09-20','2012-2013_1',NULL,5681,NULL,22120,'2017-11-16','2017-11-16'),
(3,'2017-09-20','2012-2013_1',NULL,13291,NULL,27378,'2017-11-16','2017-11-16'),
(4,'2017-09-20','2012-2013_1',NULL,2271,NULL,10092,'2017-11-16','2017-11-16'),
(5,'2017-09-20','2012-2013_1',NULL,22813,NULL,12875,'2017-11-16','2017-11-16'),
(6,'2017-09-20','2012-2013_1',NULL,12898,NULL,21798,'2017-11-16','2017-11-16'),
(7,'2017-09-20','2012-2013_1',NULL,72419,NULL,21879,'2017-11-16','2017-11-16'),
(8,'2017-09-20','2012-2013_1',NULL,502,NULL,50274,'2017-11-16','2017-11-16'),
(9,'2017-09-20','2012-2013_1',NULL,37645,NULL,10482,'2017-11-16','2017-11-16'),
(10,'2017-09-20','2012-2013_1',NULL,24673,NULL,21882,'2017-11-16','2017-11-16'),
(11,'2017-09-20','2012-2013_1',NULL,9224,NULL,26708,'2017-11-16','2017-11-16'),
(12,'2017-09-20','2012-2013_1',NULL,2174,NULL,20503,'2017-11-16','2017-11-16');
