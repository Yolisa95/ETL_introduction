------------------------------------------------------
--1.create databases
------------------------------------------------------
create database stg_may_intake
create database dwh_may_intake

------------------------------------------------------
--2.create tables
------------------------------------------------------

-- Staging table
create Table stg_may_intake.dbo.stg_Students
( 
firstName varchar(250),
Surname   Varchar(250),
CourseName Varchar(250),
CoursePrice int
);

-- Data warehouse table
create Table dwh_may_intake.dbo.dwh_Students
( 
firstName varchar(250),
Surname   Varchar(250),
CourseName Varchar(250),
CoursePrice int
);

------------------------------------------------------
--3. Loading Data into tables
------------------------------------------------------

--loading into staging table
insert stg_may_intake.dbo.stg_Students(firstName,Surname,CourseName,CoursePrice)
values ('Yolisa','Velebayi','Data Engineering',600)

--loading from staging table into data warehouse table 
insert into dwh_may_intake.dbo.dwh_Students(firstName,Surname,CourseName,CoursePrice)
SELECT 
       Distinct
       firstName
      ,[Surname]
      ,[CourseName]
      ,[CoursePrice]
  FROM [stg_may_intake].[dbo].[stg_Students]  stg

  where not EXISTS (                                          -- where not exists clause to avoid duplicates
  SELECT 1
  FROM dwh_may_intake.dbo.dwh_Students  dwh
  where dwh.firstname=stg.firstname
    and dwh.surname=stg.surname
    and dwh.coursename=stg.coursename
    and dwh.courseprice=stg.courseprice
  );