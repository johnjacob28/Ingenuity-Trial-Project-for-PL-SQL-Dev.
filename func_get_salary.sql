
create or replace NONEDITIONABLE FUNCTION get_salary (p_eid NUMBER)
        RETURN VARCHAR2
     IS
        v_sal   NUMBER;
        
     BEGIN
        SELECT salary
          INTO v_sal
          FROM employees
         WHERE employee_id = p_eid;
     IF v_sal is not null THEN 
        RETURN (v_sal);
     ELSE 
        RETURN ('employee_not_found');
     END IF;     
END; 