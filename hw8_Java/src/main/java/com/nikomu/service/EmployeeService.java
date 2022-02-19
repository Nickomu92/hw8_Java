package com.nikomu.service;

import com.nikomu.entity.Employee;

import java.util.List;

public interface EmployeeService {
    List<Employee>getAllEmployees();
    void addEmployee(Employee employee);
    void deleteEmployee(int id);
    Employee getEmployee(int id);
    void editEmployee(Employee employee);
}