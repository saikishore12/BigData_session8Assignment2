student_details = LOAD 'student_details.txt' USING PigStorage(',')
   as (id:int, firstname:chararray, lastname:chararray, age:int, phone:chararray, city:chararray, gpa:int);
dump student_details;
 student_group_all = Group student_details All;
student_gpa_min = foreach student_group_all  Generate
   (student_details.firstname, student_details.gpa), MIN(student_details.gpa);
   dump student_gpa_min;

