【学生表】
student(sid, sname, sbirth, ssex) – 学生编号, 学生姓名, 出生年月, 学生性别
# 删除库   drop table student;
# 修改字段类型    alter table 表名 modify 字段名 新数据类型;

create table student(sid int primary key auto_increment, sname varchar(32) not null, sbirth date, ssex enum("m","w"));
insert into student(sname, sbirth, ssex) values ('Lucy','1998-01-04','w'),('Lily','1998-03-23','w'),
('Tony','1997-05-16','m'),('Kiki','1999-11-21','w'),('Coco','1998-10-13','w'),
('Sun','1997-06-30','m'),('Yuki','1998-04-28','w'),('Amy','1996-01-17','w'),('Abby','2000-05-24','w');

【课程表】
course(cid, cname, tid) – – 课程编号, 课程名称, 教师编号
create table course(cid int, cname varchar(32) not null, tid int);
insert into course(cid,cname,tid) values (1,'python',1),(2,'java',2),(3,'go',3),(4,'c++',4);

【教师表】
teacher(tid, tname) – 教师编号,教师姓名
create table teacher(tid int, tname varchar(32) not null);
insert into teacher(tid, tname) values (1,'晴晴'),(2,'东东'),(3,'丽丽'),(4,'聪聪');
# 删除某一字段重复数据 select distinct country from teacher;
【成绩表】
score(sid, cid, sscore) – 学生编号,课程编号,分数
create table score(sid int, cid int, sscore float);
insert into score(sid,cid,sscore) values (1,1,78),(2,1,80),(3,2,85),(4,1,74),(4,4,65),
(5,3,90),(6,2,77),(7,3,92),(8,1,89),(9,4,91);

1.查询名字开头为'晴'的老师的个数.
select count(*) from teacher where tname like '晴%';
2.查询名字中有'风'字的学生的名单
select sname AS '学生姓名' from student where sname like'%i%';
3.1990年出生的学生名单(注:student表中sbirth列的类型是datatime)两种方法
select sname AS '学生姓名' from student where sbirth like'1998%';
select sname AS '学生姓名' from student where (year) sbirth = 1998;(不对)
4.查询课程编号为'02'的总成绩
select cid,sum(sscore) from score where cid = 02;
5.查询选了课程的学生人数
select count(sid) from score;
6.查询各科成绩最高和最低的分:以如下的形式显示:课程ID,最高分,最低分
select country,avg(attack) from score
group by cid;
7.查询每门课程被选修的学生数
8.查询男生女生人数
select count(distinct ssex) from student;
9.查询平均成绩大于60分的学生的学号和平均成绩
10.查询至少选修两门课程的学生学号.
11.查询两门以上不及格课程的同学学号及其平均成绩
12.查询同名同姓学生名单并统计同名人数.
13. 查询每门课程的平均成绩，结果按平均成绩升序排序，平均成绩相同时，按课程号降序排列
14. 查询不及格的课程并按课程号从大到小排列。
15. 检索课程编号为“04”且分数小于60的学生学号，结果按分数降序排列。
16. 统计每门课程的学生选修人数(超过5人的课程才统计)。
    要求输出课程号和选修人数，查询结果按人数降序排序，若人数相同，按课程号升序排序。
17. 查询所有课程成绩小于60分的学生的学号、姓名。
18. 查询没有学全所有课的学生的学号、姓名
19. 查询出只选修了两门课程的全部学生的学号和姓名。
20. 查询课程编号为03且课程成绩在80分以上的学生的学号和姓名。
21. 查询课程编号为“01”的课程比“02”的课程成绩高的所有学生的学号。


