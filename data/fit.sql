CREATE TABLE address
(
    address_id SERIAL PRIMARY KEY,
    ward VARCHAR(100),
    district VARCHAR(100),
    city VARCHAR(100)
);

CREATE TABLE employee
(
    employee_id SERIAL PRIMARY KEY,
    employee_name VARCHAR(100),
    day_of_birth TIMESTAMP,
    nationality VARCHAR(50),
    national_id VARCHAR(20),
    insurance_id VARCHAR(20)
);

CREATE TABLE programs
(
    programs_id SERIAL PRIMARY KEY,
    class_of VARCHAR(50),
    programs_semester VARCHAR(20),
    A_B_C VARCHAR(50)
);

CREATE TABLE student
(
    student_id SERIAL PRIMARY KEY,
    student_name VARCHAR(100),
    edu_mail VARCHAR(100),
    class_name VARCHAR(100),
    national_id VARCHAR(20),
    address_id INTEGER,
    FOREIGN KEY (address_id) REFERENCES address (address_id)
);

CREATE TABLE lecturer
(
    lecturer_id SERIAL PRIMARY KEY,
    employee_id INTEGER,
    academic_title VARCHAR(20),
    academic_title_date TIMESTAMP,
    degree VARCHAR(50),
    degree_issue_date TIMESTAMP,
    degree_issue_place VARCHAR(100),
    major VARCHAR(100),
    department VARCHAR(100),
    number_of_exp INTEGER,
    FOREIGN KEY (employee_id) REFERENCES employee (employee_id)
);

CREATE TABLE course
(
    course_id SERIAL PRIMARY KEY,
    lecturer_in_charge_id INTEGER,
    course_name VARCHAR(200),
    total_credit INTEGER,
    theory_credit INTEGER,
    practice_credit INTEGER,
    self_learning_credit INTEGER,
    FOREIGN KEY (lecturer_in_charge_id) REFERENCES lecturer (lecturer_id)
);

CREATE TABLE teaching
(
    teaching_id SERIAL PRIMARY KEY,
    course_id INTEGER,
    programs_id INTEGER,
    FOREIGN KEY (course_id) REFERENCES course (course_id),
    FOREIGN KEY (programs_id) REFERENCES programs (programs_id)
);

CREATE TABLE course_offering
(
    offering_id SERIAL PRIMARY KEY,
    course_id INTEGER,
    lecturer_id INTEGER,
    lecturer_type INTEGER,
    FOREIGN KEY (lecturer_id) REFERENCES lecturer (lecturer_id)
);

CREATE TABLE score
(
    score_id SERIAL PRIMARY KEY,
    student_id INTEGER,
    offering_id INTEGER,
    score NUMERIC,
    score_type VARCHAR(50),
    FOREIGN KEY (student_id) REFERENCES student (student_id),
    FOREIGN KEY (offering_id) REFERENCES course_offering (offering_id)
);

INSERT INTO address VALUES(1, 'An Phú Tây', 'Bình Chánh', 'Hồ Chí Minh');
INSERT INTO address VALUES(2, 'Bình Chánh', 'Bình Chánh', 'Hồ Chí Minh');
INSERT INTO address VALUES(3, 'Bình Hưng', 'Bình Chánh', 'Hồ Chí Minh');
INSERT INTO address VALUES(4, 'Bình Lợi', 'Bình Chánh', 'Hồ Chí Minh');
INSERT INTO address VALUES(5, 'Đa Phước', 'Bình Chánh', 'Hồ Chí Minh');
INSERT INTO address VALUES(6, 'Hưng Long', 'Bình Chánh', 'Hồ Chí Minh');
INSERT INTO address VALUES(7, 'Lê Minh Xuân', 'Bình Chánh', 'Hồ Chí Minh');
INSERT INTO address VALUES(8, 'Phạm Văn Hai', 'Bình Chánh', 'Hồ Chí Minh');
INSERT INTO address VALUES(9, 'Phong Phú', 'Bình Chánh', 'Hồ Chí Minh');
INSERT INTO address VALUES(10, 'Quy Đức', 'Bình Chánh', 'Hồ Chí Minh');
INSERT INTO address VALUES(11, 'Tân Kiên', 'Bình Chánh', 'Hồ Chí Minh');
INSERT INTO address VALUES(12, 'Tân Nhựt', 'Bình Chánh', 'Hồ Chí Minh');
INSERT INTO address VALUES(13, 'Tân Quý Tây', 'Bình Chánh', 'Hồ Chí Minh');
INSERT INTO address VALUES(14, 'Tân Túc', 'Bình Chánh', 'Hồ Chí Minh');
INSERT INTO address VALUES(15, 'Vĩnh Lộc A', 'Bình Chánh', 'Hồ Chí Minh');
INSERT INTO address VALUES(16, 'Vĩnh Lộc B', 'Bình Chánh', 'Hồ Chí Minh');
INSERT INTO address VALUES(17, 'An Lạc', 'Bình Tân', 'Hồ Chí Minh');
INSERT INTO address VALUES(18, 'An Lạc A', 'Bình Tân', 'Hồ Chí Minh');
INSERT INTO address VALUES(19, 'Bình Hưng Hòa', 'Bình Tân', 'Hồ Chí Minh');
INSERT INTO address VALUES(20, 'Bình Hưng Hoà A', 'Bình Tân', 'Hồ Chí Minh');
INSERT INTO address VALUES(21, 'Bình Hưng Hoà B', 'Bình Tân', 'Hồ Chí Minh');
INSERT INTO address VALUES(22, 'Bình Trị Đông', 'Bình Tân', 'Hồ Chí Minh');
INSERT INTO address VALUES(23, 'Bình Trị Đông A', 'Bình Tân', 'Hồ Chí Minh');
INSERT INTO address VALUES(24, 'Bình Trị Đông B', 'Bình Tân', 'Hồ Chí Minh');
INSERT INTO address VALUES(25, 'Tân Tạo', 'Bình Tân', 'Hồ Chí Minh');
INSERT INTO address VALUES(26, 'Tân Tạo A', 'Bình Tân', 'Hồ Chí Minh');
INSERT INTO address VALUES(27, 'Phường 1', 'Bình Thạnh', 'Hồ Chí Minh');
INSERT INTO address VALUES(28, 'Phường 2', 'Bình Thạnh', 'Hồ Chí Minh');
INSERT INTO address VALUES(29, 'Phường 3', 'Bình Thạnh', 'Hồ Chí Minh');
INSERT INTO address VALUES(30, 'Phường 5', 'Bình Thạnh', 'Hồ Chí Minh');
INSERT INTO address VALUES(31, 'Phường 6', 'Bình Thạnh', 'Hồ Chí Minh');
INSERT INTO address VALUES(32, 'Phường 7', 'Bình Thạnh', 'Hồ Chí Minh');
INSERT INTO address VALUES(33, 'Phường 11', 'Bình Thạnh', 'Hồ Chí Minh');
INSERT INTO address VALUES(34, 'Phường 12', 'Bình Thạnh', 'Hồ Chí Minh');
INSERT INTO address VALUES(35, 'Phường 13', 'Bình Thạnh', 'Hồ Chí Minh');
INSERT INTO address VALUES(36, 'Phường 14', 'Bình Thạnh', 'Hồ Chí Minh');
INSERT INTO address VALUES(37, 'Phường 15', 'Bình Thạnh', 'Hồ Chí Minh');
INSERT INTO address VALUES(38, 'Phường 17', 'Bình Thạnh', 'Hồ Chí Minh');
INSERT INTO address VALUES(39, 'Phường 19', 'Bình Thạnh', 'Hồ Chí Minh');
INSERT INTO address VALUES(40, 'Phường 21', 'Bình Thạnh', 'Hồ Chí Minh');
INSERT INTO address VALUES(41, 'Phường 22', 'Bình Thạnh', 'Hồ Chí Minh');
INSERT INTO address VALUES(42, 'Phường 24', 'Bình Thạnh', 'Hồ Chí Minh');
INSERT INTO address VALUES(43, 'Phường 25', 'Bình Thạnh', 'Hồ Chí Minh');
INSERT INTO address VALUES(44, 'Phường 26', 'Bình Thạnh', 'Hồ Chí Minh');
INSERT INTO address VALUES(45, 'Phường 27', 'Bình Thạnh', 'Hồ Chí Minh');
INSERT INTO address VALUES(46, 'Phường 28', 'Bình Thạnh', 'Hồ Chí Minh');
INSERT INTO address VALUES(47, 'An Thới Đông', 'Cần Giờ', 'Hồ Chí Minh');
INSERT INTO address VALUES(48, 'Bình Khánh', 'Cần Giờ', 'Hồ Chí Minh');
INSERT INTO address VALUES(49, 'Cần Thạnh', 'Cần Giờ', 'Hồ Chí Minh');
INSERT INTO address VALUES(50, 'Long Hòa', 'Cần Giờ', 'Hồ Chí Minh');
INSERT INTO address VALUES(51, 'Lý Nhơn', 'Cần Giờ', 'Hồ Chí Minh');
INSERT INTO address VALUES(52, 'Tam Thôn Hiệp', 'Cần Giờ', 'Hồ Chí Minh');
INSERT INTO address VALUES(53, 'Thạnh An', 'Cần Giờ', 'Hồ Chí Minh');
INSERT INTO address VALUES(54, 'An Nhơn Tây', 'Củ Chi', 'Hồ Chí Minh');
INSERT INTO address VALUES(55, 'An Phú', 'Củ Chi', 'Hồ Chí Minh');
INSERT INTO address VALUES(56, 'Bình Mỹ', 'Củ Chi', 'Hồ Chí Minh');
INSERT INTO address VALUES(57, 'Củ Chi', 'Củ Chi', 'Hồ Chí Minh');
INSERT INTO address VALUES(58, 'Hòa Phú', 'Củ Chi', 'Hồ Chí Minh');
INSERT INTO address VALUES(59, 'Nhuận Đức', 'Củ Chi', 'Hồ Chí Minh');
INSERT INTO address VALUES(60, 'Phạm Văn Cội', 'Củ Chi', 'Hồ Chí Minh');
INSERT INTO address VALUES(61, 'Phú Hòa Đông', 'Củ Chi', 'Hồ Chí Minh');
INSERT INTO address VALUES(62, 'Phú Mỹ Hưng', 'Củ Chi', 'Hồ Chí Minh');
INSERT INTO address VALUES(63, 'Phước Hiệp', 'Củ Chi', 'Hồ Chí Minh');
INSERT INTO address VALUES(64, 'Phước Thạnh', 'Củ Chi', 'Hồ Chí Minh');
INSERT INTO address VALUES(65, 'Phước Vĩnh An', 'Củ Chi', 'Hồ Chí Minh');
INSERT INTO address VALUES(66, 'Tân An Hội', 'Củ Chi', 'Hồ Chí Minh');
INSERT INTO address VALUES(67, 'Tân Phú Trung', 'Củ Chi', 'Hồ Chí Minh');
INSERT INTO address VALUES(68, 'Tân Thạnh Đông', 'Củ Chi', 'Hồ Chí Minh');
INSERT INTO address VALUES(69, 'Tân Thạnh Tây', 'Củ Chi', 'Hồ Chí Minh');
INSERT INTO address VALUES(70, 'Tân Thông Hội', 'Củ Chi', 'Hồ Chí Minh');
INSERT INTO address VALUES(71, 'Thái Mỹ', 'Củ Chi', 'Hồ Chí Minh');
INSERT INTO address VALUES(72, 'Trung An', 'Củ Chi', 'Hồ Chí Minh');
INSERT INTO address VALUES(73, 'Trung Lập Hạ', 'Củ Chi', 'Hồ Chí Minh');
INSERT INTO address VALUES(74, 'Trung Lập Thượng', 'Củ Chi', 'Hồ Chí Minh');
INSERT INTO address VALUES(75, 'Phường 1', 'Gò Vấp', 'Hồ Chí Minh');
INSERT INTO address VALUES(76, 'Phường 3', 'Gò Vấp', 'Hồ Chí Minh');
INSERT INTO address VALUES(77, 'Phường 4', 'Gò Vấp', 'Hồ Chí Minh');
INSERT INTO address VALUES(78, 'Phường 5', 'Gò Vấp', 'Hồ Chí Minh');
INSERT INTO address VALUES(79, 'Phường 6', 'Gò Vấp', 'Hồ Chí Minh');
INSERT INTO address VALUES(80, 'Phường 7', 'Gò Vấp', 'Hồ Chí Minh');
INSERT INTO address VALUES(81, 'Phường 8', 'Gò Vấp', 'Hồ Chí Minh');
INSERT INTO address VALUES(82, 'Phường 9', 'Gò Vấp', 'Hồ Chí Minh');
INSERT INTO address VALUES(83, 'Phường 10', 'Gò Vấp', 'Hồ Chí Minh');
INSERT INTO address VALUES(84, 'Phường 11', 'Gò Vấp', 'Hồ Chí Minh');
INSERT INTO address VALUES(85, 'Phường 12', 'Gò Vấp', 'Hồ Chí Minh');
INSERT INTO address VALUES(86, 'Phường 13', 'Gò Vấp', 'Hồ Chí Minh');
INSERT INTO address VALUES(87, 'Phường 14', 'Gò Vấp', 'Hồ Chí Minh');
INSERT INTO address VALUES(88, 'Phường 15', 'Gò Vấp', 'Hồ Chí Minh');
INSERT INTO address VALUES(89, 'Phường 16', 'Gò Vấp', 'Hồ Chí Minh');
INSERT INTO address VALUES(90, 'Phường 17', 'Gò Vấp', 'Hồ Chí Minh');
INSERT INTO address VALUES(91, 'Bà Điểm', 'Hóc Môn', 'Hồ Chí Minh');
INSERT INTO address VALUES(92, 'Đông Thạnh', 'Hóc Môn', 'Hồ Chí Minh');
INSERT INTO address VALUES(93, 'Hóc Môn', 'Hóc Môn', 'Hồ Chí Minh');
INSERT INTO address VALUES(94, 'Nhị Bình', 'Hóc Môn', 'Hồ Chí Minh');
INSERT INTO address VALUES(95, 'Tân Hiệp', 'Hóc Môn', 'Hồ Chí Minh');
INSERT INTO address VALUES(96, 'Tân Thới Nhì', 'Hóc Môn', 'Hồ Chí Minh');
INSERT INTO address VALUES(97, 'Tân Xuân', 'Hóc Môn', 'Hồ Chí Minh');
INSERT INTO address VALUES(98, 'Thới Tam Thôn', 'Hóc Môn', 'Hồ Chí Minh');
INSERT INTO address VALUES(99, 'Trung Chánh', 'Hóc Môn', 'Hồ Chí Minh');
INSERT INTO address VALUES(100, 'Xuân Thới Đông', 'Hóc Môn', 'Hồ Chí Minh');
INSERT INTO address VALUES(101, 'Xuân Thới Sơn', 'Hóc Môn', 'Hồ Chí Minh');
INSERT INTO address VALUES(102, 'Xuân Thới Thượng', 'Hóc Môn', 'Hồ Chí Minh');
INSERT INTO address VALUES(103, 'Hiệp Phước', 'Nhà Bè', 'Hồ Chí Minh');
INSERT INTO address VALUES(104, 'Long Thới', 'Nhà Bè', 'Hồ Chí Minh');
INSERT INTO address VALUES(105, 'Nhà Bè', 'Nhà Bè', 'Hồ Chí Minh');
INSERT INTO address VALUES(106, 'Nhơn Đức', 'Nhà Bè', 'Hồ Chí Minh');
INSERT INTO address VALUES(107, 'Phước Kiển', 'Nhà Bè', 'Hồ Chí Minh');
INSERT INTO address VALUES(108, 'Phước Lộc', 'Nhà Bè', 'Hồ Chí Minh');
INSERT INTO address VALUES(109, 'Phú Xuân', 'Nhà Bè', 'Hồ Chí Minh');
INSERT INTO address VALUES(110, 'Phường 1', 'Phú Nhuận', 'Hồ Chí Minh');
INSERT INTO address VALUES(111, 'Phường 2', 'Phú Nhuận', 'Hồ Chí Minh');
INSERT INTO address VALUES(112, 'Phường 3', 'Phú Nhuận', 'Hồ Chí Minh');
INSERT INTO address VALUES(113, 'Phường 4', 'Phú Nhuận', 'Hồ Chí Minh');
INSERT INTO address VALUES(114, 'Phường 5', 'Phú Nhuận', 'Hồ Chí Minh');
INSERT INTO address VALUES(115, 'Phường 7', 'Phú Nhuận', 'Hồ Chí Minh');
INSERT INTO address VALUES(116, 'Phường 8', 'Phú Nhuận', 'Hồ Chí Minh');
INSERT INTO address VALUES(117, 'Phường 9', 'Phú Nhuận', 'Hồ Chí Minh');
INSERT INTO address VALUES(118, 'Phường 10', 'Phú Nhuận', 'Hồ Chí Minh');
INSERT INTO address VALUES(119, 'Phường 11', 'Phú Nhuận', 'Hồ Chí Minh');
INSERT INTO address VALUES(120, 'Phường 12', 'Phú Nhuận', 'Hồ Chí Minh');
INSERT INTO address VALUES(121, 'Phường 13', 'Phú Nhuận', 'Hồ Chí Minh');
INSERT INTO address VALUES(122, 'Phường 14', 'Phú Nhuận', 'Hồ Chí Minh');
INSERT INTO address VALUES(123, 'Phường 15', 'Phú Nhuận', 'Hồ Chí Minh');
INSERT INTO address VALUES(124, 'Phường 17', 'Phú Nhuận', 'Hồ Chí Minh');
INSERT INTO address VALUES(125, 'Bến Nghé', 'Quận 1', 'Hồ Chí Minh');
INSERT INTO address VALUES(126, 'Bến Thành', 'Quận 1', 'Hồ Chí Minh');
INSERT INTO address VALUES(127, 'Cầu Kho', 'Quận 1', 'Hồ Chí Minh');
INSERT INTO address VALUES(128, 'Cầu Ông Lãnh', 'Quận 1', 'Hồ Chí Minh');
INSERT INTO address VALUES(129, 'Cô Giang', 'Quận 1', 'Hồ Chí Minh');
INSERT INTO address VALUES(130, 'Đa Kao', 'Quận 1', 'Hồ Chí Minh');
INSERT INTO address VALUES(131, 'Nguyễn Cư Trinh', 'Quận 1', 'Hồ Chí Minh');
INSERT INTO address VALUES(132, 'Nguyễn Thái Bình', 'Quận 1', 'Hồ Chí Minh');
INSERT INTO address VALUES(133, 'Phạm Ngũ Lão', 'Quận 1', 'Hồ Chí Minh');
INSERT INTO address VALUES(134, 'Tân Định', 'Quận 1', 'Hồ Chí Minh');
INSERT INTO address VALUES(135, 'An Khánh', 'Quận 2', 'Hồ Chí Minh');
INSERT INTO address VALUES(136, 'An Lợi Đông', 'Quận 2', 'Hồ Chí Minh');
INSERT INTO address VALUES(137, 'An Phú', 'Quận 2', 'Hồ Chí Minh');
INSERT INTO address VALUES(138, 'Bình An', 'Quận 2', 'Hồ Chí Minh');
INSERT INTO address VALUES(139, 'Bình Khánh', 'Quận 2', 'Hồ Chí Minh');
INSERT INTO address VALUES(140, 'Bình Trưng Đông', 'Quận 2', 'Hồ Chí Minh');
INSERT INTO address VALUES(141, 'Bình Trưng Tây', 'Quận 2', 'Hồ Chí Minh');
INSERT INTO address VALUES(142, 'Cát Lái', 'Quận 2', 'Hồ Chí Minh');
INSERT INTO address VALUES(143, 'Thạnh Mỹ Lợi', 'Quận 2', 'Hồ Chí Minh');
INSERT INTO address VALUES(144, 'Thảo Điền', 'Quận 2', 'Hồ Chí Minh');
INSERT INTO address VALUES(145, 'Thủ Thiêm', 'Quận 2', 'Hồ Chí Minh');
INSERT INTO address VALUES(146, 'Phường 1', 'Quận 3', 'Hồ Chí Minh');
INSERT INTO address VALUES(147, 'Phường 2', 'Quận 3', 'Hồ Chí Minh');
INSERT INTO address VALUES(148, 'Phường 3', 'Quận 3', 'Hồ Chí Minh');
INSERT INTO address VALUES(149, 'Phường 4', 'Quận 3', 'Hồ Chí Minh');
INSERT INTO address VALUES(150, 'Phường 5', 'Quận 3', 'Hồ Chí Minh');
INSERT INTO address VALUES(151, 'Phường 6', 'Quận 3', 'Hồ Chí Minh');
INSERT INTO address VALUES(152, 'Phường 7', 'Quận 3', 'Hồ Chí Minh');
INSERT INTO address VALUES(153, 'Phường 8', 'Quận 3', 'Hồ Chí Minh');
INSERT INTO address VALUES(154, 'Phường 9', 'Quận 3', 'Hồ Chí Minh');
INSERT INTO address VALUES(155, 'Phường 10', 'Quận 3', 'Hồ Chí Minh');
INSERT INTO address VALUES(156, 'Phường 11', 'Quận 3', 'Hồ Chí Minh');
INSERT INTO address VALUES(157, 'Phường 12', 'Quận 3', 'Hồ Chí Minh');
INSERT INTO address VALUES(158, 'Phường 13', 'Quận 3', 'Hồ Chí Minh');
INSERT INTO address VALUES(159, 'Phường 14', 'Quận 3', 'Hồ Chí Minh');
INSERT INTO address VALUES(160, 'Phường 1', 'Quận 4', 'Hồ Chí Minh');
INSERT INTO address VALUES(161, 'Phường 2', 'Quận 4', 'Hồ Chí Minh');
INSERT INTO address VALUES(162, 'Phường 3', 'Quận 4', 'Hồ Chí Minh');
INSERT INTO address VALUES(163, 'Phường 4', 'Quận 4', 'Hồ Chí Minh');
INSERT INTO address VALUES(164, 'Phường 5', 'Quận 4', 'Hồ Chí Minh');
INSERT INTO address VALUES(165, 'Phường 6', 'Quận 4', 'Hồ Chí Minh');
INSERT INTO address VALUES(166, 'Phường 8', 'Quận 4', 'Hồ Chí Minh');
INSERT INTO address VALUES(167, 'Phường 9', 'Quận 4', 'Hồ Chí Minh');
INSERT INTO address VALUES(168, 'Phường 10', 'Quận 4', 'Hồ Chí Minh');
INSERT INTO address VALUES(169, 'Phường 12', 'Quận 4', 'Hồ Chí Minh');
INSERT INTO address VALUES(170, 'Phường 13', 'Quận 4', 'Hồ Chí Minh');
INSERT INTO address VALUES(171, 'Phường 14', 'Quận 4', 'Hồ Chí Minh');
INSERT INTO address VALUES(172, 'Phường 15', 'Quận 4', 'Hồ Chí Minh');
INSERT INTO address VALUES(173, 'Phường 16', 'Quận 4', 'Hồ Chí Minh');
INSERT INTO address VALUES(174, 'Phường 18', 'Quận 4', 'Hồ Chí Minh');
INSERT INTO address VALUES(175, 'Phường 1', 'Quận 5', 'Hồ Chí Minh');
INSERT INTO address VALUES(176, 'Phường 2', 'Quận 5', 'Hồ Chí Minh');
INSERT INTO address VALUES(177, 'Phường 3', 'Quận 5', 'Hồ Chí Minh');
INSERT INTO address VALUES(178, 'Phường 4', 'Quận 5', 'Hồ Chí Minh');
INSERT INTO address VALUES(179, 'Phường 5', 'Quận 5', 'Hồ Chí Minh');
INSERT INTO address VALUES(180, 'Phường 6', 'Quận 5', 'Hồ Chí Minh');
INSERT INTO address VALUES(181, 'Phường 7', 'Quận 5', 'Hồ Chí Minh');
INSERT INTO address VALUES(182, 'Phường 8', 'Quận 5', 'Hồ Chí Minh');
INSERT INTO address VALUES(183, 'Phường 9', 'Quận 5', 'Hồ Chí Minh');
INSERT INTO address VALUES(184, 'Phường 10', 'Quận 5', 'Hồ Chí Minh');
INSERT INTO address VALUES(185, 'Phường 11', 'Quận 5', 'Hồ Chí Minh');
INSERT INTO address VALUES(186, 'Phường 12', 'Quận 5', 'Hồ Chí Minh');
INSERT INTO address VALUES(187, 'Phường 13', 'Quận 5', 'Hồ Chí Minh');
INSERT INTO address VALUES(188, 'Phường 14', 'Quận 5', 'Hồ Chí Minh');
INSERT INTO address VALUES(189, 'Phường 15', 'Quận 5', 'Hồ Chí Minh');
INSERT INTO address VALUES(190, 'Phường 1', 'Quận 6', 'Hồ Chí Minh');
INSERT INTO address VALUES(191, 'Phường 2', 'Quận 6', 'Hồ Chí Minh');
INSERT INTO address VALUES(192, 'Phường 3', 'Quận 6', 'Hồ Chí Minh');
INSERT INTO address VALUES(193, 'Phường 4', 'Quận 6', 'Hồ Chí Minh');
INSERT INTO address VALUES(194, 'Phường 5', 'Quận 6', 'Hồ Chí Minh');
INSERT INTO address VALUES(195, 'Phường 6', 'Quận 6', 'Hồ Chí Minh');
INSERT INTO address VALUES(196, 'Phường 7', 'Quận 6', 'Hồ Chí Minh');
INSERT INTO address VALUES(197, 'Phường 8', 'Quận 6', 'Hồ Chí Minh');
INSERT INTO address VALUES(198, 'Phường 9', 'Quận 6', 'Hồ Chí Minh');
INSERT INTO address VALUES(199, 'Phường 10', 'Quận 6', 'Hồ Chí Minh');
INSERT INTO address VALUES(200, 'Phường 11', 'Quận 6', 'Hồ Chí Minh');
INSERT INTO address VALUES(201, 'Phường 12', 'Quận 6', 'Hồ Chí Minh');
INSERT INTO address VALUES(202, 'Phường 13', 'Quận 6', 'Hồ Chí Minh');
INSERT INTO address VALUES(203, 'Phường 14', 'Quận 6', 'Hồ Chí Minh');
INSERT INTO address VALUES(204, 'Bình Thuận', 'Quận 7', 'Hồ Chí Minh');
INSERT INTO address VALUES(205, 'Phú Mỹ', 'Quận 7', 'Hồ Chí Minh');
INSERT INTO address VALUES(206, 'Phú Thuận', 'Quận 7', 'Hồ Chí Minh');
INSERT INTO address VALUES(207, 'Tân Hưng', 'Quận 7', 'Hồ Chí Minh');
INSERT INTO address VALUES(208, 'Tân Kiểng', 'Quận 7', 'Hồ Chí Minh');
INSERT INTO address VALUES(209, 'Tân Phong', 'Quận 7', 'Hồ Chí Minh');
INSERT INTO address VALUES(210, 'Tân Phú', 'Quận 7', 'Hồ Chí Minh');
INSERT INTO address VALUES(211, 'Tân Quy', 'Quận 7', 'Hồ Chí Minh');
INSERT INTO address VALUES(212, 'Tân Thuận Đông', 'Quận 7', 'Hồ Chí Minh');
INSERT INTO address VALUES(213, 'Tân Thuận Tây', 'Quận 7', 'Hồ Chí Minh');
INSERT INTO address VALUES(214, 'Phường 1', 'Quận 8', 'Hồ Chí Minh');
INSERT INTO address VALUES(215, 'Phường 2', 'Quận 8', 'Hồ Chí Minh');
INSERT INTO address VALUES(216, 'Phường 3', 'Quận 8', 'Hồ Chí Minh');
INSERT INTO address VALUES(217, 'Phường 4', 'Quận 8', 'Hồ Chí Minh');
INSERT INTO address VALUES(218, 'Phường 5', 'Quận 8', 'Hồ Chí Minh');
INSERT INTO address VALUES(219, 'Phường 6', 'Quận 8', 'Hồ Chí Minh');
INSERT INTO address VALUES(220, 'Phường 7', 'Quận 8', 'Hồ Chí Minh');
INSERT INTO address VALUES(221, 'Phường 8', 'Quận 8', 'Hồ Chí Minh');
INSERT INTO address VALUES(222, 'Phường 9', 'Quận 8', 'Hồ Chí Minh');
INSERT INTO address VALUES(223, 'Phường 10', 'Quận 8', 'Hồ Chí Minh');
INSERT INTO address VALUES(224, 'Phường 11', 'Quận 8', 'Hồ Chí Minh');
INSERT INTO address VALUES(225, 'Phường 12', 'Quận 8', 'Hồ Chí Minh');
INSERT INTO address VALUES(226, 'Phường 13', 'Quận 8', 'Hồ Chí Minh');
INSERT INTO address VALUES(227, 'Phường 14', 'Quận 8', 'Hồ Chí Minh');
INSERT INTO address VALUES(228, 'Phường 15', 'Quận 8', 'Hồ Chí Minh');
INSERT INTO address VALUES(229, 'Phường 16', 'Quận 8', 'Hồ Chí Minh');
INSERT INTO address VALUES(230, 'Hiệp Phú', 'Quận 9', 'Hồ Chí Minh');
INSERT INTO address VALUES(231, 'Long Bình', 'Quận 9', 'Hồ Chí Minh');
INSERT INTO address VALUES(232, 'Long Phước', 'Quận 9', 'Hồ Chí Minh');
INSERT INTO address VALUES(233, 'Long Thạnh Mỹ', 'Quận 9', 'Hồ Chí Minh');
INSERT INTO address VALUES(234, 'Long Trường', 'Quận 9', 'Hồ Chí Minh');
INSERT INTO address VALUES(235, 'Phú Hữu', 'Quận 9', 'Hồ Chí Minh');
INSERT INTO address VALUES(236, 'Phước Bình', 'Quận 9', 'Hồ Chí Minh');
INSERT INTO address VALUES(237, 'Phước Long A', 'Quận 9', 'Hồ Chí Minh');
INSERT INTO address VALUES(238, 'Phước Long B', 'Quận 9', 'Hồ Chí Minh');
INSERT INTO address VALUES(239, 'Tăng Nhơn Phú A', 'Quận 9', 'Hồ Chí Minh');
INSERT INTO address VALUES(240, 'Tăng Nhơn Phú B', 'Quận 9', 'Hồ Chí Minh');
INSERT INTO address VALUES(241, 'Tân Phú', 'Quận 9', 'Hồ Chí Minh');
INSERT INTO address VALUES(242, 'Trường Thạnh', 'Quận 9', 'Hồ Chí Minh');
INSERT INTO address VALUES(243, 'Phường 1', 'Quận 10', 'Hồ Chí Minh');
INSERT INTO address VALUES(244, 'Phường 2', 'Quận 10', 'Hồ Chí Minh');
INSERT INTO address VALUES(245, 'Phường 3', 'Quận 10', 'Hồ Chí Minh');
INSERT INTO address VALUES(246, 'Phường 4', 'Quận 10', 'Hồ Chí Minh');
INSERT INTO address VALUES(247, 'Phường 5', 'Quận 10', 'Hồ Chí Minh');
INSERT INTO address VALUES(248, 'Phường 6', 'Quận 10', 'Hồ Chí Minh');
INSERT INTO address VALUES(249, 'Phường 7', 'Quận 10', 'Hồ Chí Minh');
INSERT INTO address VALUES(250, 'Phường 8', 'Quận 10', 'Hồ Chí Minh');
INSERT INTO address VALUES(251, 'Phường 9', 'Quận 10', 'Hồ Chí Minh');
INSERT INTO address VALUES(252, 'Phường 10', 'Quận 10', 'Hồ Chí Minh');
INSERT INTO address VALUES(253, 'Phường 11', 'Quận 10', 'Hồ Chí Minh');
INSERT INTO address VALUES(254, 'Phường 12', 'Quận 10', 'Hồ Chí Minh');
INSERT INTO address VALUES(255, 'Phường 13', 'Quận 10', 'Hồ Chí Minh');
INSERT INTO address VALUES(256, 'Phường 14', 'Quận 10', 'Hồ Chí Minh');
INSERT INTO address VALUES(257, 'Phường 15', 'Quận 10', 'Hồ Chí Minh');
INSERT INTO address VALUES(258, 'Phường 1', 'Quận 11', 'Hồ Chí Minh');
INSERT INTO address VALUES(259, 'Phường 2', 'Quận 11', 'Hồ Chí Minh');
INSERT INTO address VALUES(260, 'Phường 3', 'Quận 11', 'Hồ Chí Minh');
INSERT INTO address VALUES(261, 'Phường 4', 'Quận 11', 'Hồ Chí Minh');
INSERT INTO address VALUES(262, 'Phường 5', 'Quận 11', 'Hồ Chí Minh');
INSERT INTO address VALUES(263, 'Phường 6', 'Quận 11', 'Hồ Chí Minh');
INSERT INTO address VALUES(264, 'Phường 7', 'Quận 11', 'Hồ Chí Minh');
INSERT INTO address VALUES(265, 'Phường 8', 'Quận 11', 'Hồ Chí Minh');
INSERT INTO address VALUES(266, 'Phường 9', 'Quận 11', 'Hồ Chí Minh');
INSERT INTO address VALUES(267, 'Phường 10', 'Quận 11', 'Hồ Chí Minh');
INSERT INTO address VALUES(268, 'Phường 11', 'Quận 11', 'Hồ Chí Minh');
INSERT INTO address VALUES(269, 'Phường 12', 'Quận 11', 'Hồ Chí Minh');
INSERT INTO address VALUES(270, 'Phường 13', 'Quận 11', 'Hồ Chí Minh');
INSERT INTO address VALUES(271, 'Phường 14', 'Quận 11', 'Hồ Chí Minh');
INSERT INTO address VALUES(272, 'Phường 15', 'Quận 11', 'Hồ Chí Minh');
INSERT INTO address VALUES(273, 'Phường 16', 'Quận 11', 'Hồ Chí Minh');
INSERT INTO address VALUES(274, 'An Phú Đông', 'Quận 12', 'Hồ Chí Minh');
INSERT INTO address VALUES(275, 'Đông Hưng Thuận', 'Quận 12', 'Hồ Chí Minh');
INSERT INTO address VALUES(276, 'Hiệp Thành', 'Quận 12', 'Hồ Chí Minh');
INSERT INTO address VALUES(277, 'Tân Chánh Hiệp', 'Quận 12', 'Hồ Chí Minh');
INSERT INTO address VALUES(278, 'Tân Hưng Thuận', 'Quận 12', 'Hồ Chí Minh');
INSERT INTO address VALUES(279, 'Tân Thới Hiệp', 'Quận 12', 'Hồ Chí Minh');
INSERT INTO address VALUES(280, 'Tân Thới Nhất', 'Quận 12', 'Hồ Chí Minh');
INSERT INTO address VALUES(281, 'Thạnh Lộc', 'Quận 12', 'Hồ Chí Minh');
INSERT INTO address VALUES(282, 'Thạnh Xuân', 'Quận 12', 'Hồ Chí Minh');
INSERT INTO address VALUES(283, 'Thới An', 'Quận 12', 'Hồ Chí Minh');
INSERT INTO address VALUES(284, 'Trung Mỹ Tây', 'Quận 12', 'Hồ Chí Minh');
INSERT INTO address VALUES(285, 'Phường 1', 'Tân Bình', 'Hồ Chí Minh');
INSERT INTO address VALUES(286, 'Phường 2', 'Tân Bình', 'Hồ Chí Minh');
INSERT INTO address VALUES(287, 'Phường 3', 'Tân Bình', 'Hồ Chí Minh');
INSERT INTO address VALUES(288, 'Phường 4', 'Tân Bình', 'Hồ Chí Minh');
INSERT INTO address VALUES(289, 'Phường 5', 'Tân Bình', 'Hồ Chí Minh');
INSERT INTO address VALUES(290, 'Phường 6', 'Tân Bình', 'Hồ Chí Minh');
INSERT INTO address VALUES(291, 'Phường 7', 'Tân Bình', 'Hồ Chí Minh');
INSERT INTO address VALUES(292, 'Phường 8', 'Tân Bình', 'Hồ Chí Minh');
INSERT INTO address VALUES(293, 'Phường 9', 'Tân Bình', 'Hồ Chí Minh');
INSERT INTO address VALUES(294, 'Phường 10', 'Tân Bình', 'Hồ Chí Minh');
INSERT INTO address VALUES(295, 'Phường 11', 'Tân Bình', 'Hồ Chí Minh');
INSERT INTO address VALUES(296, 'Phường 12', 'Tân Bình', 'Hồ Chí Minh');
INSERT INTO address VALUES(297, 'Phường 13', 'Tân Bình', 'Hồ Chí Minh');
INSERT INTO address VALUES(298, 'Phường 14', 'Tân Bình', 'Hồ Chí Minh');
INSERT INTO address VALUES(299, 'Phường 15', 'Tân Bình', 'Hồ Chí Minh');
INSERT INTO address VALUES(300, 'Hiệp Tân', 'Tân Phú', 'Hồ Chí Minh');
INSERT INTO address VALUES(301, 'Hòa Thạnh', 'Tân Phú', 'Hồ Chí Minh');
INSERT INTO address VALUES(302, 'Phú Thạnh', 'Tân Phú', 'Hồ Chí Minh');
INSERT INTO address VALUES(303, 'Phú Thọ Hòa', 'Tân Phú', 'Hồ Chí Minh');
INSERT INTO address VALUES(304, 'Phú Trung', 'Tân Phú', 'Hồ Chí Minh');
INSERT INTO address VALUES(305, 'Sơn Kỳ', 'Tân Phú', 'Hồ Chí Minh');
INSERT INTO address VALUES(306, 'Tân Quý', 'Tân Phú', 'Hồ Chí Minh');
INSERT INTO address VALUES(307, 'Tân Sơn Nhì', 'Tân Phú', 'Hồ Chí Minh');
INSERT INTO address VALUES(308, 'Tân Thành', 'Tân Phú', 'Hồ Chí Minh');
INSERT INTO address VALUES(309, 'Tân Thới Hòa', 'Tân Phú', 'Hồ Chí Minh');
INSERT INTO address VALUES(310, 'Tây Thạnh', 'Tân Phú', 'Hồ Chí Minh');
INSERT INTO address VALUES(311, 'Bình Chiểu', 'Thủ Đức', 'Hồ Chí Minh');
INSERT INTO address VALUES(312, 'Bình Thọ', 'Thủ Đức', 'Hồ Chí Minh');
INSERT INTO address VALUES(313, 'Hiệp Bình Chánh', 'Thủ Đức', 'Hồ Chí Minh');
INSERT INTO address VALUES(314, 'Hiệp Bình Phước', 'Thủ Đức', 'Hồ Chí Minh');
INSERT INTO address VALUES(315, 'Linh Chiểu', 'Thủ Đức', 'Hồ Chí Minh');
INSERT INTO address VALUES(316, 'Linh Đông', 'Thủ Đức', 'Hồ Chí Minh');
INSERT INTO address VALUES(317, 'Linh Tây', 'Thủ Đức', 'Hồ Chí Minh');
INSERT INTO address VALUES(318, 'Linh Trung', 'Thủ Đức', 'Hồ Chí Minh');
INSERT INTO address VALUES(319, 'Linh Xuân', 'Thủ Đức', 'Hồ Chí Minh');
INSERT INTO address VALUES(320, 'Tam Bình', 'Thủ Đức', 'Hồ Chí Minh');
INSERT INTO address VALUES(321, 'Tam Phú', 'Thủ Đức', 'Hồ Chí Minh');
INSERT INTO address VALUES(322, 'Trường Thọ', 'Thủ Đức', 'Hồ Chí Minh');