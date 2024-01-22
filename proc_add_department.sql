

create or replace NONEDITIONABLE PROCEDURE proc_add_new_dept(p_department_id     IN NUMBER,
BEGIN    
INSERT INTO departments (department_id, department_name) 
VALUES(p_department_id, p_department_name);          
END;
/