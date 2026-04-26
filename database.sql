// Create Employees Table
CREATE TABLE employees (
    employee_id SERIAL PRIMARY KEY,
    employee_name VARCHAR(100),
    employee_email VARCHAR(100),
    department VARCHAR(50)
);

// Create Admins Table
CREATE TABLE admins (
    admin_id SERIAL PRIMARY KEY,
    admin_name VARCHAR(100),
    admin_email VARCHAR(100)
);

//Create Assets Table
CREATE TABLE assets (
    asset_id SERIAL PRIMARY KEY,
    asset_name VARCHAR(100),
    asset_type VARCHAR(50),
    asset_status VARCHAR(20) -- Available / Assigned / Damaged
);

//Create Assignments Table
CREATE TABLE assignments (
    assignment_id SERIAL PRIMARY KEY,
    employee_id INT,  -- Reference to employees
    asset_id INT,     -- Reference to assets
    assigned_date DATE,
    return_date DATE
);

 Dummy Data Insertions

//Employees
INSERT INTO employees (employee_name, employee_email, department) VALUES
('Rahul', 'rahul@gmail.com', 'IT'),
('Sneha', 'sneha@gmail.com', 'HR'),
('Amit', 'amit@gmail.com', 'Finance');

//Admins
INSERT INTO admins (admin_name, admin_email) VALUES
('Admin1', 'admin1@company.com');

//Assets
INSERT INTO assets (asset_name, asset_type, asset_status) VALUES
('Dell Laptop', 'Laptop', 'Available'),
('iPhone 13', 'Mobile', 'Assigned'),
('HP Laptop', 'Laptop', 'Damaged');

//Assignments
INSERT INTO assignments (employee_id, asset_id, assigned_date, return_date) VALUES
(1, 2, '2026-01-10', NULL);
