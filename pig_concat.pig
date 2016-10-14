student_details = LOAD 'student_details.txt' USING PigStorage(',')
   as (id:int, firstname:chararray, lastname:chararray, age:int, phone:chararray, city:chararray, gpa:int);
dump student_details;
student_name_concat = foreach student_details Generate CONCAT (firstname, lastname);
dump student_name_concat;
