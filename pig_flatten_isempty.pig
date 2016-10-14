emp_sales = LOAD 'emp_sales.txt' USING PigStorage(',')
   as (sno:int, name:chararray, age:int, salary:int, dept:chararray);
	
emp_bonus = LOAD 'emp_bonus.txt' USING PigStorage(',')
   as (sno:int, name:chararray, age:int, salary:int, dept:chararray);

 cogroup_data = COGROUP emp_sales by age, emp_bonus by age;
emp= foreach cogroup_data generate flatten((IsEmpty(emp_sales) ? null : emp_sales)), flatten((IsEmpty(emp_bonus) ? null : emp_bonus));
dump emp;