Hi welcome to the employee management system manual.
1. Please open your SQL Developer application. And connect to the database. Run the script of SEQUENCE.sql
2. Create the two tables. CREATE_EMPLOYEES.sql and CREATE_DEPARTMENT.sql. Copy and paste the codes to sql developer,
   Then press F5 of highligt all the lines and run code.
3. Before adding new employee information. Open the sql file. Procedure proc_add_department.sql 
   Copy and paste the codes to sql developer, Then press F5 of highligt all the lines and run code. To Compile.
4. Insert all the needed departments details in Department Tables.
   Note: EXEC proc_add_new_dept (5,'IT')  
5. Open and Copy and paste the Procedure proc_add_employee.sql 
   Copy and paste the codes to sql developer, Then press F5 of highligt all the lines and run code. To Compile.
6. To add new employee details. 
   Note: EXEC proc_add_new_emp ('JOHN','REYES',10000,5)
7. To check the employee salary. Open the Function script. func_get_salary.sql
   Copy and paste the codes to sql developer, Then press F5 of highligt all the lines and run code. To Compile.
8. To test run the function for func_get_salary.sql 
   Note: SELECT get_salary (5)
         FROM DUAL ;/   
   