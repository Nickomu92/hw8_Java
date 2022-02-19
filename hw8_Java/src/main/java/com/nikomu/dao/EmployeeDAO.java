package com.nikomu.dao;

import com.nikomu.entity.Employee;

import java.util.List;

public interface EmployeeDAO {
    List<Employee> getAllEmployees();
    void addEmployee(Employee employee);
    void deleteEmployee(int id);
    Employee getEmployee(int id);
    void editEmployee(Employee employee);
}
