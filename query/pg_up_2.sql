INSERT INTO lessons (object, date, class) VALUES ('Информационные системы и технологии', '2023-10-21 09:00:00', 230);
INSERT INTO lessons (object, date, class) VALUES ('Арихитектуры', '2023-10-21 10:40:00', 140);
INSERT INTO lessons (object, date, class) VALUES ('Разработка безопасного ПО', '2023-10-21 12:40:00', 310);
INSERT INTO lessons (object, date, class) VALUES ('Биотехнические интерфейсы', '2023-10-21 14:10:00', 330);
INSERT INTO lessons (object, date, class) VALUES ('Методы системной инженерии', '2023-10-22 09:00:00', 230);
INSERT INTO lessons (object, date, class) VALUES ('Информационные системы и технологии', '2023-10-22 10:40:00', 330);
INSERT INTO lessons (object, date, class) VALUES ('Биотехнические интерфейсы', '2023-10-21 12:40:00', 230);
INSERT INTO lessons (object, date, class) VALUES ('Архитектуры', '2023-10-22 14:10:00', 140);

INSERT INTO specialities (naming, code, depart_id) VALUES ('Информационные системы и технологии', '9.1.3', 1);
INSERT INTO specialities (naming, code, depart_id) VALUES ('Разработка программных решений', '9.1.4', 2);
INSERT INTO specialities (naming, code, depart_id) VALUES ('Программирование на графических процессорах', '9.1.5', 3);

INSERT INTO groups (depart_id, group_code, spec_id) VALUES (1, 'БСБО-03-20', 2);
INSERT INTO groups (depart_id, group_code, spec_id) VALUES (2, 'БФБО-04-20', 3);
INSERT INTO groups (depart_id, group_code, spec_id) VALUES (3, 'БСБО-17-20', 1);

INSERT INTO students (full_name, group_id, spec_id) VALUES ('Владимир Витальевич Теренко', 1, 3);
INSERT INTO students (full_name, group_id, spec_id) VALUES ('Владислав Сергеевич Филлипов', 1, 3);
INSERT INTO students (full_name, group_id, spec_id) VALUES ('Виктор Николаевич Сорокин', 1, 3);
INSERT INTO students (full_name, group_id, spec_id) VALUES ('Вячеслав Викторович Фидзе', 1, 3);
INSERT INTO students (full_name, group_id, spec_id) VALUES ('Евгения Григорьевна Павленко', 1, 3);
INSERT INTO students (full_name, group_id, spec_id) VALUES ('Татьяна Валерьевна Головчак', 1, 3);

INSERT INTO students (full_name, group_id, spec_id) VALUES ('Дмитрий Викторович Денькин', 2, 2);
INSERT INTO students (full_name, group_id, spec_id) VALUES ('Оксана Евгеньевна Лапшина', 2, 2);
INSERT INTO students (full_name, group_id, spec_id) VALUES ('Давид Алексеевич Клитин', 2, 2);
INSERT INTO students (full_name, group_id, spec_id) VALUES ('Деменьтий Сергеевич Остапов', 2, 2);
INSERT INTO students (full_name, group_id, spec_id) VALUES ('Сергей Николаевич Пегов', 2, 2);
INSERT INTO students (full_name, group_id, spec_id) VALUES ('Екатерина Сергеевна Бубнова', 2, 2);

INSERT INTO students (full_name, group_id, spec_id) VALUES ('Валерий Леонидович Антонов', 3, 1);
INSERT INTO students (full_name, group_id, spec_id) VALUES ('Денис Данилович Косыгин', 3, 1);
INSERT INTO students (full_name, group_id, spec_id) VALUES ('Елена Артёмовна Жигина', 3, 1);
INSERT INTO students (full_name, group_id, spec_id) VALUES ('Анастасия Олеговна Бугина', 3, 1);
INSERT INTO students (full_name, group_id, spec_id) VALUES ('Николай Дмитриевич Чугин', 3, 1);
INSERT INTO students (full_name, group_id, spec_id) VALUES ('Антон Александрович Серов', 3, 1);

INSERT INTO schedule (group_id, lesson_id) VALUES (1, 1);
INSERT INTO schedule (group_id, lesson_id) VALUES (1, 2);
INSERT INTO schedule (group_id, lesson_id) VALUES (1, 3);
INSERT INTO schedule (group_id, lesson_id) VALUES (1, 4);
INSERT INTO schedule (group_id, lesson_id) VALUES (1, 5);
INSERT INTO schedule (group_id, lesson_id) VALUES (1, 6);

INSERT INTO schedule (group_id, lesson_id) VALUES (2, 2);
INSERT INTO schedule (group_id, lesson_id) VALUES (2, 3);
INSERT INTO schedule (group_id, lesson_id) VALUES (2, 4);
INSERT INTO schedule (group_id, lesson_id) VALUES (2, 5);
INSERT INTO schedule (group_id, lesson_id) VALUES (2, 6);
INSERT INTO schedule (group_id, lesson_id) VALUES (2, 7);

INSERT INTO schedule (group_id, lesson_id) VALUES (3, 3);
INSERT INTO schedule (group_id, lesson_id) VALUES (3, 4);
INSERT INTO schedule (group_id, lesson_id) VALUES (3, 5);
INSERT INTO schedule (group_id, lesson_id) VALUES (3, 6);
INSERT INTO schedule (group_id, lesson_id) VALUES (3, 7);
INSERT INTO schedule (group_id, lesson_id) VALUES (3, 8);

INSERT INTO journal (stud_id, lesson_id) VALUES (1, 1);
INSERT INTO journal (stud_id, lesson_id) VALUES (1, 2);
INSERT INTO journal (stud_id, lesson_id) VALUES (1, 3);
INSERT INTO journal (stud_id, lesson_id) VALUES (1, 4);
INSERT INTO journal (stud_id, lesson_id) VALUES (1, 5);

INSERT INTO journal (stud_id, lesson_id) VALUES (2, 2);
INSERT INTO journal (stud_id, lesson_id) VALUES (2, 3);
INSERT INTO journal (stud_id, lesson_id) VALUES (2, 5);
INSERT INTO journal (stud_id, lesson_id) VALUES (2, 6);
INSERT INTO journal (stud_id, lesson_id) VALUES (2, 1);

INSERT INTO journal (stud_id, lesson_id) VALUES (3, 2);
INSERT INTO journal (stud_id, lesson_id) VALUES (3, 3);
INSERT INTO journal (stud_id, lesson_id) VALUES (3, 4);
INSERT INTO journal (stud_id, lesson_id) VALUES (3, 5);

INSERT INTO journal (stud_id, lesson_id) VALUES (4, 1);
INSERT INTO journal (stud_id, lesson_id) VALUES (4, 2);
INSERT INTO journal (stud_id, lesson_id) VALUES (4, 3);
INSERT INTO journal (stud_id, lesson_id) VALUES (4, 4);
INSERT INTO journal (stud_id, lesson_id) VALUES (4, 5);

INSERT INTO journal (stud_id, lesson_id) VALUES (5, 2);
INSERT INTO journal (stud_id, lesson_id) VALUES (5, 3);
INSERT INTO journal (stud_id, lesson_id) VALUES (5, 5);
INSERT INTO journal (stud_id, lesson_id) VALUES (5, 6);
INSERT INTO journal (stud_id, lesson_id) VALUES (5, 1);

INSERT INTO journal (stud_id, lesson_id) VALUES (6, 3);
INSERT INTO journal (stud_id, lesson_id) VALUES (6, 4);
INSERT INTO journal (stud_id, lesson_id) VALUES (6, 5);
INSERT INTO journal (stud_id, lesson_id) VALUES (6, 1);

INSERT INTO journal (stud_id, lesson_id) VALUES (7, 4); 
INSERT INTO journal (stud_id, lesson_id) VALUES (7, 5); 

INSERT INTO journal (stud_id, lesson_id) VALUES (8, 3); 
INSERT INTO journal (stud_id, lesson_id) VALUES (8, 5); 

INSERT INTO journal (stud_id, lesson_id) VALUES (9, 4); 
INSERT INTO journal (stud_id, lesson_id) VALUES (9, 5); 

INSERT INTO journal (stud_id, lesson_id) VALUES (10, 2);
INSERT INTO journal (stud_id, lesson_id) VALUES (10, 3);
INSERT INTO journal (stud_id, lesson_id) VALUES (10, 4);
INSERT INTO journal (stud_id, lesson_id) VALUES (10, 5);

INSERT INTO journal (stud_id, lesson_id) VALUES (11, 3);
INSERT INTO journal (stud_id, lesson_id) VALUES (11, 5);
INSERT INTO journal (stud_id, lesson_id) VALUES (11, 6);

INSERT INTO journal (stud_id, lesson_id) VALUES (12, 3);
INSERT INTO journal (stud_id, lesson_id) VALUES (12, 4);
INSERT INTO journal (stud_id, lesson_id) VALUES (12, 5);

INSERT INTO journal (stud_id, lesson_id) VALUES (13, 3);
INSERT INTO journal (stud_id, lesson_id) VALUES (13, 4);
INSERT INTO journal (stud_id, lesson_id) VALUES (13, 5);
INSERT INTO journal (stud_id, lesson_id) VALUES (13, 6);

INSERT INTO journal (stud_id, lesson_id) VALUES (14, 5);
INSERT INTO journal (stud_id, lesson_id) VALUES (14, 6);
INSERT INTO journal (stud_id, lesson_id) VALUES (14, 7);

INSERT INTO journal (stud_id, lesson_id) VALUES (15, 4);
INSERT INTO journal (stud_id, lesson_id) VALUES (15, 5);
INSERT INTO journal (stud_id, lesson_id) VALUES (15, 6);

INSERT INTO journal (stud_id, lesson_id) VALUES (16, 3);
INSERT INTO journal (stud_id, lesson_id) VALUES (16, 4);
INSERT INTO journal (stud_id, lesson_id) VALUES (16, 5);
INSERT INTO journal (stud_id, lesson_id) VALUES (16, 6);

INSERT INTO journal (stud_id, lesson_id) VALUES (17, 5); 
INSERT INTO journal (stud_id, lesson_id) VALUES (17, 7); 

INSERT INTO journal (stud_id, lesson_id) VALUES (18, 4); 

