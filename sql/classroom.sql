-- Sinh viên học theo môn
SELECT count(distinct "public"."score"."student_id") AS "count"
FROM "public"."score"
LEFT JOIN "public"."course_offering" "Course Offering - Offering" ON "public"."score"."offering_id" = "Course Offering - Offering"."offering_id" 
LEFT JOIN "public"."course" "Course" ON "Course Offering - Offering"."course_id" = "Course"."course_id" 
LEFT JOIN "public"."student" "Student" ON "public"."score"."student_id" = "Student"."student_id"
WHERE 1 = 1 
[[ and "Course".course_id = {{c_id}}::int ]]
[[ and "Course"."course_name" = {{c_name}}]]
[[ and "Student"."class_name" = {{cl_name}}]]
GROUP BY "Course"."course_name"
ORDER BY "Course"."course_name"

-- Số lượng sinh viên học theo môn
SELECT "Course"."course_name" AS "Course__course_name", "Student"."class_name" AS "Student__class_name", count(distinct "public"."score"."student_id") AS "count"
FROM "public"."score"
LEFT JOIN "public"."course_offering" "Course Offering - Offering" ON "public"."score"."offering_id" = "Course Offering - Offering"."offering_id" 
LEFT JOIN "public"."course" "Course" ON "Course Offering - Offering"."course_id" = "Course"."course_id" 
LEFT JOIN "public"."student" "Student" ON "public"."score"."student_id" = "Student"."student_id"
WHERE 1 = 1 
[[ and "Course".course_id = {{c_id}}::int ]]
[[ and "Course"."course_name" = {{c_name}}]]
[[ and "Student"."class_name" = {{cl_name}}]]
GROUP BY "Course"."course_name", "Student"."class_name"
ORDER BY "Course"."course_name" ASC, "Student"."class_name" ASC

-- Số lượng sinh viên
SELECT count(distinct student_id) as "Số lượng sinh viên "
FROM "public"."student"
WHERE 1=1 
    [[and {{class_name}}]]
LIMIT 1048575

-- Số lượng sinh viên theo mỗi lớp
SELECT
    "public"."student"."student_id" AS "Mã sinh viên", 
    "public"."student"."student_name" AS "Họ tên", 
    "public"."student"."class_name" AS "Lớp"
FROM "public"."student"
WHERE 1=1 
    [[and {{class_name}}]]
LIMIT 1048575

-- Tỷ lệ sinh viên mỗi lớp
SELECT "public"."student"."class_name" AS "class_name", count(*) AS "count"
FROM "public"."student"
WHERE 1 = 1
[[and {{class_name}}]]
GROUP BY "public"."student"."class_name"
ORDER BY "public"."student"."class_name" ASC