-- Điểm theo môn học
WITH a as (
    SELECT 
        "public"."course_offering"."course_id" as "course_id",
        "public"."score"."score_id" AS "score_id", 
        "public"."score"."student_id" AS "student_id", 
        "public"."score"."offering_id" AS "offering_id", 
        "public"."score"."score" AS "score", 
        "public"."score"."score_type" AS "score_type"
    FROM "public"."score"
    LEFT JOIN "public"."course_offering" 
    ON "public"."score"."offering_id" = "public"."course_offering"."offering_id"
    WHERE  1 = 1 
    [[AND {{mssv}}]]
),
b as (
    SELECT
        a.*,
        case when score_type = 'tk_1' then score end as "tk1",
        case when score_type = 'tk_2' then score end as "tk2",
        case when score_type = 'tk_3' then score end as "tk3",
        case when score_type = 'th_1' then score end as "th1",
        case when score_type = 'th_2' then score end as "th2",
        case when score_type = 'th_3' then score end as "th3",
        case when score_type = 'gk' then score end as "gk",
        case when score_type = 'ck' then score end as "ck"
    from a
),
c as (
    SELECT
        student_id, course_id,
        sum(b.tk1) as "tk1",
        sum(b.tk2) as "tk2",
        sum(b.tk3) as "tk3",
        sum(b.gk)  as "gk",
        sum(b.ck)  as "ck",
        sum(b.th1) as "th1",
        sum(b.th2) as "th2",
        sum(b.th3) as "th3"
    FROM b
    GROUP BY student_id, course_id
)

SELECT 
    "public"."course"."course_name" as "Môn học", 
    tk1, tk2, tk3, gk, th1, th2, th3, ck,
    tongket as "Tổng kết"
FROM (
    SELECT
        c.*,
        case when (th1 is not null or th2 is not null or th3 is not null) 
             then ((((tk1 + tk2 + tk3) / 3) * 0.2 + gk * 0.3 + ck * 0.5) * 2 + (th1 + th2 + th3) / 3) / 3 
             else ((tk1 + tk2 + tk3) / 3) * 0.2 + gk * 0.3 + ck * 0.5
             end as "tongket"
    FROM c
) "tongket"
LEFT JOIN "public"."course" ON "tongket"."course_id" = "public"."course"."course_id"
WHERE "tongket"."tongket" <= 10 and
                      tk1 <= 10 and
                      tk2 <= 10 and
                      tk3 <= 10 and
                      gk  <= 10 and
                      ck  <= 10 and
                      th1 <= 10 and
                      th2 <= 10 and
                      th3 <= 10

-- Điểm tích lũy
with a as (SELECT public.course_offering.course_id as "course_id","public"."score"."score_id" AS "score_id", "public"."score"."student_id" AS "student_id", "public"."score"."offering_id" AS "offering_id", "public"."score"."score" AS "score", "public"."score"."score_type" AS "score_type"
FROM "public"."score"
left join public.course_offering on public.score.offering_id = public.course_offering.offering_id
where  1 = 1 
[[and {{mssv}}]]
),
b as (
SELECT  a.*
        ,case when score_type = 'tk_1' then score end as "tk1",
        case when score_type = 'tk_2' then score end as "tk2",
        case when score_type = 'tk_3' then score end as "tk3",
        case when score_type = 'th_1' then score end as "th1",
        case when score_type = 'th_2' then score end as "th2",
        case when score_type = 'th_3' then score end as "th3",
        case when score_type = 'gk' then score end as "gk",
        case when score_type = 'ck' then score end as "ck"
from a
),
c as (
SELECT student_id,course_id,
        sum(b.tk1) as "tk1",
        sum(b.tk2) as "tk2",
        sum(b.tk3) as "tk3",
        sum(b.gk) as "gk",
        sum(b.ck) as "ck",
        sum(b.th1) as "th1",
        sum(b.th2) as "th2",
        sum(b.th3) as "th3"
        
from b
group by student_id,course_id
), d as (
SELECT   distinct tongket.course_id , tongket.tongket
from (
    SELECT c.* , case when (th1 is not null or th2 is not null or th3 is not null) then ((((tk1 + tk2 + tk3 ) /3 )*0.2 + gk*0.3 + ck*0.5 )*2 + (th1 + th2 +th3 ) / 3 )/3 
               else ((tk1 + tk2 + tk3)/3 )*0.2 + gk*0.3 + ck*0.5  end as "tongket"
    from c
    ) "tongket"
left join public.course on tongket.course_id = public.course.course_id
where tongket.tongket <=10 and 
                 tk1 <= 10 and
                 tk2 <= 10 and
                 tk3 <= 10 and
                 gk  <= 10 and
                 ck  <= 10 and
                 th1 <= 10 and
                 th2 <= 10 and
                 th3 <= 10 and 
                 tongket.tongket >= 5 
), e as (
SELECT * , case when tongket >= 9 then 'A+'
          when tongket >= 8.5 and tongket <8.9 then 'A'
          when tongket >= 8 and tongket < 8.5 then 'B+'
          when tongket >= 7 and tongket < 8 then 'B'
          when tongket >= 6.5 and tongket < 7 then 'C'
          else 'F' end as "Xep loai",
          case when tongket >= 9 then 4.0
          when tongket >= 8.5 and tongket <8.9 then 3.8
          when tongket >= 8 and tongket < 8.5 then 3.5
          when tongket >= 7 and tongket < 8 then 3.0
          when tongket >= 6.5 and tongket < 7 then 2.5
          else 2 end as "Diem_he_4"
from d )
select sum("Diem_he_4")/count(*) as "Tich luy" from e

-- Tổng số tín chỉ tích lũy
with a as (SELECT public.course_offering.course_id as "course_id","public"."score"."score_id" AS "score_id", "public"."score"."student_id" AS "student_id", "public"."score"."offering_id" AS "offering_id", "public"."score"."score" AS "score", "public"."score"."score_type" AS "score_type"
FROM "public"."score"
left join public.course_offering on public.score.offering_id = public.course_offering.offering_id
where  1 = 1 
[[and {{mssv}}]]
),
b as (
SELECT  a.*
        ,case when score_type = 'tk_1' then score end as "tk1",
        case when score_type = 'tk_2' then score end as "tk2",
        case when score_type = 'tk_3' then score end as "tk3",
        case when score_type = 'th_1' then score end as "th1",
        case when score_type = 'th_2' then score end as "th2",
        case when score_type = 'th_3' then score end as "th3",
        case when score_type = 'gk' then score end as "gk",
        case when score_type = 'ck' then score end as "ck"
from a
),
c as (
SELECT student_id,course_id,
        sum(b.tk1) as "tk1",
        sum(b.tk2) as "tk2",
        sum(b.tk3) as "tk3",
        sum(b.gk) as "gk",
        sum(b.ck) as "ck",
        sum(b.th1) as "th1",
        sum(b.th2) as "th2",
        sum(b.th3) as "th3"
        
from b
group by student_id,course_id
), d as (
SELECT   distinct tongket.course_id , public.course.total_credit
from (
    SELECT c.* , case when (th1 is not null or th2 is not null or th3 is not null) then ((((tk1 + tk2 + tk3 ) /3 )*0.2 + gk*0.3 + ck*0.5 )*2 + (th1 + th2 +th3 ) / 3 )/3 
               else ((tk1 + tk2 + tk3)/3 )*0.2 + gk*0.3 + ck*0.5  end as "tongket"
    from c
    ) "tongket"
left join public.course on tongket.course_id = public.course.course_id
where tongket.tongket <=10 and 
                 tk1 <= 10 and
                 tk2 <= 10 and
                 tk3 <= 10 and
                 gk  <= 10 and
                 ck  <= 10 and
                 th1 <= 10 and
                 th2 <= 10 and
                 th3 <= 10 and 
                 tongket.tongket >= 5 
)
SELECT sum(total_credit) from d 

-- Tổng số môn đã học
with a as (SELECT public.course_offering.course_id as "course_id","public"."score"."score_id" AS "score_id", "public"."score"."student_id" AS "student_id", "public"."score"."offering_id" AS "offering_id", "public"."score"."score" AS "score", "public"."score"."score_type" AS "score_type"
FROM "public"."score"
left join public.course_offering on public.score.offering_id = public.course_offering.offering_id
where  1 = 1 
[[and {{mssv}}]]
),
b as (
SELECT  a.*
        ,case when score_type = 'tk_1' then score end as "tk1",
        case when score_type = 'tk_2' then score end as "tk2",
        case when score_type = 'tk_3' then score end as "tk3",
        case when score_type = 'th_1' then score end as "th1",
        case when score_type = 'th_2' then score end as "th2",
        case when score_type = 'th_3' then score end as "th3",
        case when score_type = 'gk' then score end as "gk",
        case when score_type = 'ck' then score end as "ck"
from a
),
c as (
SELECT student_id,course_id,
        sum(b.tk1) as "tk1",
        sum(b.tk2) as "tk2",
        sum(b.tk3) as "tk3",
        sum(b.gk) as "gk",
        sum(b.ck) as "ck",
        sum(b.th1) as "th1",
        sum(b.th2) as "th2",
        sum(b.th3) as "th3"
        
from b
group by student_id,course_id
), d as (
SELECT   distinct tongket.course_id , public.course.total_credit
from (
    SELECT c.* , case when (th1 is not null or th2 is not null or th3 is not null) then ((((tk1 + tk2 + tk3 ) /3 )*0.2 + gk*0.3 + ck*0.5 )*2 + (th1 + th2 +th3 ) / 3 )/3 
               else ((tk1 + tk2 + tk3)/3 )*0.2 + gk*0.3 + ck*0.5  end as "tongket"
    from c
    ) "tongket"
left join public.course on tongket.course_id = public.course.course_id
where tongket.tongket <=10 and 
                 tk1 <= 10 and
                 tk2 <= 10 and
                 tk3 <= 10 and
                 gk  <= 10 and
                 ck  <= 10 and
                 th1 <= 10 and
                 th2 <= 10 and
                 th3 <= 10 
)
SELECT count(*) from d

-- Xếp loại
with a as (SELECT public.course_offering.course_id as "course_id","public"."score"."score_id" AS "score_id", "public"."score"."student_id" AS "student_id", "public"."score"."offering_id" AS "offering_id", "public"."score"."score" AS "score", "public"."score"."score_type" AS "score_type"
FROM "public"."score"
left join public.course_offering on public.score.offering_id = public.course_offering.offering_id
where  1 = 1 
[[and {{mssv}}]]
),
b as (
SELECT  a.*
        ,case when score_type = 'tk_1' then score end as "tk1",
        case when score_type = 'tk_2' then score end as "tk2",
        case when score_type = 'tk_3' then score end as "tk3",
        case when score_type = 'th_1' then score end as "th1",
        case when score_type = 'th_2' then score end as "th2",
        case when score_type = 'th_3' then score end as "th3",
        case when score_type = 'gk' then score end as "gk",
        case when score_type = 'ck' then score end as "ck"
from a
),
c as (
SELECT student_id,course_id,
        sum(b.tk1) as "tk1",
        sum(b.tk2) as "tk2",
        sum(b.tk3) as "tk3",
        sum(b.gk) as "gk",
        sum(b.ck) as "ck",
        sum(b.th1) as "th1",
        sum(b.th2) as "th2",
        sum(b.th3) as "th3"
        
from b
group by student_id,course_id
), d as (
SELECT   distinct tongket.course_id , tongket.tongket
from (
    SELECT c.* , case when (th1 is not null or th2 is not null or th3 is not null) then ((((tk1 + tk2 + tk3 ) /3 )*0.2 + gk*0.3 + ck*0.5 )*2 + (th1 + th2 +th3 ) / 3 )/3 
               else ((tk1 + tk2 + tk3)/3 )*0.2 + gk*0.3 + ck*0.5  end as "tongket"
    from c
    ) "tongket"
left join public.course on tongket.course_id = public.course.course_id
where tongket.tongket <=10 and 
                 tk1 <= 10 and
                 tk2 <= 10 and
                 tk3 <= 10 and
                 gk  <= 10 and
                 ck  <= 10 and
                 th1 <= 10 and
                 th2 <= 10 and
                 th3 <= 10 and 
                 tongket.tongket >= 5 
), e as (
SELECT * , case when tongket >= 9 then 'A+'
          when tongket >= 8.5 and tongket <8.9 then 'A'
          when tongket >= 8 and tongket < 8.5 then 'B+'
          when tongket >= 7 and tongket < 8 then 'B'
          when tongket >= 6.5 and tongket < 7 then 'C'
          else 'F' end as "Xep loai",
          case when tongket >= 9 then 4.0
          when tongket >= 8.5 and tongket <8.9 then 3.8
          when tongket >= 8 and tongket < 8.5 then 3.5
          when tongket >= 7 and tongket < 8 then 3.0
          when tongket >= 6.5 and tongket < 7 then 2.5
          else 2 end as "Diem_he_4"
from d )
, f as (
select sum(e."tongket")/count(*) as "Tich_luy" from e
)
select case when f."Tich_luy" >= 8 then 'Giỏi'
          when f."Tich_luy" >= 7.4 and f."Tich_luy" < 8 then 'Giỏi'
          when f."Tich_luy" >= 5.5 and f."Tich_luy" < 7 then 'Trung bình'
          else 'Yếu' end as "Xep loai"
from f

-- Số lượng môn đã học
SELECT
    count(distinct "public"."course_offering".course_id) as "Số lượng môn đã học"
FROM "public"."score"
JOIN "public"."course_offering" on "public"."score".offering_id = "public"."course_offering".offering_id
JOIN "public"."course" on "public"."course_offering".course_id = "public"."course".course_id
WHERE 1 = 1
[[and {{mssv}}]]

-- Thông tin sinh viên
SELECT 
    "public"."student"."student_id" AS "Mã sinh viên", 
    "public"."student"."student_name" AS "Họ tên", 
    "public"."student"."class_name" AS "Lớp", 
    "public"."student"."edu_mail" AS "Email", 
    "Address"."ward" AS "Xã/Phường", 
    "Address"."district" AS "Huyện/Quận", 
    "Address"."city" AS "Tỉnh/Thành phố"
FROM "public"."student"
LEFT JOIN "public"."address" "Address" ON "public"."student"."address_id" = "Address"."address_id"
WHERE 1 = 1 
[[and {{mssv}}]]
[[and {{name_}}]]
LIMIT 1048575