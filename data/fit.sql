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
    student_id VARCHAR(20) PRIMARY KEY,
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
    student_id VARCHAR(20),
    offering_id INTEGER,
    score NUMERIC,
    score_type VARCHAR(50),
    FOREIGN KEY (student_id) REFERENCES student (student_id),
    FOREIGN KEY (offering_id) REFERENCES course_offering (offering_id)
);


-- Insert table address
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


-- Insert table employee
INSERT INTO employee VALUES(1, 'Trương Vĩnh Linh', '1985-03-28 00:00:00', 'Việt Nam', '984073163', '0660283306');
INSERT INTO employee VALUES(2, 'Nguyễn Hữu Tình', '1992-10-12 00:00:00', 'Việt Nam', '764550275', '0393233223');
INSERT INTO employee VALUES(3, 'Lê Trọng Ngọc', '1992-03-03 00:00:00', 'Việt Nam', '802805783', '0365014560');
INSERT INTO employee VALUES(4, 'Nguyễn Chí Kiên', '1991-12-10 00:00:00', 'Việt Nam', '667858887', '0519166933');
INSERT INTO employee VALUES(5, 'Đặng Quang Vinh', '1982-07-12 00:00:00', 'Việt Nam', '585844696', '0153681259');
INSERT INTO employee VALUES(6, 'Huỳnh Trung Hiếu', '1988-05-09 00:00:00', 'Việt Nam', '298050991', '0893704394');
INSERT INTO employee VALUES(7, 'Hồ Đắc Quán', '1982-03-31 00:00:00', 'Việt Nam', '377689669', '0266110896');
INSERT INTO employee VALUES(8, 'Lê Thị Ánh Tuyết', '1993-08-16 00:00:00', 'Việt Nam', '558661072', '0488284065');
INSERT INTO employee VALUES(9, 'Phạm Thị Thiết', '1990-07-12 00:00:00', 'Việt Nam', '533933356', '0184604893');
INSERT INTO employee VALUES(10, 'Trịnh Thanh Sơn', '1993-03-09 00:00:00', 'Việt Nam', '813156183', '0655106082');
INSERT INTO employee VALUES(11, 'Đoàn Văn Thắng', '1984-12-05 00:00:00', 'Việt Nam', '818778210', '0668437578');
INSERT INTO employee VALUES(12, 'Đặng Thị Phúc', '1984-04-27 00:00:00', 'Việt Nam', '201024539', '0714336583');
INSERT INTO employee VALUES(13, 'Tôn Long Phước', '1990-11-07 00:00:00', 'Việt Nam', '668857369', '0526336192');
INSERT INTO employee VALUES(14, 'Lê Nhật Duy', '1993-11-18 00:00:00', 'Việt Nam', '686679713', '0190830564');
INSERT INTO employee VALUES(15, 'Trần Thị Minh Khoa', '1989-01-02 00:00:00', 'Việt Nam', '755038944', '0956825767');
INSERT INTO employee VALUES(16, 'Tạ Duy Công Chiến', '1983-01-25 00:00:00', 'Việt Nam', '727179962', '0284537555');
INSERT INTO employee VALUES(17, 'Nguyễn Thị Hạnh', '1993-06-28 00:00:00', 'Việt Nam', '438696388', '0530496444');
INSERT INTO employee VALUES(18, 'Võ Quang Hoàng Khang', '1984-02-19 00:00:00', 'Việt Nam', '148284654', '0993895903');
INSERT INTO employee VALUES(19, 'Lê Thị Ánh Tuyết', '1990-12-06 00:00:00', 'Việt Nam', '721147750', '0523975475');
INSERT INTO employee VALUES(20, 'Nguyễn Thị Thanh Bình', '1981-05-29 00:00:00', 'Việt Nam', '782469474', '0218866997');
INSERT INTO employee VALUES(21, 'Đàm Sao Mai', '1980-03-22 00:00:00', 'Việt Nam', '403729740', '0242850659');
INSERT INTO employee VALUES(22, 'Lưu Giang Nam', '1982-10-16 00:00:00', 'Việt Nam', '589126119', '0781910586');
INSERT INTO employee VALUES(23, 'Nguyễn Trung Dũng', '1992-11-14 00:00:00', 'Việt Nam', '887878342', '0316553118');
INSERT INTO employee VALUES(24, 'Lê Đình Trường', '1992-08-29 00:00:00', 'Việt Nam', '494152749', '0975004755');
INSERT INTO employee VALUES(25, 'Hồ Văn Đức', '1990-03-23 00:00:00', 'Việt Nam', '553255019', '0281266411');
INSERT INTO employee VALUES(26, 'Đặng Thị Minh Phượng', '1981-08-24 00:00:00', 'Việt Nam', '561223194', '0182758650');
INSERT INTO employee VALUES(27, 'Vũ Thị Thu Trang', '1984-11-26 00:00:00', 'Việt Nam', '880968054', '0273167270');
INSERT INTO employee VALUES(28, 'Bùi Thị Hảo', '1992-12-06 00:00:00', 'Việt Nam', '391516975', '0433114922');
INSERT INTO employee VALUES(29, 'Đặng Công Tráng', '1992-12-07 00:00:00', 'Việt Nam', '533307898', '0441730907');
INSERT INTO employee VALUES(30, 'Huỳnh Minh Luân', '1980-09-06 00:00:00', 'Việt Nam', '708118049', '0940990710');
INSERT INTO employee VALUES(31, 'Mai Thị Thu', '1989-10-05 00:00:00', 'Việt Nam', '662527040', '0520495548');
INSERT INTO employee VALUES(32, 'Ngô Ngọc Hưng', '1990-01-20 00:00:00', 'Việt Nam', '735608612', '0296955750');
INSERT INTO employee VALUES(33, 'Ninh Phú Giang', '1994-08-09 00:00:00', 'Việt Nam', '418055895', '0829891314');
INSERT INTO employee VALUES(34, 'Nguyễn Văn Bình', '1992-10-29 00:00:00', 'Việt Nam', '100329172', '0374018059');
INSERT INTO employee VALUES(35, 'Nguyễn Thị Thu Trang', '1993-04-28 00:00:00', 'Việt Nam', '226175863', '0139695874');
INSERT INTO employee VALUES(36, 'Nguyễn Thị Ngọc Nữ', '1981-04-23 00:00:00', 'Việt Nam', '601388718', '0157307958');
INSERT INTO employee VALUES(37, 'Đỗ Quốc Huy', '1984-12-16 00:00:00', 'Việt Nam', '901331770', '0526305581');
INSERT INTO employee VALUES(38, 'Nguyễn Phúc Thanh Phong', '1989-01-01 00:00:00', 'Việt Nam', '812984123', '0339002651');
INSERT INTO employee VALUES(39, 'Nguyễn Minh Luận', '1990-06-12 00:00:00', 'Việt Nam', '153053044', '0338576117');
INSERT INTO employee VALUES(40, 'Nguyễn Quy Hưng', '1987-04-07 00:00:00', 'Việt Nam', '101549877', '0784488208');
INSERT INTO employee VALUES(41, 'Phạm Ngọc Anh', '1989-07-14 00:00:00', 'Việt Nam', '731573768', '0961170477');
INSERT INTO employee VALUES(42, 'Nguyễn Thị Thoang', '1985-06-23 00:00:00', 'Việt Nam', '541926442', '0573049879');
INSERT INTO employee VALUES(43, 'Nguyễn Thị Thanh Thuý', '1982-03-01 00:00:00', 'Việt Nam', '351118787', '0957562158');
INSERT INTO employee VALUES(44, 'Nguyễn Thị Bích', '1994-11-30 00:00:00', 'Việt Nam', '523771652', '0300800274');
INSERT INTO employee VALUES(45, 'Hoàng Thị Phong Linh', '1981-10-08 00:00:00', 'Việt Nam', '553133400', '0524795049');
INSERT INTO employee VALUES(46, 'Huỳnh Văn Hiếu', '1988-01-11 00:00:00', 'Việt Nam', '114650826', '0823810436');
INSERT INTO employee VALUES(47, 'Nguyễn Đức Phương', '1992-06-01 00:00:00', 'Việt Nam', '772882484', '0725017495');
INSERT INTO employee VALUES(48, 'Nguyễn Đình Tùng', '1987-09-05 00:00:00', 'Việt Nam', '114713050', '0435588075');
INSERT INTO employee VALUES(49, 'Phạm Anh Lộc', '1980-01-28 00:00:00', 'Việt Nam', '977521875', '0450940015');
INSERT INTO employee VALUES(50, 'Giảng Thanh Trọn', '1994-08-14 00:00:00', 'Việt Nam', '625269601', '0767984361');
INSERT INTO employee VALUES(51, 'Võ Ngọc Tấn Phước', '1994-01-21 00:00:00', 'Việt Nam', '859670852', '0656004387');
INSERT INTO employee VALUES(52, 'Ngô Hữu Dũng', '1988-08-15 00:00:00', 'Việt Nam', '511785136', '0680493130');
INSERT INTO employee VALUES(53, 'Nguyễn Quang Vinh', '1982-04-21 00:00:00', 'Việt Nam', '934163323', '0693941750');
INSERT INTO employee VALUES(54, 'Bùi Thị Thu Thủy', '1990-04-18 00:00:00', 'Việt Nam', '279833574', '0933211795');
INSERT INTO employee VALUES(55, 'Trần Nhật Hoàng Anh', '1990-05-26 00:00:00', 'Việt Nam', '525681454', '0751606367');
INSERT INTO employee VALUES(56, 'Phạm Thái Hà', '1988-07-18 00:00:00', 'Việt Nam', '589647709', '0809980588');
INSERT INTO employee VALUES(57, 'Nguyễn Quy Hưng', '1990-11-13 00:00:00', 'Việt Nam', '812151278', '0345300448');
INSERT INTO employee VALUES(58, 'Lê Văn Tán', '1992-02-06 00:00:00', 'Việt Nam', '137565360', '0734427572');
INSERT INTO employee VALUES(59, 'Nguyễn Thị Thu Trang', '1984-01-22 00:00:00', 'Việt Nam', '542080430', '0129411473');
INSERT INTO employee VALUES(60, 'Nguyễn Viễn Quốc', '1987-05-30 00:00:00', 'Việt Nam', '619759524', '0994413747');
INSERT INTO employee VALUES(61, 'Nguyễn Quốc Hưng', '1988-07-16 00:00:00', 'Việt Nam', '350010952', '0579754977');
INSERT INTO employee VALUES(62, 'Nguyễn Phương Bắc', '1989-07-27 00:00:00', 'Việt Nam', '347502928', '0165497382');
INSERT INTO employee VALUES(63, 'Trần Ngọc Đăng Khoa', '1994-11-28 00:00:00', 'Việt Nam', '775111746', '0751887223');
INSERT INTO employee VALUES(64, 'Lê Ngọc Trân', '1982-07-19 00:00:00', 'Việt Nam', '664905102', '0645759058');
INSERT INTO employee VALUES(65, 'Ngô Tiến Hoàng', '1984-12-17 00:00:00', 'Việt Nam', '158499743', '0228404116');
INSERT INTO employee VALUES(66, 'Nguyễn Ngọc Điệp', '1988-07-16 00:00:00', 'Việt Nam', '140439292', '0242878529');
INSERT INTO employee VALUES(67, 'Huỳnh Công Hảo', '1982-06-26 00:00:00', 'Việt Nam', '791500438', '0227812488');
INSERT INTO employee VALUES(68, 'Hoàng Văn Vinh', '1990-05-05 00:00:00', 'Việt Nam', '332486105', '0706140403');
INSERT INTO employee VALUES(69, 'Lê Duy Tuấn', '1982-10-10 00:00:00', 'Việt Nam', '693803690', '0983148026');
INSERT INTO employee VALUES(70, 'Nguyễn Ngọc Tuyến', '1980-02-07 00:00:00', 'Việt Nam', '673597747', '0563219194');
INSERT INTO employee VALUES(71, 'Lăng Văn Thắng', '1992-04-30 00:00:00', 'Việt Nam', '825578337', '0947947620');
INSERT INTO employee VALUES(72, 'Nguyễn Khoa Triều', '1982-05-28 00:00:00', 'Việt Nam', '945051750', '0868840616');
INSERT INTO employee VALUES(73, 'Phan Chí Chính', '1988-07-02 00:00:00', 'Việt Nam', '570572846', '0260905171');
INSERT INTO employee VALUES(74, 'Lưu Tuấn Anh', '1981-07-17 00:00:00', 'Việt Nam', '812323351', '0511220458');
INSERT INTO employee VALUES(75, 'Huỳnh Xuân Khoa', '1988-05-23 00:00:00', 'Việt Nam', '156782054', '0713723104');
INSERT INTO employee VALUES(76, 'Lê Vũ Hải', '1993-11-07 00:00:00', 'Việt Nam', '776716691', '0862876850');
INSERT INTO employee VALUES(77, 'Nguyễn Thị Niên', '1993-01-28 00:00:00', 'Việt Nam', '443467877', '0667213261');
INSERT INTO employee VALUES(78, 'Tôn Thất Nguyên Thy', '1992-07-07 00:00:00', 'Việt Nam', '313711296', '0136978594');
INSERT INTO employee VALUES(79, 'Nguyễn Minh Tuấn', '1992-03-08 00:00:00', 'Việt Nam', '345315893', '0313338426');
INSERT INTO employee VALUES(80, 'Trần Ngọc Thoại', '1989-09-15 00:00:00', 'Việt Nam', '614382801', '0512589011');
INSERT INTO employee VALUES(81, 'Võ Ngọc Yến Phương', '1987-04-14 00:00:00', 'Việt Nam', '984718535', '0770659343');
INSERT INTO employee VALUES(82, 'Trương Văn Chính', '1986-10-01 00:00:00', 'Việt Nam', '307458723', '0864081812');
INSERT INTO employee VALUES(83, 'Nguyễn Văn Nam', '1987-06-13 00:00:00', 'Việt Nam', '370588221', '0251136557');
INSERT INTO employee VALUES(84, 'Ao Hùng Linh', '1991-07-15 00:00:00', 'Việt Nam', '164359677', '0290618602');
INSERT INTO employee VALUES(85, 'Đoàn Bảo Quốc', '1981-08-30 00:00:00', 'Việt Nam', '799626782', '0250967373');
INSERT INTO employee VALUES(86, 'Đường Công Truyền', '1980-10-28 00:00:00', 'Việt Nam', '426828219', '0635608440');
INSERT INTO employee VALUES(87, 'Phạm Quốc Hòa', '1990-11-03 00:00:00', 'Việt Nam', '369051468', '0714206228');
INSERT INTO employee VALUES(88, 'Lê Thúc Định', '1987-02-20 00:00:00', 'Việt Nam', '975346943', '0884538063');
INSERT INTO employee VALUES(89, 'Diệp Bảo Trí', '1982-08-16 00:00:00', 'Việt Nam', '280031486', '0600131944');
INSERT INTO employee VALUES(90, 'Nguyễn Hữu Quân', '1993-03-19 00:00:00', 'Việt Nam', '563461639', '0495946750');
INSERT INTO employee VALUES(91, 'Hoàng Long Vương', '1991-01-02 00:00:00', 'Việt Nam', '417408663', '0147590764');
INSERT INTO employee VALUES(92, 'Võ Văn Cương', '1984-06-12 00:00:00', 'Việt Nam', '892742973', '0496048903');
INSERT INTO employee VALUES(93, 'Trịnh Văn Chơn', '1984-12-31 00:00:00', 'Việt Nam', '479647306', '0581663924');
INSERT INTO employee VALUES(94, 'Bùi Quốc Duy', '1986-10-11 00:00:00', 'Việt Nam', '337802416', '0938722029');
INSERT INTO employee VALUES(95, 'Nguyễn Trường Giang', '1989-01-22 00:00:00', 'Việt Nam', '890597584', '0954362244');
INSERT INTO employee VALUES(96, 'Nguyễn Thị Hà', '1988-01-26 00:00:00', 'Việt Nam', '937627660', '0837697438');
INSERT INTO employee VALUES(97, 'Nguyễn Ngọc Hoan', '1984-04-09 00:00:00', 'Việt Nam', '210133699', '0302388335');
INSERT INTO employee VALUES(98, 'Phạm Thị Thu', '1984-06-01 00:00:00', 'Việt Nam', '875190985', '0432325864');
INSERT INTO employee VALUES(99, 'Vũ Đình Phong', '1981-04-22 00:00:00', 'Việt Nam', '379045307', '0453643482');
INSERT INTO employee VALUES(100, 'Phạm Văn Minh', '1991-12-25 00:00:00', 'Việt Nam', '575607063', '0427627835');
INSERT INTO employee VALUES(101, 'Nguyễn Trung Dũng', '1982-09-03 00:00:00', 'Việt Nam', '483076009', '0812498772');
INSERT INTO employee VALUES(102, 'Phan Văn Toản', '1991-02-01 00:00:00', 'Việt Nam', '578658655', '0807460980');
INSERT INTO employee VALUES(103, 'Nguyễn Hữu Phước', '1980-09-14 00:00:00', 'Việt Nam', '956019025', '0929688166');
INSERT INTO employee VALUES(104, 'Nguyễn Chí Trung', '1994-12-14 00:00:00', 'Việt Nam', '587530562', '0179233027');
INSERT INTO employee VALUES(105, 'Hoàng Công Học', '1985-10-13 00:00:00', 'Việt Nam', '930325354', '0360941968');
INSERT INTO employee VALUES(106, 'Vũ Quang Vinh', '1987-08-27 00:00:00', 'Việt Nam', '125944820', '0454301646');
INSERT INTO employee VALUES(107, 'Trần Tuấn Kiệt', '1992-04-26 00:00:00', 'Việt Nam', '886079580', '0506008617');
INSERT INTO employee VALUES(108, 'Nguyễn Thành Nga', '1987-11-14 00:00:00', 'Việt Nam', '752555074', '0871813673');
INSERT INTO employee VALUES(109, 'Bùi Duy Trí', '1985-08-02 00:00:00', 'Việt Nam', '596141086', '0601383419');
INSERT INTO employee VALUES(110, 'Ngô Văn Cường', '1991-01-19 00:00:00', 'Việt Nam', '131675978', '0843657421');
INSERT INTO employee VALUES(111, 'Trần Công Hùng', '1990-01-21 00:00:00', 'Việt Nam', '322019573', '0241567302');
INSERT INTO employee VALUES(112, 'Nguyễn Thanh Điểu', '1991-09-07 00:00:00', 'Việt Nam', '185400066', '0392792863');
INSERT INTO employee VALUES(113, 'Nguyễn Tiến Dũng', '1992-06-14 00:00:00', 'Việt Nam', '211401668', '0736430645');
INSERT INTO employee VALUES(114, 'Nguyễn Văn Biên', '1980-08-13 00:00:00', 'Việt Nam', '762855787', '0646549373');
INSERT INTO employee VALUES(115, 'Lâm Thanh Danh', '1994-08-07 00:00:00', 'Việt Nam', '739058356', '0918998849');
INSERT INTO employee VALUES(116, 'Nguyễn Văn Lục', '1992-02-17 00:00:00', 'Việt Nam', '634424683', '0587701878');
INSERT INTO employee VALUES(117, 'Nguyễn Huỳnh Hòa', '1980-07-03 00:00:00', 'Việt Nam', '887257820', '0942324453');
INSERT INTO employee VALUES(118, 'Lê Thanh Danh', '1989-06-26 00:00:00', 'Việt Nam', '623287381', '0701643787');
INSERT INTO employee VALUES(119, 'Nguyễn Đức Nam', '1991-03-21 00:00:00', 'Việt Nam', '248072715', '0438237651');
INSERT INTO employee VALUES(120, 'Nguyễn Thanh Nam', '1985-11-01 00:00:00', 'Việt Nam', '349713338', '0321337932');
INSERT INTO employee VALUES(121, 'Trần Thế Văn', '1980-04-25 00:00:00', 'Việt Nam', '515235694', '0848050502');
INSERT INTO employee VALUES(122, 'Dương Đề Tài', '1987-01-26 00:00:00', 'Việt Nam', '601290816', '0800194966');
INSERT INTO employee VALUES(123, 'Võ Quốc Thắng', '1980-09-25 00:00:00', 'Việt Nam', '412202650', '0286568726');
INSERT INTO employee VALUES(124, 'Trần Trọng Nhân', '1982-04-23 00:00:00', 'Việt Nam', '697098086', '0342892284');
INSERT INTO employee VALUES(125, 'Đặng Hoàng Minh', '1980-03-12 00:00:00', 'Việt Nam', '340465228', '0308479477');
INSERT INTO employee VALUES(126, 'Trần Minh Hiến', '1985-05-10 00:00:00', 'Việt Nam', '111367239', '0305930672');
INSERT INTO employee VALUES(127, 'Nguyễn Thúy Nga', '1981-02-17 00:00:00', 'Việt Nam', '253099924', '0972329132');
INSERT INTO employee VALUES(128, 'Trần Quang Thịnh', '1989-05-05 00:00:00', 'Việt Nam', '445192991', '0636385309');
INSERT INTO employee VALUES(129, 'Bùi Anh Phi', '1989-06-07 00:00:00', 'Việt Nam', '345725927', '0808661207');
INSERT INTO employee VALUES(130, 'Đinh Văn Bằng', '1994-04-26 00:00:00', 'Việt Nam', '711339163', '0310772225');
INSERT INTO employee VALUES(131, 'Đặng Văn Ánh', '1994-02-15 00:00:00', 'Việt Nam', '331685855', '0523420096');
INSERT INTO employee VALUES(132, 'Châu Ngọc Lê', '1980-06-30 00:00:00', 'Việt Nam', '747578466', '0201325317');
INSERT INTO employee VALUES(133, 'Nguyễn Thị Mỹ Hạnh', '1987-04-09 00:00:00', 'Việt Nam', '685606465', '0616269030');
INSERT INTO employee VALUES(134, 'Hồ Thị Bạch Phương', '1986-03-29 00:00:00', 'Việt Nam', '487143898', '0313327756');
INSERT INTO employee VALUES(135, 'Phạm Thanh Tuấn', '1984-09-09 00:00:00', 'Việt Nam', '422155034', '0955572485');
INSERT INTO employee VALUES(136, 'Mai Tiến Hậu', '1985-03-19 00:00:00', 'Việt Nam', '525723709', '0195812656');
INSERT INTO employee VALUES(137, 'Nguyễn Văn Thanh Tiến', '1985-09-06 00:00:00', 'Việt Nam', '556044552', '0443911380');
INSERT INTO employee VALUES(138, 'Nguyễn Thị Mỹ Dung', '1989-07-04 00:00:00', 'Việt Nam', '695387764', '0696092705');
INSERT INTO employee VALUES(139, 'Phạm Thị Nhẹ', '1990-03-25 00:00:00', 'Việt Nam', '753535956', '0999820833');
INSERT INTO employee VALUES(140, 'Vũ Văn Bộ', '1987-02-09 00:00:00', 'Việt Nam', '893647708', '0655235916');
INSERT INTO employee VALUES(141, 'Nguyễn Hoàng Việt', '1982-11-03 00:00:00', 'Việt Nam', '647773941', '0283584989');
INSERT INTO employee VALUES(142, 'Hoàng Kim Phước', '1980-07-28 00:00:00', 'Việt Nam', '809660089', '0446835942');
INSERT INTO employee VALUES(143, 'Nguyễn Trường Sa', '1985-09-07 00:00:00', 'Việt Nam', '591695782', '0101608926');
INSERT INTO employee VALUES(144, 'Nguyễn Đình Luật', '1983-09-17 00:00:00', 'Việt Nam', '303740478', '0517948952');
INSERT INTO employee VALUES(145, 'Bùi Văn Hát', '1981-05-12 00:00:00', 'Việt Nam', '210424941', '0641597778');
INSERT INTO employee VALUES(146, 'Hồ Thị Nguyệt Thanh', '1992-12-06 00:00:00', 'Việt Nam', '238474287', '0172235304');
INSERT INTO employee VALUES(147, 'Lê Ngọc Diệp', '1987-09-14 00:00:00', 'Việt Nam', '378302416', '0743290252');
INSERT INTO employee VALUES(148, 'Lê Thị Thiên Phước', '1981-12-16 00:00:00', 'Việt Nam', '473337568', '0946460142');
INSERT INTO employee VALUES(149, 'Lê Văn Cần', '1987-07-30 00:00:00', 'Việt Nam', '685426915', '0868741552');
INSERT INTO employee VALUES(150, 'Nguyễn Hùng Khanh', '1994-12-05 00:00:00', 'Việt Nam', '403974897', '0634051438');
INSERT INTO employee VALUES(151, 'Nguyễn Thị Bích Thủy', '1987-04-15 00:00:00', 'Việt Nam', '536768305', '0939020090');
INSERT INTO employee VALUES(152, 'Nguyễn Văn Nam', '1987-09-25 00:00:00', 'Việt Nam', '323464880', '0700950987');
INSERT INTO employee VALUES(153, 'Nguyễn Văn Nha', '1991-12-07 00:00:00', 'Việt Nam', '944210347', '0981011100');
INSERT INTO employee VALUES(154, 'Nguyễn Xuân Hồng', '1991-11-02 00:00:00', 'Việt Nam', '790055024', '0489333484');
INSERT INTO employee VALUES(155, 'Phạm Thị Thu', '1988-12-29 00:00:00', 'Việt Nam', '464207774', '0284821859');
INSERT INTO employee VALUES(156, 'Phan Xuân Chương', '1985-03-25 00:00:00', 'Việt Nam', '359270573', '0211012513');
INSERT INTO employee VALUES(157, 'Quách Thị Tố Nữ', '1983-02-24 00:00:00', 'Việt Nam', '787004091', '0628937489');
INSERT INTO employee VALUES(158, 'Trần Anh Tuấn', '1992-01-19 00:00:00', 'Việt Nam', '666960618', '0120645041');
INSERT INTO employee VALUES(159, 'Trần Thị Xuân Thủy', '1980-04-02 00:00:00', 'Việt Nam', '429070136', '0898180737');
INSERT INTO employee VALUES(160, 'Đặng Hoàng Mai', '1980-07-12 00:00:00', 'Việt Nam', '715373019', '0726640872');
INSERT INTO employee VALUES(161, 'Đỗ Thị Kim Hiếu', '1986-08-27 00:00:00', 'Việt Nam', '378015432', '0343091519');
INSERT INTO employee VALUES(162, 'Đỗ Đăng Khôi', '1991-03-05 00:00:00', 'Việt Nam', '861927739', '0710796117');
INSERT INTO employee VALUES(163, 'Đoàn Phan Phương Dung', '1993-03-11 00:00:00', 'Việt Nam', '682036745', '0424780416');
INSERT INTO employee VALUES(164, 'Trần Kiều Mỹ An', '1982-03-24 00:00:00', 'Việt Nam', '243173801', '0587553619');
INSERT INTO employee VALUES(165, 'Hồ Thị Hiền', '1982-07-15 00:00:00', 'Việt Nam', '630190118', '0614663034');
INSERT INTO employee VALUES(166, 'Hoàng Lê Thị Tuyết', '1982-12-16 00:00:00', 'Việt Nam', '883053469', '0650902897');
INSERT INTO employee VALUES(167, 'Lê Phạm Thiên Thư', '1986-12-14 00:00:00', 'Việt Nam', '702772303', '0172727269');
INSERT INTO employee VALUES(168, 'Lê Thị Thành Lập', '1993-09-13 00:00:00', 'Việt Nam', '743600251', '0353998428');
INSERT INTO employee VALUES(169, 'Lê Thị Thúy', '1982-08-24 00:00:00', 'Việt Nam', '588154892', '0582182894');
INSERT INTO employee VALUES(170, 'Nguyễn Lâm Ánh Dương', '1991-08-15 00:00:00', 'Việt Nam', '243780593', '0721011564');
INSERT INTO employee VALUES(171, 'Nguyễn Thị Diễm Thi', '1985-04-23 00:00:00', 'Việt Nam', '923084133', '0448851707');


-- Insert table lecturer
INSERT INTO lecturer VALUES(1, 1, 'Không', '3/31/2015', 'Tiến sĩ', '3/31/2015', 'Poland', 'Công nghệ thông tin', 'Khoa Công nghệ thông tin', 5);
INSERT INTO lecturer VALUES(2, 2, 'Không', '2/5/2015', 'Thạc sĩ', '2/5/2015', 'Russia', 'Khoa học máy tính', 'Khoa Công nghệ thông tin', 14);
INSERT INTO lecturer VALUES(3, 3, 'Không', '12/9/2012', 'Tiến sĩ', '12/9/2012', 'China', 'Hệ thống thông tin', 'Khoa Công nghệ thông tin', 5);
INSERT INTO lecturer VALUES(4, 4, 'Không', '3/21/2006', 'Thạc sĩ', '3/21/2006', 'Russia', 'Khoa học máy tính', 'Khoa Công nghệ thông tin', 1);
INSERT INTO lecturer VALUES(5, 5, 'Không', '7/16/2014', 'Thạc sĩ', '7/16/2014', 'Portugal', 'Công nghệ thông tin', 'Khoa Công nghệ thông tin', 7);
INSERT INTO lecturer VALUES(6, 6, 'Không', '5/8/2005', 'Thạc sĩ', '5/8/2005', 'Brazil', 'Khoa học máy tính', 'Khoa Công nghệ thông tin', 14);
INSERT INTO lecturer VALUES(7, 7, 'Không', '5/27/2011', 'Thạc sĩ', '5/27/2011', 'China', 'Hệ thống thông tin', 'Khoa Công nghệ thông tin', 10);
INSERT INTO lecturer VALUES(8, 8, 'Không', '11/5/2011', 'Thạc sĩ', '11/5/2011', 'Russia', 'Hệ thống thông tin', 'Khoa Công nghệ thông tin', 4);
INSERT INTO lecturer VALUES(9, 9, 'Không', '11/17/2006', 'Tiến sĩ', '11/17/2006', 'China', 'An toàn thông tin', 'Khoa Công nghệ thông tin', 9);
INSERT INTO lecturer VALUES(10, 10, 'Không', '11/14/2013', 'Thạc sĩ', '11/14/2013', 'Peru', 'Công nghệ thông tin', 'Khoa Công nghệ thông tin', 1);
INSERT INTO lecturer VALUES(11, 11, 'Không', '10/29/2007', 'Thạc sĩ', '10/29/2007', 'Philippines', 'Công nghệ thông tin', 'Khoa Công nghệ thông tin', 4);
INSERT INTO lecturer VALUES(12, 12, 'Không', '11/22/2014', 'Thạc sĩ', '11/22/2014', 'North Korea', 'Công nghệ thông tin', 'Khoa Công nghệ thông tin', 13);
INSERT INTO lecturer VALUES(13, 13, 'Không', '1/23/2017', 'Thạc sĩ', '1/23/2017', 'Brazil', 'Khoa học máy tính', 'Khoa Công nghệ thông tin', 7);
INSERT INTO lecturer VALUES(14, 14, 'Không', '11/21/2016', 'Thạc sĩ', '11/21/2016', 'China', 'An toàn thông tin', 'Khoa Công nghệ thông tin', 9);
INSERT INTO lecturer VALUES(15, 15, 'Phó giáo sư', '11/7/2017', 'Thạc sĩ', '11/7/2017', 'Poland', 'Khoa học máy tính', 'Khoa Công nghệ thông tin', 13);
INSERT INTO lecturer VALUES(16, 16, 'Phó giáo sư', '4/18/2006', 'Thạc sĩ', '4/18/2006', 'Indonesia', 'Công nghệ thông tin', 'Khoa Công nghệ thông tin', 5);
INSERT INTO lecturer VALUES(17, 17, 'Phó giáo sư', '8/24/2006', 'Thạc sĩ', '8/24/2006', 'Indonesia', 'An toàn thông tin', 'Khoa Công nghệ thông tin', 1);
INSERT INTO lecturer VALUES(18, 18, 'Không', '3/15/2007', 'Thạc sĩ', '3/15/2007', 'Poland', 'An toàn thông tin', 'Khoa Công nghệ thông tin', 8);
INSERT INTO lecturer VALUES(19, 19, 'Không', '5/23/2015', 'Thạc sĩ', '5/23/2015', 'France', 'Khoa học máy tính', 'Khoa Công nghệ thông tin', 7);
INSERT INTO lecturer VALUES(20, 20, 'Không', '1/30/2011', 'Thạc sĩ', '1/30/2011', 'China', 'Công nghệ thông tin', 'Khoa Công nghệ thông tin', 15);
INSERT INTO lecturer VALUES(21, 21, 'Không', '11/10/2006', 'Thạc sĩ', '11/10/2006', 'China', 'An toàn thông tin', 'Khoa Công nghệ thông tin', 2);
INSERT INTO lecturer VALUES(22, 22, 'Không', '7/23/2009', 'Thạc sĩ', '7/23/2009', 'China', 'Hệ thống thông tin', 'Khoa Công nghệ thông tin', 4);
INSERT INTO lecturer VALUES(23, 23, 'Không', '11/27/2009', 'Thạc sĩ', '11/27/2009', 'Indonesia', 'Công nghệ thông tin', 'Khoa Công nghệ thông tin', 2);
INSERT INTO lecturer VALUES(24, 24, 'Không', '9/17/2006', 'Thạc sĩ', '9/17/2006', 'Colombia', 'Hệ thống thông tin', 'Khoa Công nghệ thông tin', 6);
INSERT INTO lecturer VALUES(25, 25, 'Không', '6/30/2014', 'Thạc sĩ', '6/30/2014', 'Belarus', 'Công nghệ thông tin', 'Khoa Công nghệ thông tin', 5);
INSERT INTO lecturer VALUES(26, 26, 'Không', '10/29/2006', 'Thạc sĩ', '10/29/2006', 'Portugal', 'Khoa học máy tính', 'Khoa Công nghệ thông tin', 3);
INSERT INTO lecturer VALUES(27, 27, 'Không', '6/12/2012', 'Thạc sĩ', '6/12/2012', 'China', 'Công nghệ thông tin', 'Khoa Công nghệ thông tin', 8);
INSERT INTO lecturer VALUES(28, 28, 'Không', '7/26/2012', 'Tiến sĩ', '7/26/2012', 'Indonesia', 'Công nghệ thông tin', 'Khoa Công nghệ thông tin', 14);
INSERT INTO lecturer VALUES(29, 29, 'Không', '6/20/2013', 'Thạc sĩ', '6/20/2013', 'Indonesia', 'Hệ thống thông tin', 'Khoa Công nghệ thông tin', 3);
INSERT INTO lecturer VALUES(30, 30, 'Không', '12/29/2007', 'Thạc sĩ', '12/29/2007', 'China', 'Khoa học máy tính', 'Khoa Công nghệ thông tin', 8);
INSERT INTO lecturer VALUES(31, 31, 'Không', '5/25/2017', 'Thạc sĩ', '5/25/2017', 'China', 'Công nghệ thông tin', 'Khoa Công nghệ thông tin', 15);
INSERT INTO lecturer VALUES(32, 32, 'Không', '2/6/2013', 'Thạc sĩ', '2/6/2013', 'Zimbabwe', 'Hệ thống thông tin', 'Khoa Công nghệ thông tin', 15);
INSERT INTO lecturer VALUES(33, 33, 'Không', '9/14/2006', 'Thạc sĩ', '9/14/2006', 'China', 'An toàn thông tin', 'Khoa Công nghệ thông tin', 5);
INSERT INTO lecturer VALUES(34, 34, 'Không', '3/30/2008', 'Tiến sĩ', '3/30/2008', 'Belarus', 'An toàn thông tin', 'Khoa Công nghệ thông tin', 13);
INSERT INTO lecturer VALUES(35, 35, 'Phó giáo sư', '4/7/2014', 'Tiến sĩ', '4/7/2014', 'Trinidad and Tobago', 'An toàn thông tin', 'Khoa Công nghệ thông tin', 14);
INSERT INTO lecturer VALUES(36, 36, 'Không', '3/12/2017', 'Thạc sĩ', '3/12/2017', 'Argentina', 'Công nghệ thông tin', 'Khoa Công nghệ thông tin', 1);
INSERT INTO lecturer VALUES(37, 37, 'Không', '2/11/2010', 'Thạc sĩ', '2/11/2010', 'Russia', 'Khoa học máy tính', 'Khoa Công nghệ thông tin', 6);
INSERT INTO lecturer VALUES(38, 38, 'Không', '11/18/2007', 'Thạc sĩ', '11/18/2007', 'Croatia', 'Khoa học máy tính', 'Khoa Công nghệ thông tin', 6);
INSERT INTO lecturer VALUES(39, 39, 'Không', '1/16/2013', 'Thạc sĩ', '1/16/2013', 'Ireland', 'An toàn thông tin', 'Khoa Công nghệ thông tin', 13);
INSERT INTO lecturer VALUES(40, 40, 'Không', '10/2/2015', 'Cử nhân', '10/2/2015', 'Pakistan', 'Khoa học máy tính', 'Khoa Công nghệ thông tin', 8);
INSERT INTO lecturer VALUES(41, 41, 'Không', '7/23/2011', 'Thạc sĩ', '7/23/2011', 'China', 'Khoa học máy tính', 'Khoa Công nghệ thông tin', 5);
INSERT INTO lecturer VALUES(42, 42, 'Không', '6/7/2016', 'Thạc sĩ', '6/7/2016', 'Croatia', 'Hệ thống thông tin', 'Khoa Công nghệ thông tin', 1);
INSERT INTO lecturer VALUES(43, 43, 'Không', '12/8/2005', 'Thạc sĩ', '12/8/2005', 'France', 'Hệ thống thông tin', 'Khoa Công nghệ thông tin', 9);
INSERT INTO lecturer VALUES(44, 44, 'Phó giáo sư', '11/18/2012', 'Tiến sĩ', '11/18/2012', 'China', 'Khoa học máy tính', 'Khoa Công nghệ thông tin', 4);
INSERT INTO lecturer VALUES(45, 45, 'Không', '11/2/2005', 'Thạc sĩ', '11/2/2005', 'Czech Republic', 'Khoa học máy tính', 'Khoa Công nghệ thông tin', 3);
INSERT INTO lecturer VALUES(46, 46, 'Không', '2/3/2017', 'Thạc sĩ', '2/3/2017', 'Yemen', 'Hệ thống thông tin', 'Khoa Công nghệ thông tin', 6);
INSERT INTO lecturer VALUES(47, 47, 'Không', '3/31/2012', 'Thạc sĩ', '3/31/2012', 'Poland', 'Công nghệ thông tin', 'Khoa Công nghệ thông tin', 2);
INSERT INTO lecturer VALUES(48, 48, 'Không', '8/19/2005', 'Thạc sĩ', '8/19/2005', 'Ireland', 'Khoa học máy tính', 'Khoa Công nghệ thông tin', 5);
INSERT INTO lecturer VALUES(49, 49, 'Không', '4/13/2015', 'Thạc sĩ', '4/13/2015', 'Indonesia', 'An toàn thông tin', 'Khoa Công nghệ thông tin', 3);
INSERT INTO lecturer VALUES(50, 50, 'Không', '9/26/2016', 'Thạc sĩ', '9/26/2016', 'Haiti', 'Khoa học máy tính', 'Khoa Công nghệ thông tin', 8);
INSERT INTO lecturer VALUES(51, 51, 'Không', '9/16/2009', 'Thạc sĩ', '9/16/2009', 'China', 'Công nghệ thông tin', 'Khoa Công nghệ thông tin', 11);
INSERT INTO lecturer VALUES(52, 52, 'Không', '3/21/2016', 'Thạc sĩ', '3/21/2016', 'Bosnia and Herzegovina', 'Hệ thống thông tin', 'Khoa Công nghệ thông tin', 12);
INSERT INTO lecturer VALUES(53, 53, 'Không', '2/2/2013', 'Thạc sĩ', '2/2/2013', 'Brazil', 'An toàn thông tin', 'Khoa Công nghệ thông tin', 7);
INSERT INTO lecturer VALUES(54, 54, 'Không', '7/16/2010', 'Thạc sĩ', '7/16/2010', 'China', 'An toàn thông tin', 'Khoa Công nghệ thông tin', 11);
INSERT INTO lecturer VALUES(55, 55, 'Không', '11/7/2015', 'Cử nhân', '11/7/2015', 'Czech Republic', 'Công nghệ thông tin', 'Khoa Công nghệ thông tin', 11);
INSERT INTO lecturer VALUES(56, 56, 'Không', '3/3/2010', 'Thạc sĩ', '3/3/2010', 'Dominican Republic', 'Hệ thống thông tin', 'Khoa Công nghệ thông tin', 3);
INSERT INTO lecturer VALUES(57, 57, 'Không', '10/27/2012', 'Thạc sĩ', '10/27/2012', 'Spain', 'Khoa học máy tính', 'Khoa Công nghệ thông tin', 3);
INSERT INTO lecturer VALUES(58, 58, 'Không', '1/16/2008', 'Thạc sĩ', '1/16/2008', 'China', 'Hệ thống thông tin', 'Khoa Công nghệ thông tin', 11);
INSERT INTO lecturer VALUES(59, 59, 'Không', '3/15/2018', 'Thạc sĩ', '3/15/2018', 'Brazil', 'Hệ thống thông tin', 'Khoa Công nghệ thông tin', 15);
INSERT INTO lecturer VALUES(60, 60, 'Không', '5/29/2008', 'Thạc sĩ', '5/29/2008', 'Zambia', 'An toàn thông tin', 'Khoa Công nghệ thông tin', 6);
INSERT INTO lecturer VALUES(61, 61, 'Không', '11/12/2011', 'Thạc sĩ', '11/12/2011', 'Indonesia', 'Toán siêu cấp', 'Khoa Cơ bản', 3);
INSERT INTO lecturer VALUES(62, 62, 'Không', '10/20/2016', 'Thạc sĩ', '10/20/2016', 'Portugal', 'Lịch sử Việt Nam', 'Khoa Lý luận chính trị', 7);
INSERT INTO lecturer VALUES(63, 63, 'Không', '1/9/2008', 'Tiến sĩ', '1/9/2008', 'China', 'Lý luận học', 'Khoa Cơ bản', 5);
INSERT INTO lecturer VALUES(64, 64, 'Không', '7/21/2016', 'Thạc sĩ', '7/21/2016', 'Brazil', 'Quản lý giáo dục', 'Khoa Cơ bản', 14);
INSERT INTO lecturer VALUES(65, 65, 'Không', '7/25/2017', 'Thạc sĩ', '7/25/2017', 'Mongolia', 'Văn học Việt Nam', 'Khoa Cơ bản', 2);
INSERT INTO lecturer VALUES(66, 66, 'Không', '3/23/2017', 'Thạc sĩ', '3/23/2017', 'Indonesia', 'Ngôn ngữ Anh', 'Khoa Ngoại ngữ', 5);
INSERT INTO lecturer VALUES(67, 67, 'Không', '11/2/2008', 'Thạc sĩ', '11/2/2008', 'United States', 'Ngôn ngữ Nhật', 'Khoa Ngoại ngữ', 1);
INSERT INTO lecturer VALUES(68, 68, 'Phó giáo sư', '2/7/2009', 'Thạc sĩ', '2/7/2009', 'Indonesia', 'Ngôn ngữ Nhật', 'Khoa Ngoại ngữ', 7);
INSERT INTO lecturer VALUES(69, 69, 'Không', '6/11/2015', 'Thạc sĩ', '6/11/2015', 'Indonesia', 'Toán siêu cấp', 'Khoa Cơ bản', 4);
INSERT INTO lecturer VALUES(70, 70, 'Phó giáo sư', '9/4/2006', 'Thạc sĩ', '9/4/2006', 'Indonesia', 'Ngôn ngữ Nhật', 'Khoa Ngoại ngữ', 12);
INSERT INTO lecturer VALUES(71, 71, 'Không', '12/8/2007', 'Thạc sĩ', '12/8/2007', 'United Kingdom', 'Kinh tế chính trị', 'Khoa Lý luận chính trị', 2);
INSERT INTO lecturer VALUES(72, 72, 'Không', '1/8/2009', 'Thạc sĩ', '1/8/2009', 'China', 'Lý luận học', 'Khoa Cơ bản', 13);
INSERT INTO lecturer VALUES(73, 73, 'Không', '4/7/2006', 'Thạc sĩ', '4/7/2006', 'Colombia', 'Ngôn ngữ Trung', 'Khoa Ngoại ngữ', 4);
INSERT INTO lecturer VALUES(74, 74, 'Không', '1/27/2010', 'Thạc sĩ', '1/27/2010', 'Saudi Arabia', 'Lịch sử Việt Nam', 'Khoa Lý luận chính trị', 5);
INSERT INTO lecturer VALUES(75, 75, 'Không', '11/25/2010', 'Thạc sĩ', '11/25/2010', 'Russia', 'Lịch sử Đảng', 'Khoa Lý luận chính trị', 9);
INSERT INTO lecturer VALUES(76, 76, 'Phó giáo sư', '7/13/2010', 'Thạc sĩ', '7/13/2010', 'China', 'Ngôn ngữ Nhật', 'Khoa Ngoại ngữ', 9);
INSERT INTO lecturer VALUES(77, 77, 'Không', '8/8/2017', 'Thạc sĩ', '8/8/2017', 'South Korea', 'Văn học Việt Nam', 'Khoa Cơ bản', 9);
INSERT INTO lecturer VALUES(78, 78, 'Không', '10/2/2005', 'Thạc sĩ', '10/2/2005', 'Philippines', 'Ngôn ngữ Nhật', 'Khoa Ngoại ngữ', 6);
INSERT INTO lecturer VALUES(79, 79, 'Không', '9/2/2011', 'Thạc sĩ', '9/2/2011', 'Nepal', 'Ngôn ngữ Nhật', 'Khoa Ngoại ngữ', 10);
INSERT INTO lecturer VALUES(80, 80, 'Không', '1/13/2014', 'Thạc sĩ', '1/13/2014', 'China', 'Ngôn ngữ Nhật', 'Khoa Ngoại ngữ', 6);
INSERT INTO lecturer VALUES(81, 81, 'Không', '4/12/2014', 'Thạc sĩ', '4/12/2014', 'Russia', 'Quản lý giáo dục', 'Khoa Cơ bản', 5);
INSERT INTO lecturer VALUES(82, 82, 'Không', '12/21/2011', 'Thạc sĩ', '12/21/2011', 'Cuba', 'Toán siêu cấp', 'Khoa Cơ bản', 6);
INSERT INTO lecturer VALUES(83, 83, 'Phó giáo sư', '5/10/2009', 'Thạc sĩ', '5/10/2009', 'Czech Republic', 'Văn học Việt Nam', 'Khoa Cơ bản', 6);
INSERT INTO lecturer VALUES(84, 84, 'Không', '1/21/2006', 'Thạc sĩ', '1/21/2006', 'Somalia', 'Ngôn ngữ Pháp', 'Khoa Ngoại ngữ', 3);
INSERT INTO lecturer VALUES(85, 85, 'Không', '6/25/2006', 'Tiến sĩ', '6/25/2006', 'China', 'Toán siêu cấp', 'Khoa Cơ bản', 5);
INSERT INTO lecturer VALUES(86, 86, 'Không', '9/20/2015', 'Thạc sĩ', '9/20/2015', 'Serbia', 'Văn học Việt Nam', 'Khoa Cơ bản', 15);
INSERT INTO lecturer VALUES(87, 87, 'Không', '11/22/2012', 'Thạc sĩ', '11/22/2012', 'China', 'Văn học Việt Nam', 'Khoa Cơ bản', 2);
INSERT INTO lecturer VALUES(88, 88, 'Phó giáo sư', '1/9/2014', 'Cử nhân', '1/9/2014', 'Portugal', 'Kinh tế chính trị', 'Khoa Lý luận chính trị', 11);
INSERT INTO lecturer VALUES(89, 89, 'Không', '9/24/2017', 'Thạc sĩ', '9/24/2017', 'Ethiopia', 'Lịch sử Đảng', 'Khoa Lý luận chính trị', 12);
INSERT INTO lecturer VALUES(90, 90, 'Không', '12/20/2011', 'Thạc sĩ', '12/20/2011', 'Colombia', 'Lịch sử Đảng', 'Khoa Lý luận chính trị', 12);
INSERT INTO lecturer VALUES(91, 91, 'Không', '5/15/2006', 'Thạc sĩ', '5/15/2006', 'Egypt', 'Quản lý giáo dục', 'Khoa Cơ bản', 1);
INSERT INTO lecturer VALUES(92, 92, 'Không', '2/27/2010', 'Tiến sĩ', '2/27/2010', 'Russia', 'Kinh tế chính trị', 'Khoa Lý luận chính trị', 8);
INSERT INTO lecturer VALUES(93, 93, 'Không', '7/12/2015', 'Thạc sĩ', '7/12/2015', 'Brazil', 'Ngôn ngữ Nhật', 'Khoa Ngoại ngữ', 11);
INSERT INTO lecturer VALUES(94, 94, 'Không', '1/3/2012', 'Thạc sĩ', '1/3/2012', 'Russia', 'Ngôn ngữ Nhật', 'Khoa Ngoại ngữ', 10);
INSERT INTO lecturer VALUES(95, 95, 'Không', '11/4/2013', 'Thạc sĩ', '11/4/2013', 'Kyrgyzstan', 'Quản lý giáo dục', 'Khoa Cơ bản', 3);
INSERT INTO lecturer VALUES(96, 96, 'Không', '7/25/2014', 'Thạc sĩ', '7/25/2014', 'Philippines', 'Lý luận học', 'Khoa Cơ bản', 10);
INSERT INTO lecturer VALUES(97, 97, 'Không', '2/10/2018', 'Thạc sĩ', '2/10/2018', 'China', 'Tư tưởng Hồ Chí Minh', 'Khoa Lý luận chính trị', 11);
INSERT INTO lecturer VALUES(98, 98, 'Phó giáo sư', '1/1/2010', 'Tiến sĩ', '1/1/2010', 'Russia', 'Ngôn ngữ Anh', 'Khoa Ngoại ngữ', 1);
INSERT INTO lecturer VALUES(99, 99, 'Không', '11/9/2009', 'Thạc sĩ', '11/9/2009', 'Thailand', 'Quản lý giáo dục', 'Khoa Cơ bản', 13);
INSERT INTO lecturer VALUES(100, 100, 'Giáo sư', '6/11/2017', 'Cử nhân', '6/11/2017', 'Vietnam', 'Lý luận học', 'Khoa Cơ bản', 1);
INSERT INTO lecturer VALUES(101, 101, 'Không', '10/6/2012', 'Thạc sĩ', '10/6/2012', 'China', 'Tư tưởng Hồ Chí Minh', 'Khoa Lý luận chính trị', 14);
INSERT INTO lecturer VALUES(102, 102, 'Không', '3/29/2017', 'Thạc sĩ', '3/29/2017', 'Costa Rica', 'Lịch sử Việt Nam', 'Khoa Lý luận chính trị', 2);
INSERT INTO lecturer VALUES(103, 103, 'Không', '1/12/2016', 'Cử nhân', '1/12/2016', 'China', 'Ngôn ngữ Anh', 'Khoa Ngoại ngữ', 9);
INSERT INTO lecturer VALUES(104, 104, 'Không', '7/5/2009', 'Thạc sĩ', '7/5/2009', 'Yemen', 'Lịch sử Việt Nam', 'Khoa Lý luận chính trị', 14);
INSERT INTO lecturer VALUES(105, 105, 'Không', '9/3/2016', 'Thạc sĩ', '9/3/2016', 'Poland', 'Ngôn ngữ Anh', 'Khoa Ngoại ngữ', 7);
INSERT INTO lecturer VALUES(106, 106, 'Không', '5/25/2008', 'Thạc sĩ', '5/25/2008', 'China', 'Kinh tế chính trị', 'Khoa Lý luận chính trị', 8);
INSERT INTO lecturer VALUES(107, 107, 'Không', '5/18/2007', 'Thạc sĩ', '5/18/2007', 'Malaysia', 'Ngôn ngữ Nhật', 'Khoa Ngoại ngữ', 3);
INSERT INTO lecturer VALUES(108, 108, 'Không', '9/25/2015', 'Thạc sĩ', '9/25/2015', 'Indonesia', 'Lịch sử Đảng', 'Khoa Lý luận chính trị', 9);
INSERT INTO lecturer VALUES(109, 109, 'Không', '3/3/2008', 'Thạc sĩ', '3/3/2008', 'China', 'Ngôn ngữ Trung', 'Khoa Ngoại ngữ', 8);
INSERT INTO lecturer VALUES(110, 110, 'Không', '6/13/2007', 'Thạc sĩ', '6/13/2007', 'Mozambique', 'Lịch sử Đảng', 'Khoa Lý luận chính trị', 3);
INSERT INTO lecturer VALUES(111, 111, 'Không', '2/18/2011', 'Thạc sĩ', '2/18/2011', 'Peru', 'Lý luận học', 'Khoa Cơ bản', 11);
INSERT INTO lecturer VALUES(112, 112, 'Không', '12/16/2017', 'Thạc sĩ', '12/16/2017', 'Bulgaria', 'Quản lý giáo dục', 'Khoa Cơ bản', 13);
INSERT INTO lecturer VALUES(113, 113, 'Không', '1/10/2016', 'Tiến sĩ', '1/10/2016', 'China', 'Ngôn ngữ Pháp', 'Khoa Ngoại ngữ', 4);
INSERT INTO lecturer VALUES(114, 114, 'Không', '6/5/2009', 'Thạc sĩ', '6/5/2009', 'Brazil', 'Tư tưởng Hồ Chí Minh', 'Khoa Lý luận chính trị', 4);
INSERT INTO lecturer VALUES(115, 115, 'Không', '9/21/2016', 'Thạc sĩ', '9/21/2016', 'France', 'Kinh tế chính trị', 'Khoa Lý luận chính trị', 8);
INSERT INTO lecturer VALUES(116, 116, 'Không', '6/20/2014', 'Cử nhân', '6/20/2014', 'Colombia', 'Ngôn ngữ Pháp', 'Khoa Ngoại ngữ', 14);
INSERT INTO lecturer VALUES(117, 117, 'Không', '12/6/2017', 'Thạc sĩ', '12/6/2017', 'Pakistan', 'Kinh tế chính trị', 'Khoa Lý luận chính trị', 6);
INSERT INTO lecturer VALUES(118, 118, 'Không', '2/27/2006', 'Thạc sĩ', '2/27/2006', 'France', 'Quản lý giáo dục', 'Khoa Cơ bản', 15);
INSERT INTO lecturer VALUES(119, 119, 'Không', '7/16/2009', 'Thạc sĩ', '7/16/2009', 'Indonesia', 'Ngôn ngữ Anh', 'Khoa Ngoại ngữ', 9);
INSERT INTO lecturer VALUES(120, 120, 'Không', '12/21/2011', 'Thạc sĩ', '12/21/2011', 'Nicaragua', 'Ngôn ngữ Pháp', 'Khoa Ngoại ngữ', 3);
INSERT INTO lecturer VALUES(121, 121, 'Không', '8/4/2013', 'Thạc sĩ', '8/4/2013', 'Trinidad and Tobago', 'Văn học Việt Nam', 'Khoa Cơ bản', 5);
INSERT INTO lecturer VALUES(122, 122, 'Không', '9/2/2016', 'Thạc sĩ', '9/2/2016', 'Canada', 'Quản lý giáo dục', 'Khoa Cơ bản', 14);
INSERT INTO lecturer VALUES(123, 123, 'Không', '5/6/2017', 'Thạc sĩ', '5/6/2017', 'France', 'Văn học Việt Nam', 'Khoa Cơ bản', 9);
INSERT INTO lecturer VALUES(124, 124, 'Không', '11/16/2014', 'Thạc sĩ', '11/16/2014', 'Sweden', 'Ngôn ngữ Trung', 'Khoa Ngoại ngữ', 15);
INSERT INTO lecturer VALUES(125, 125, 'Không', '5/4/2015', 'Thạc sĩ', '5/4/2015', 'Equatorial Guinea', 'Toán siêu cấp', 'Khoa Cơ bản', 3);
INSERT INTO lecturer VALUES(126, 126, 'Không', '11/9/2015', 'Tiến sĩ', '11/9/2015', 'Philippines', 'Quản lý giáo dục', 'Khoa Cơ bản', 8);
INSERT INTO lecturer VALUES(127, 127, 'Phó giáo sư', '2/12/2017', 'Thạc sĩ', '2/12/2017', 'Indonesia', 'Ngôn ngữ Anh', 'Khoa Ngoại ngữ', 14);
INSERT INTO lecturer VALUES(128, 128, 'Không', '3/15/2010', 'Cử nhân', '3/15/2010', 'Indonesia', 'Văn học Việt Nam', 'Khoa Cơ bản', 10);
INSERT INTO lecturer VALUES(129, 129, 'Không', '1/17/2006', 'Cử nhân', '1/17/2006', 'Indonesia', 'Tư tưởng Hồ Chí Minh', 'Khoa Lý luận chính trị', 1);
INSERT INTO lecturer VALUES(130, 130, 'Không', '12/20/2005', 'Thạc sĩ', '12/20/2005', 'Uganda', 'Lý luận học', 'Khoa Cơ bản', 6);
INSERT INTO lecturer VALUES(131, 131, 'Không', '2/2/2012', 'Thạc sĩ', '2/2/2012', 'China', 'Lịch sử Đảng', 'Khoa Lý luận chính trị', 14);
INSERT INTO lecturer VALUES(132, 132, 'Không', '10/27/2006', 'Thạc sĩ', '10/27/2006', 'Indonesia', 'Tư tưởng Hồ Chí Minh', 'Khoa Lý luận chính trị', 4);
INSERT INTO lecturer VALUES(133, 133, 'Không', '8/5/2007', 'Tiến sĩ', '8/5/2007', 'Costa Rica', 'Kinh tế chính trị', 'Khoa Lý luận chính trị', 2);
INSERT INTO lecturer VALUES(134, 134, 'Không', '2/11/2007', 'Thạc sĩ', '2/11/2007', 'Kenya', 'Ngôn ngữ Trung', 'Khoa Ngoại ngữ', 15);
INSERT INTO lecturer VALUES(135, 135, 'Không', '4/8/2006', 'Thạc sĩ', '4/8/2006', 'Indonesia', 'Lý luận học', 'Khoa Cơ bản', 13);
INSERT INTO lecturer VALUES(136, 136, 'Không', '4/30/2014', 'Thạc sĩ', '4/30/2014', 'Indonesia', 'Ngôn ngữ Anh', 'Khoa Ngoại ngữ', 2);
INSERT INTO lecturer VALUES(137, 137, 'Không', '5/25/2017', 'Tiến sĩ', '5/25/2017', 'Brazil', 'Ngôn ngữ Pháp', 'Khoa Ngoại ngữ', 7);
INSERT INTO lecturer VALUES(138, 138, 'Không', '1/11/2007', 'Thạc sĩ', '1/11/2007', 'Colombia', 'Tư tưởng Hồ Chí Minh', 'Khoa Lý luận chính trị', 5);
INSERT INTO lecturer VALUES(139, 139, 'Không', '9/7/2009', 'Tiến sĩ', '9/7/2009', 'China', 'Ngôn ngữ Anh', 'Khoa Ngoại ngữ', 13);
INSERT INTO lecturer VALUES(140, 140, 'Không', '7/30/2014', 'Thạc sĩ', '7/30/2014', 'Czech Republic', 'Kinh tế chính trị', 'Khoa Lý luận chính trị', 2);
INSERT INTO lecturer VALUES(141, 141, 'Không', '2/14/2016', 'Thạc sĩ', '2/14/2016', 'Indonesia', 'Lịch sử Việt Nam', 'Khoa Lý luận chính trị', 15);
INSERT INTO lecturer VALUES(142, 142, 'Không', '2/23/2006', 'Tiến sĩ', '2/23/2006', 'Indonesia', 'Văn học Việt Nam', 'Khoa Cơ bản', 5);
INSERT INTO lecturer VALUES(143, 143, 'Không', '1/16/2010', 'Tiến sĩ', '1/16/2010', 'Venezuela', 'Tư tưởng Hồ Chí Minh', 'Khoa Lý luận chính trị', 11);
INSERT INTO lecturer VALUES(144, 144, 'Không', '5/22/2007', 'Thạc sĩ', '5/22/2007', 'Norway', 'Lý luận học', 'Khoa Cơ bản', 2);
INSERT INTO lecturer VALUES(145, 145, 'Không', '1/22/2013', 'Thạc sĩ', '1/22/2013', 'Philippines', 'Văn học Việt Nam', 'Khoa Cơ bản', 1);
INSERT INTO lecturer VALUES(146, 146, 'Không', '2/27/2013', 'Thạc sĩ', '2/27/2013', 'Libya', 'Lịch sử Đảng', 'Khoa Lý luận chính trị', 12);
INSERT INTO lecturer VALUES(147, 147, 'Không', '9/8/2012', 'Thạc sĩ', '9/8/2012', 'China', 'Văn học Việt Nam', 'Khoa Cơ bản', 13);
INSERT INTO lecturer VALUES(148, 148, 'Không', '1/9/2007', 'Thạc sĩ', '1/9/2007', 'France', 'Lịch sử Việt Nam', 'Khoa Lý luận chính trị', 3);
INSERT INTO lecturer VALUES(149, 149, 'Không', '3/30/2010', 'Thạc sĩ', '3/30/2010', 'Philippines', 'Lý luận học', 'Khoa Cơ bản', 13);
INSERT INTO lecturer VALUES(150, 150, 'Không', '2/12/2010', 'Thạc sĩ', '2/12/2010', 'Brazil', 'Quản lý giáo dục', 'Khoa Cơ bản', 9);
INSERT INTO lecturer VALUES(151, 151, 'Không', '3/9/2012', 'Thạc sĩ', '3/9/2012', 'Cambodia', 'Văn học Việt Nam', 'Khoa Cơ bản', 1);
INSERT INTO lecturer VALUES(152, 152, 'Không', '5/24/2011', 'Tiến sĩ', '5/24/2011', 'Japan', 'Ngôn ngữ Pháp', 'Khoa Ngoại ngữ', 15);
INSERT INTO lecturer VALUES(153, 153, 'Không', '6/2/2005', 'Thạc sĩ', '6/2/2005', 'Brazil', 'Lý luận học', 'Khoa Cơ bản', 12);
INSERT INTO lecturer VALUES(154, 154, 'Không', '10/4/2013', 'Thạc sĩ', '10/4/2013', 'Indonesia', 'Kinh tế chính trị', 'Khoa Lý luận chính trị', 7);
INSERT INTO lecturer VALUES(155, 155, 'Không', '1/17/2017', 'Thạc sĩ', '1/17/2017', 'China', 'Lịch sử Việt Nam', 'Khoa Lý luận chính trị', 8);
INSERT INTO lecturer VALUES(156, 156, 'Không', '4/22/2013', 'Thạc sĩ', '4/22/2013', 'Russia', 'Lý luận học', 'Khoa Cơ bản', 8);
INSERT INTO lecturer VALUES(157, 157, 'Không', '2/24/2013', 'Thạc sĩ', '2/24/2013', 'Russia', 'Ngôn ngữ Trung', 'Khoa Ngoại ngữ', 13);
INSERT INTO lecturer VALUES(158, 158, 'Không', '6/10/2006', 'Thạc sĩ', '6/10/2006', 'Sweden', 'Lịch sử Đảng', 'Khoa Lý luận chính trị', 1);
INSERT INTO lecturer VALUES(159, 159, 'Không', '10/22/2012', 'Thạc sĩ', '10/22/2012', 'China', 'Kinh tế chính trị', 'Khoa Lý luận chính trị', 5);
INSERT INTO lecturer VALUES(160, 160, 'Phó giáo sư', '11/22/2005', 'Thạc sĩ', '11/22/2005', 'Poland', 'Văn học Việt Nam', 'Khoa Cơ bản', 11);
INSERT INTO lecturer VALUES(161, 161, 'Không', '1/1/2013', 'Thạc sĩ', '1/1/2013', 'Croatia', 'Ngôn ngữ Trung', 'Khoa Ngoại ngữ', 1);
INSERT INTO lecturer VALUES(162, 162, 'Không', '4/28/2014', 'Tiến sĩ', '4/28/2014', 'Cameroon', 'Quản lý giáo dục', 'Khoa Cơ bản', 8);
INSERT INTO lecturer VALUES(163, 163, 'Không', '5/14/2007', 'Thạc sĩ', '5/14/2007', 'France', 'Lý luận học', 'Khoa Cơ bản', 12);
INSERT INTO lecturer VALUES(164, 164, 'Không', '6/29/2013', 'Thạc sĩ', '6/29/2013', 'China', 'Ngôn ngữ Nhật', 'Khoa Ngoại ngữ', 7);
INSERT INTO lecturer VALUES(165, 165, 'Không', '12/8/2010', 'Thạc sĩ', '12/8/2010', 'Philippines', 'Ngôn ngữ Nhật', 'Khoa Ngoại ngữ', 2);
INSERT INTO lecturer VALUES(166, 166, 'Không', '10/25/2011', 'Thạc sĩ', '10/25/2011', 'Philippines', 'Ngôn ngữ Nhật', 'Khoa Ngoại ngữ', 4);
INSERT INTO lecturer VALUES(167, 167, 'Phó giáo sư', '6/15/2010', 'Thạc sĩ', '6/15/2010', 'China', 'Văn học Việt Nam', 'Khoa Cơ bản', 1);
INSERT INTO lecturer VALUES(168, 168, 'Không', '10/21/2013', 'Thạc sĩ', '10/21/2013', 'Libya', 'Văn học Việt Nam', 'Khoa Cơ bản', 14);


-- Insert table course
INSERT INTO course VALUES(1, 35, 'Toán cao cấp 1', 2, 1, 2, 4);
INSERT INTO course VALUES(2, 166, 'Giáo dục thể chất 1', 2, 0, 4, 4);
INSERT INTO course VALUES(3, 91, 'Giáo dục Quốc phòng và An ninh 1', 4, 4, 0, 8);
INSERT INTO course VALUES(4, 48, 'Nhập môn Tin học', 2, 2, 0, 4);
INSERT INTO course VALUES(5, 132, 'Nhập môn Lập trình', 2, 0, 4, 4);
INSERT INTO course VALUES(6, 136, 'Những nguyên lý cơ bản của Chủ nghĩa Mác – Lênin', 5, 5, 0, 10);
INSERT INTO course VALUES(7, 58, 'Giáo dục quốc phòng và an ninh 2', 4, 2, 4, 8);
INSERT INTO course VALUES(8, 114, 'Toán cao cấp 2', 2, 1, 2, 4);
INSERT INTO course VALUES(9, 100, 'Giáo dục thể chất 2', 2, 4, 4, 5);
INSERT INTO course VALUES(10, 15, 'Kỹ năng làm việc nhóm', 2, 1, 2, 4);
INSERT INTO course VALUES(11, 72, 'Hệ thống Máy tính', 4, 3, 2, 8);
INSERT INTO course VALUES(12, 34, 'Kỹ thuật lập trình', 3, 2, 2, 6);
INSERT INTO course VALUES(13, 16, 'Tiếng anh 1', 3, 3, 0, 6);
INSERT INTO course VALUES(14, 34, 'Kỹ năng xây dựng kế hoạch', 3, 2, 2, 6);
INSERT INTO course VALUES(15, 91, 'Quản trị doanh nghiệp', 3, 3, 2, 8);
INSERT INTO course VALUES(16, 31, 'Kế toán cơ bản', 3, 3, 0, 6);
INSERT INTO course VALUES(17, 82, 'Môi trường và con người', 3, 1, 2, 4);
INSERT INTO course VALUES(18, 151, 'Quản trị học', 3, 3, 0, 6);
INSERT INTO course VALUES(19, 150, 'Giao tiếp kinh doanh', 3, 2, 2, 6);
INSERT INTO course VALUES(20, 150, 'Lập trình hướng đối tượng', 3, 2, 2, 6);
INSERT INTO course VALUES(21, 164, 'Cấu trúc dữ liệu và giải thuật', 4, 2, 2, 6);
INSERT INTO course VALUES(22, 68, 'Hệ cơ sở dữ liệu', 4, 2, 2, 4);
INSERT INTO course VALUES(23, 140, 'Cấu trúc rời rạc', 3, 2, 3, 4);
INSERT INTO course VALUES(24, 66, 'Xác suất trong Khoa học Dữ liệu', 2, 2, 3, 4);
INSERT INTO course VALUES(25, 109, 'Tiếng Anh 2', 3, 3, 3, 5);
INSERT INTO course VALUES(26, 8, 'Giải thuật và tối ưu hóa phân tán', 3, 3, 5, 8);
INSERT INTO course VALUES(27, 28, 'Trực quan hóa dữ liệu', 3, 2, 1, 5);
INSERT INTO course VALUES(28, 10, 'Đại số tuyến tính tính toán', 3, 3, 1, 4);
INSERT INTO course VALUES(29, 7, 'Pháp luật đại cương', 2, 2, 2, 4);
INSERT INTO course VALUES(30, 63, 'Thống kê máy tính và ứng dụng', 3, 1, 3, 4);
INSERT INTO course VALUES(31, 48, 'Mạng máy tính', 3, 3, 2, 4);
INSERT INTO course VALUES(32, 96, 'Nhập môn Khoa học Dữ liệu', 3, 3, 3, 5);
INSERT INTO course VALUES(33, 40, 'Phương pháp luận nghiên cứu khoa học', 2, 2, 0, 4);
INSERT INTO course VALUES(34, 74, 'Lập trình phân tích dữ liệu', 3, 3, 0, 5);
INSERT INTO course VALUES(35, 80, 'Logic học', 3, 2, 0, 5);
INSERT INTO course VALUES(36, 61, 'Phương pháp tính', 3, 3, 4, 5);
INSERT INTO course VALUES(37, 137, 'Vật lý đại cương', 3, 3, 3, 2);
INSERT INTO course VALUES(38, 99, 'Toán ứng dụng', 3, 2, 4, 5);
INSERT INTO course VALUES(39, 150, 'Hàm phức và phép biến đổi Laplace', 3, 3, 4, 7);
INSERT INTO course VALUES(40, 114, 'Quá trình ngẫu nhiên', 2, 2, 0, 5);
INSERT INTO course VALUES(41, 121, 'Các ngôn ngữ truy vấn cơ sở dữ liệu', 2, 1, 1, 5);
INSERT INTO course VALUES(42, 112, 'Kiến trúc hướng dịch vụ và Điện toán đám mây', 2, 1, 1, 3);
INSERT INTO course VALUES(43, 137, 'Máy học', 3, 2, 5, 5);
INSERT INTO course VALUES(44, 159, 'Tối ưu hóa cho Khoa học dữ liệu', 3, 3, 4, 4);
INSERT INTO course VALUES(45, 55, 'Khai thác dữ liệu và ứng dụng', 3, 2, 4, 5);
INSERT INTO course VALUES(46, 77, 'Những vấn đề xã hội và đạo đức nghề nghiệp', 3, 3, 0, 5);
INSERT INTO course VALUES(47, 26, 'Phát triển ứng dụng', 3, 3, 3, 8);
INSERT INTO course VALUES(48, 127, 'Phân tích chuỗi thời gian', 3, 3, 0, 5);
INSERT INTO course VALUES(49, 9, 'Xử lý ảnh', 3, 2, 2, 5);
INSERT INTO course VALUES(50, 29, 'Kỹ thuật tài chính', 3, 3, 1, 3);
INSERT INTO course VALUES(51, 149, 'Tư tưởng Hồ Chí Minh', 2, 1, 2, 2);
INSERT INTO course VALUES(52, 113, 'Xử lý ngôn ngữ tự nhiên', 3, 1, 0, 4);
INSERT INTO course VALUES(53, 51, 'Nhập môn dữ liệu lớn', 3, 3, 4, 4);
INSERT INTO course VALUES(54, 131, 'Nhập môn Robot', 3, 2, 1, 5);
INSERT INTO course VALUES(55, 46, 'Tiếp thị điện tử', 3, 3, 3, 5);
INSERT INTO course VALUES(56, 9, 'Tương tác người máy', 3, 3, 2, 5);
INSERT INTO course VALUES(57, 161, 'Giao dịch định lượng', 3, 2, 1, 5);
INSERT INTO course VALUES(58, 7, 'Công nghệ phần mềm', 3, 3, 3, 2);
INSERT INTO course VALUES(59, 160, 'Tính toán song song', 3, 3, 0, 5);
INSERT INTO course VALUES(60, 14, 'Khai phá đồ thị', 3, 2, 1, 7);
INSERT INTO course VALUES(61, 135, 'Hệ khuyến nghị', 3, 2, 0, 4);
INSERT INTO course VALUES(62, 48, 'Nhập môn an toàn thông tin', 3, 3, 0, 6);
INSERT INTO course VALUES(63, 148, 'Lý thuyết trò chơi', 3, 3, 0, 8);
INSERT INTO course VALUES(64, 76, 'Đường lối cách mạng của Đảng Cộng sản Việt Nam', 3, 2, 0, 3);
INSERT INTO course VALUES(65, 153, 'Công nghệ mới trong phát triển ứng dụng CNTT', 3, 3, 5, 5);
INSERT INTO course VALUES(66, 117, 'Thị giác máy tính', 3, 3, 4, 5);
INSERT INTO course VALUES(67, 40, 'Học sâu', 3, 3, 5, 5);
INSERT INTO course VALUES(68, 17, 'Phân tích dữ liệu Bayesian', 3, 2, 2, 4);
INSERT INTO course VALUES(69, 108, 'Đảm bảo chất lượng và Kiểm thử phần mềm', 3, 3, 2, 5);
INSERT INTO course VALUES(70, 16, 'Phân tích kinh doanh', 3, 3, 2, 6);
INSERT INTO course VALUES(71, 49, 'Giải tích ngẫu nhiên cho tài chính', 3, 3, 1, 3);
INSERT INTO course VALUES(72, 66, 'Tâm lý học đại cương', 3, 3, 0, 5);
INSERT INTO course VALUES(73, 168, 'Xã hội học', 3, 2, 1, 4);
INSERT INTO course VALUES(74, 140, 'Cơ sở văn hóa Việt Nam', 3, 3, 6, 6);
INSERT INTO course VALUES(75, 114, 'Tiếng Việt thực hành', 3, 2, 0, 8);
INSERT INTO course VALUES(76, 20, 'Âm nhạc – Nhạc lý và Guitar căn bản', 3, 3, 5, 8);
INSERT INTO course VALUES(77, 109, 'Hội họa', 3, 3, 5, 8);
INSERT INTO course VALUES(78, 9, 'Thực tập doanh nghiệp', 5, 5, 0, 10);
INSERT INTO course VALUES(79, 105, 'Khóa luận tốt nghiệp', 5, 5, 0, 10);
INSERT INTO course VALUES(80, 117, 'Chứng chỉ TOEIC 450', 0, 0, 0, 10);
