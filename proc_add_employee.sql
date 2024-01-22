create or replace NONEDITIONABLE PROCEDURE proc_add_new_emp(
                                         p_first_name     IN VARCHAR2,
                                         p_last_name      IN VARCHAR2,
                                         p_salary         IN NUMBER,
                                         p_department_id  IN NUMBER) IS
p_department NUMBER;
v_seq_empid  NUMBER;

BEGIN
   BEGIN 
        SELECT department_id INTO p_department FROM departments WHERE department_id = p_department_id ;
        EXCEPTION WHEN NO_DATA_FOUND THEN
        p_department := NULL;
   END;
   BEGIN
        SELECT seq_emp_id.nextval INTO v_seq_empid
              FROM DUAL; 
   END;      
   
 IF p_department IS NULL THEN  
    dbms_output.put_line('Invalid Department');
 ELSE 
    INSERT INTO employees (employee_id, first_name, last_name, salary, department_id) 
    VALUES(v_seq_empid, p_first_name, p_last_name, p_salary, p_department_id);   
 END IF;
END;
