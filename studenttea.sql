create table studenttea
(stuid integer(11)  ,
stuname varchar(10) ,
stubirthday  datetime ,
stuage integer(11),
stuclassid integer(11),
teaid integer(11),
teacourse varchar(100)  );

insert into studenttea
(stuid,stuname,stubirthday,stuage,stuclassid,teaid,teacourse)
values
(1,'zhao','2008/10/05',9,1,1,'Chinese'),
(2,'qian','2007/06/05',10,1,2,'Japanese'),
(3,'sun','2009/01/05',10,1,3,'Math'),
(4,'liu','2009/04/15',8,1,4,'Music');

select * from studenttea;

delete from studenttea;

CREATE VIEW studentx 
  AS SELECT  name,teachername,course
  FROM student left JOIN teacher
  ON student.id = teacher.id



select * from studenttea

select * from teacher


select student.id as stuid,student.name as stuname,student.birthday as stubirthday,student.age as stuage,student.classid as stuclassid,teacher.id as teaid ,teacher.course as teacourse from student
right join teacher on student.id=teacher.id





