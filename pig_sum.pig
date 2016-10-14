student_details = LOAD 'student_details.txt' USING PigStorage(',')
   as (id:int, firstname:chararray, lastname:chararray, age:int, phone:chararray, city:chararray, gpa:int);
dump student_details;
student_group = Group student_details all;
student_sum = foreach student_group Generate 
   (student_details.firstname,student_details.gpa),SUM(student_details.gpa);
dump student_sum;