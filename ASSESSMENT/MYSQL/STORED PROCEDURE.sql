/*We have an employee’s table, and we want to create a stored procedure to add a
new employee and automatically log this action in an
employee_audit table. */

DELIMITER $$

CREATE PROCEDURE add_employee_with_audit (
    IN emp_name VARCHAR(100),
    IN emp_position VARCHAR(100),
    IN emp_salary DECIMAL(10,2),
    IN emp_hire_date DATE
)
BEGIN
    DECLARE new_emp_id INT;

    -- Insert the new employee into employees table
    INSERT INTO employees (name, position, salary, hire_date)
    VALUES (emp_name, emp_position, emp_salary, emp_hire_date);

    -- Get the newly generated employee_id
    SET new_emp_id = LAST_INSERT_ID();

    -- Log the insert action in employee_audit table
    INSERT INTO employee_audit (
        employee_id, name, position, salary, hire_date
    ) VALUES (
        new_emp_id, emp_name, emp_position, emp_salary, emp_hire_date
    );
END$$

DELIMITER ;
-- STORED PROCEDURE ON EMPLOYEE TABLE WAS CREATED --
