SELECT setval('principals_id_seq', 13, true);

INSERT INTO tesda_course_sectors (id, tcs_name, tcs_desc, created_at, updated_at) VALUES (1, 'Tourism', 'Courses related to hospitality, travel, and the promotion of travel.', '2017-11-16', '2017-11-16');

INSERT INTO tesda_course_sectors (id, tcs_name, tcs_desc, created_at, updated_at) VALUES (2, 'Electrical & Electronics', 'Courses related to electricity and electronics.', '2017-11-16', '2017-11-16');

INSERT INTO tesda_course_sectors (id, tcs_name, tcs_desc, created_at, updated_at) VALUES (3, 'Metals and Engineering', 'Areas of engineering, especially those related to metals.', '2017-11-16', '2017-11-16');

INSERT INTO tesda_course_sectors (id, tcs_name, tcs_desc, created_at, updated_at) VALUES (4, 'Human Health/Health Care', 'Medicine and other areas related to the care of human life.', '2017-11-16', '2017-11-16');

INSERT INTO tesda_course_sectors (id, tcs_name, tcs_desc, created_at, updated_at) VALUES (5, 'ICT', 'Information and communications technology.', '2017-11-16', '2017-11-16');

INSERT INTO tesda_course_sectors (id, tcs_name, tcs_desc, created_at, updated_at) VALUES (6, 'Automotive and Land Transportation', 'Courses related to transportation.', '2017-11-16', '2017-11-16');

INSERT INTO tesda_course_sectors (id, tcs_name, tcs_desc, created_at, updated_at) VALUES (7, 'Social Community Development & Other Services', 'Helping society by promoting community wellbeing.', '2017-11-16', '2017-11-16');

SELECT setval('tesda_course_sectors_id_seq', 8, true);

INSERT INTO tesda_courses (id, tc_name, tc_hrs_dur, tesda_course_sector_id, created_at, updated_at) VALUES (1, 'Cookery NC II', 316, 1, '2017-11-16', '2017-11-16');
INSERT INTO tesda_courses (id, tc_name, tc_hrs_dur, tesda_course_sector_id, created_at, updated_at) VALUES (2, 'Food & Beverage Services NC II', 356, 1, '2017-11-16', '2017-11-16');
INSERT INTO tesda_courses (id, tc_name, tc_hrs_dur, tesda_course_sector_id, created_at, updated_at) VALUES (3, 'Housekeeping NC II', 436, 1, '2017-11-16', '2017-11-16');
INSERT INTO tesda_courses (id, tc_name, tc_hrs_dur, tesda_course_sector_id, created_at, updated_at) VALUES (4, 'Electrical Installation & Maintenance NC II', 402, 2, '2017-11-16', '2017-11-16');
INSERT INTO tesda_courses (id, tc_name, tc_hrs_dur, tesda_course_sector_id, created_at, updated_at) VALUES (5, 'Shielded Metal Arc Welding (SMAW) NC II', 304, 3, '2017-11-16', '2017-11-16');
INSERT INTO tesda_courses (id, tc_name, tc_hrs_dur, tesda_course_sector_id, created_at, updated_at) VALUES (6, 'Caregiving NC II', 786, 4, '2017-11-16', '2017-11-16');
INSERT INTO tesda_courses (id, tc_name, tc_hrs_dur, tesda_course_sector_id, created_at, updated_at) VALUES (7, 'Bread & Pastry Production NC II', 141, 1, '2017-11-16', '2017-11-16');
INSERT INTO tesda_courses (id, tc_name, tc_hrs_dur, tesda_course_sector_id, created_at, updated_at) VALUES (8, 'Computer Systems Servicing NC II', 280, 5, '2017-11-16', '2017-11-16');
INSERT INTO tesda_courses (id, tc_name, tc_hrs_dur, tesda_course_sector_id, created_at, updated_at) VALUES (9, 'Driving NC II', 118, 6, '2017-11-16', '2017-11-16');
INSERT INTO tesda_courses (id, tc_name, tc_hrs_dur, tesda_course_sector_id, created_at, updated_at) VALUES (10, 'Driving NC III', 122, 6, '2017-11-16', '2017-11-16');
INSERT INTO tesda_courses (id, tc_name, tc_hrs_dur, tesda_course_sector_id, created_at, updated_at) VALUES (11, 'Pharmacy Services NC II', 271, 4, '2017-11-16', '2017-11-16');
INSERT INTO tesda_courses (id, tc_name, tc_hrs_dur, tesda_course_sector_id, created_at, updated_at) VALUES (12, 'Health Care Services NC II', 996, 7, '2017-11-16', '2017-11-16');
INSERT INTO tesda_courses (id, tc_name, tc_hrs_dur, tesda_course_sector_id, created_at, updated_at) VALUES (13, 'Shielded Metal Arc Welding (SMAW) NC II', 268, 3, '2017-11-16', '2017-11-16');
SELECT setval('tesda_courses_id_seq', 14, true);

INSERT INTO institutions_tesda_courses (institution_id, tesda_course_id) VALUES (1, 1);
INSERT INTO institutions_tesda_courses (institution_id, tesda_course_id) VALUES (1, 2);
INSERT INTO institutions_tesda_courses (institution_id, tesda_course_id) VALUES (1, 3);

INSERT INTO institutions_tesda_courses (institution_id, tesda_course_id) VALUES (2, 4);

INSERT INTO institutions_tesda_courses (institution_id, tesda_course_id) VALUES (3, 5);

INSERT INTO institutions_tesda_courses (institution_id, tesda_course_id) VALUES (4, 6);

INSERT INTO institutions_tesda_courses (institution_id, tesda_course_id) VALUES (5, 6);
INSERT INTO institutions_tesda_courses (institution_id, tesda_course_id) VALUES (5, 1);

INSERT INTO institutions_tesda_courses (institution_id, tesda_course_id) VALUES (6, 7);
INSERT INTO institutions_tesda_courses (institution_id, tesda_course_id) VALUES (6, 2);
INSERT INTO institutions_tesda_courses (institution_id, tesda_course_id) VALUES (6, 8);
INSERT INTO institutions_tesda_courses (institution_id, tesda_course_id) VALUES (6, 3);

INSERT INTO institutions_tesda_courses (institution_id, tesda_course_id) VALUES (7, 9);
INSERT INTO institutions_tesda_courses (institution_id, tesda_course_id) VALUES (7, 10);

INSERT INTO institutions_tesda_courses (institution_id, tesda_course_id) VALUES (8, 4);

INSERT INTO institutions_tesda_courses (institution_id, tesda_course_id) VALUES (9, 11);
INSERT INTO institutions_tesda_courses (institution_id, tesda_course_id) VALUES (9, 12);

INSERT INTO institutions_tesda_courses (institution_id, tesda_course_id) VALUES (10, 3);

INSERT INTO institutions_tesda_courses (institution_id, tesda_course_id) VALUES (11, 4);

INSERT INTO institutions_tesda_courses (institution_id, tesda_course_id) VALUES (12, 13);

INSERT INTO teachers (id, t_fname, t_mname, t_lname, institution_id, created_at, updated_at) VALUES (1, 'Emelia', 'Nadal', 'Gogh', 1, '2017-11-16', '2017-11-16');
INSERT INTO teachers (id, t_fname, t_mname, t_lname, institution_id, created_at, updated_at) VALUES (2, 'Ron', 'Hope', 'Toralba', 1, '2017-11-16', '2017-11-16');
INSERT INTO teachers (id, t_fname, t_mname, t_lname, institution_id, created_at, updated_at) VALUES (3, 'Miyo', 'Park', 'Flores', 1, '2017-11-16', '2017-11-16');

INSERT INTO teachers (id, t_fname, t_mname, t_lname, institution_id, created_at, updated_at) VALUES (4, 'Carl', 'Magsaysay', 'Hope', 2, '2017-11-16', '2017-11-16');

INSERT INTO teachers (id, t_fname, t_mname, t_lname, institution_id, created_at, updated_at) VALUES (5, 'Augustus', 'dela Cruz', 'dela Cruz', 3, '2017-11-16', '2017-11-16');

INSERT INTO teachers (id, t_fname, t_mname, t_lname, institution_id, created_at, updated_at) VALUES (6, 'Michelle', 'Milverton', 'Feynman', 4, '2017-11-16', '2017-11-16');

INSERT INTO teachers (id, t_fname, t_mname, t_lname, institution_id, created_at, updated_at) VALUES (7, 'Malia', 'Villalobo', 'Ferguson', 5, '2017-11-16', '2017-11-16');
INSERT INTO teachers (id, t_fname, t_mname, t_lname, institution_id, created_at, updated_at) VALUES (8, 'Luigi', 'Fletcher', 'Figueroa', 5, '2017-11-16', '2017-11-16');

INSERT INTO teachers (id, t_fname, t_mname, t_lname, institution_id, created_at, updated_at) VALUES (9, 'Betty', 'Gogh', 'Nadal', 6, '2017-11-16', '2017-11-16');
INSERT INTO teachers (id, t_fname, t_mname, t_lname, institution_id, created_at, updated_at) VALUES (10, 'Lawrence', 'Sagan', 'Potter', 6, '2017-11-16', '2017-11-16');
INSERT INTO teachers (id, t_fname, t_mname, t_lname, institution_id, created_at, updated_at) VALUES (11, 'Philip', 'Bernardo', 'Egbert', 6, '2017-11-16', '2017-11-16');
INSERT INTO teachers (id, t_fname, t_mname, t_lname, institution_id, created_at, updated_at) VALUES (12, 'Mario', 'Strider', 'Nadal', 6, '2017-11-16', '2017-11-16');

INSERT INTO teachers (id, t_fname, t_mname, t_lname, institution_id, created_at, updated_at) VALUES (13, 'Glibert', 'Ketchum', 'Ravache', 7, '2017-11-16', '2017-11-16');
INSERT INTO teachers (id, t_fname, t_mname, t_lname, institution_id, created_at, updated_at) VALUES (14, 'Jacintha', 'Backwater', 'Ramsden', 7, '2017-11-16', '2017-11-16');

INSERT INTO teachers (id, t_fname, t_mname, t_lname, institution_id, created_at, updated_at) VALUES (15, 'Carl', 'Paget', 'Moriarty', 8, '2017-11-16', '2017-11-16');

INSERT INTO teachers (id, t_fname, t_mname, t_lname, institution_id, created_at, updated_at) VALUES (16, 'Candace', 'Avelino', 'Brackwell', 9, '2017-11-16', '2017-11-16');
INSERT INTO teachers (id, t_fname, t_mname, t_lname, institution_id, created_at, updated_at) VALUES (17, 'Rafael', 'Stone', 'Unfakename', 9, '2017-11-16', '2017-11-16');

INSERT INTO teachers (id, t_fname, t_mname, t_lname, institution_id, created_at, updated_at) VALUES (18, 'Jacintha', 'Klein', 'Feynman', 10, '2017-11-16', '2017-11-16');

INSERT INTO teachers (id, t_fname, t_mname, t_lname, institution_id, created_at, updated_at) VALUES (19, 'Catleya', 'dela Cruz', 'Obama', 11, '2017-11-16', '2017-11-16');

INSERT INTO teachers (id, t_fname, t_mname, t_lname, institution_id, created_at, updated_at) VALUES (20, 'Cornelia', 'Lupin', 'Monogram', 12, '2017-11-16', '2017-11-16');

INSERT INTO teachers (id, t_fname, t_mname, t_lname, institution_id, created_at, updated_at) VALUES (21, 'Sebastian', 'Ferguson', 'Brackwell', 1, '2017-11-16', '2017-11-16');
SELECT setval('teachers_id_seq', 22, true);

INSERT INTO sections (id, name, head_count, year, grade_level, institution_id, created_at, updated_at) VALUES (1, 'Yellow', 25, 2017, 1, 1, '2017-11-16', '2017-11-16');
INSERT INTO sections (id, name, head_count, year, grade_level, institution_id, created_at, updated_at) VALUES (2, 'Kamia', 38, 2017, 1, 1, '2017-11-16', '2017-11-16');
INSERT INTO sections (id, name, head_count, year, grade_level, institution_id, created_at, updated_at) VALUES (3, 'Yakal', 29, 2017, 1, 1, '2017-11-16', '2017-11-16');

INSERT INTO sections (id, name, head_count, year, grade_level, institution_id, created_at, updated_at) VALUES (4, 'Kamia', 28, 2017, 1, 2, '2017-11-16', '2017-11-16');

INSERT INTO sections (id, name, head_count, year, grade_level, institution_id, created_at, updated_at) VALUES (5, 'Kalayaan', 31, 2017, 2, 3, '2017-11-16', '2017-11-16');

INSERT INTO sections (id, name, head_count, year, grade_level, institution_id, created_at, updated_at) VALUES (6, 'Brio', 31, 2017, 3, 4, '2017-11-16', '2017-11-16');

INSERT INTO sections (id, name, head_count, year, grade_level, institution_id, created_at, updated_at) VALUES (7, 'Ilang-Ilang', 40, 2017, 3, 5, '2017-11-16', '2017-11-16');
INSERT INTO sections (id, name, head_count, year, grade_level, institution_id, created_at, updated_at) VALUES (8, 'Sol', 37, 2017, 2, 5, '2017-11-16', '2017-11-16');

INSERT INTO sections (id, name, head_count, year, grade_level, institution_id, created_at, updated_at) VALUES (9, 'Forte', 28, 2017, 4, 6, '2017-11-16', '2017-11-16');
INSERT INTO sections (id, name, head_count, year, grade_level, institution_id, created_at, updated_at) VALUES (10, 'Vivace', 31, 2017, 3, 6, '2017-11-16', '2017-11-16');
INSERT INTO sections (id, name, head_count, year, grade_level, institution_id, created_at, updated_at) VALUES (11, 'Ritenuto', 40, 2017, 5, 6, '2017-11-16', '2017-11-16');
INSERT INTO sections (id, name, head_count, year, grade_level, institution_id, created_at, updated_at) VALUES (12, 'Ipil', 34, 2017, 4, 6, '2017-11-16', '2017-11-16');

INSERT INTO sections (id, name, head_count, year, grade_level, institution_id, created_at, updated_at) VALUES (13, 'Ritenuto', 34, 2017, 1, 7, '2017-11-16', '2017-11-16');
INSERT INTO sections (id, name, head_count, year, grade_level, institution_id, created_at, updated_at) VALUES (14, 'Red', 40, 2017, 2, 7, '2017-11-16', '2017-11-16');

INSERT INTO sections (id, name, head_count, year, grade_level, institution_id, created_at, updated_at) VALUES (15, 'Kalayaan', 21, 2017, 5, 8, '2017-11-16', '2017-11-16');

INSERT INTO sections (id, name, head_count, year, grade_level, institution_id, created_at, updated_at) VALUES (16, 'Kamagong', 25, 2017, 4, 9, '2017-11-16', '2017-11-16');
INSERT INTO sections (id, name, head_count, year, grade_level, institution_id, created_at, updated_at) VALUES (17, 'Red', 35, 2017, 3, 9, '2017-11-16', '2017-11-16');

INSERT INTO sections (id, name, head_count, year, grade_level, institution_id, created_at, updated_at) VALUES (18, 'Pink', 39, 2017, 2, 10, '2017-11-16', '2017-11-16');

INSERT INTO sections (id, name, head_count, year, grade_level, institution_id, created_at, updated_at) VALUES (19, 'Kamia', 32, 2017, 3, 11, '2017-11-16', '2017-11-16');

INSERT INTO sections (id, name, head_count, year, grade_level, institution_id, created_at, updated_at) VALUES (20, 'Kamagong', 23, 2017, 4, 12, '2017-11-16', '2017-11-16');

INSERT INTO sections (id, name, head_count, year, grade_level, institution_id, created_at, updated_at) VALUES (21, 'Forte', 29, 2017, 1, 1, '2017-11-16', '2017-11-16');
SELECT setval('sections_id_seq', 22, true);

INSERT INTO teachers_sections (teacher_id, section_id) VALUES (1, 1);
INSERT INTO teachers_sections (teacher_id, section_id) VALUES (2, 2);
INSERT INTO teachers_sections (teacher_id, section_id) VALUES (3, 3);
INSERT INTO teachers_sections (teacher_id, section_id) VALUES (4, 4);
INSERT INTO teachers_sections (teacher_id, section_id) VALUES (5, 5);
INSERT INTO teachers_sections (teacher_id, section_id) VALUES (6, 6);
INSERT INTO teachers_sections (teacher_id, section_id) VALUES (7, 7);
INSERT INTO teachers_sections (teacher_id, section_id) VALUES (8, 8);
INSERT INTO teachers_sections (teacher_id, section_id) VALUES (9, 9);
INSERT INTO teachers_sections (teacher_id, section_id) VALUES (10, 10);
INSERT INTO teachers_sections (teacher_id, section_id) VALUES (11, 11);
INSERT INTO teachers_sections (teacher_id, section_id) VALUES (12, 12);
INSERT INTO teachers_sections (teacher_id, section_id) VALUES (13, 13);
INSERT INTO teachers_sections (teacher_id, section_id) VALUES (14, 14);
INSERT INTO teachers_sections (teacher_id, section_id) VALUES (15, 15);
INSERT INTO teachers_sections (teacher_id, section_id) VALUES (16, 16);
INSERT INTO teachers_sections (teacher_id, section_id) VALUES (17, 17);
INSERT INTO teachers_sections (teacher_id, section_id) VALUES (18, 18);
INSERT INTO teachers_sections (teacher_id, section_id) VALUES (19, 19);
INSERT INTO teachers_sections (teacher_id, section_id) VALUES (20, 20);
INSERT INTO teachers_sections (teacher_id, section_id) VALUES (21, 21);

INSERT INTO teachers_tesda_courses (teacher_id, tesda_course_id) VALUES (1, 1);
INSERT INTO teachers_tesda_courses (teacher_id, tesda_course_id) VALUES (2, 2);
INSERT INTO teachers_tesda_courses (teacher_id, tesda_course_id) VALUES (3, 3);

INSERT INTO teachers_tesda_courses (teacher_id, tesda_course_id) VALUES (4, 4);

INSERT INTO teachers_tesda_courses (teacher_id, tesda_course_id) VALUES (5, 5);

INSERT INTO teachers_tesda_courses (teacher_id, tesda_course_id) VALUES (6, 6);

INSERT INTO teachers_tesda_courses (teacher_id, tesda_course_id) VALUES (7, 6);
INSERT INTO teachers_tesda_courses (teacher_id, tesda_course_id) VALUES (8, 1);

INSERT INTO teachers_tesda_courses (teacher_id, tesda_course_id) VALUES (9, 7);
INSERT INTO teachers_tesda_courses (teacher_id, tesda_course_id) VALUES (10, 2);
INSERT INTO teachers_tesda_courses (teacher_id, tesda_course_id) VALUES (11, 8);
INSERT INTO teachers_tesda_courses (teacher_id, tesda_course_id) VALUES (12, 3);

INSERT INTO teachers_tesda_courses (teacher_id, tesda_course_id) VALUES (13, 9);
INSERT INTO teachers_tesda_courses (teacher_id, tesda_course_id) VALUES (14, 10);

INSERT INTO teachers_tesda_courses (teacher_id, tesda_course_id) VALUES (15, 4);

INSERT INTO teachers_tesda_courses (teacher_id, tesda_course_id) VALUES (16, 11);
INSERT INTO teachers_tesda_courses (teacher_id, tesda_course_id) VALUES (17, 12);

INSERT INTO teachers_tesda_courses (teacher_id, tesda_course_id) VALUES (18, 3);
INSERT INTO teachers_tesda_courses (teacher_id, tesda_course_id) VALUES (19, 4);

INSERT INTO teachers_tesda_courses (teacher_id, tesda_course_id) VALUES (20, 13);

INSERT INTO teachers_tesda_courses (teacher_id, tesda_course_id) VALUES (21, 1);
