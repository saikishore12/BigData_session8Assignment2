student_details = LOAD 'student_details.txt' USING PigStorage(',')
   as (id:int, firstname:chararray, lastname:chararray, age:int, phone:chararray, city:chararray, gpa:int);
dump student_details;
distinct_data = DISTINCT student_details;
dump distinct_data;