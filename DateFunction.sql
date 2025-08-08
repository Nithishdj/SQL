use db;
/*Date function*/
select curdate();
select now();
select curdate()+interval 2 week;
select curdate()+interval 14 day;
select year(curdate())as Year;
select date(curdate())as Date;
select dayname(curdate())as Day;
select hour(now()) as Hour;
select minute(now()) as Minute;
select second(now()) as Second;
select month(now()) as Month;
select monthname(now()) as Month;

select date_add(now(),interval 5 day)as Adding_5days;
select date_sub(now(),interval 5 day)as sub_5days;
select datediff('2025-08-25','2025-07-25')as Date_Diff;