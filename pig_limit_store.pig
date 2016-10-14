student_details = LOAD 'student_details.txt' USING PigStorage(',')
   as (id:int, firstname:chararray, lastname:chararray, age:int, phone:chararray, city:chararray, gpa:int);
dump student_details;
limit_data = LIMIT student_details 4; 
dump limit_data;
store limit_data into 'limit_data';