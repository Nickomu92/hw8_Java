package com.nikomu.entity;

import javax.persistence.*;
import javax.validation.constraints.*;

@Entity
@Table(name = "employee")
public class Employee {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "Id")
    private int id;

    @Column(name = "FirstName")
    @Size(min = 2, message = "Имя доложно состоять минимум из двух символов")
    private String firstName;

    @Column(name = "LastName")
    @Size(min = 2, message = "Фамилия доложна состоять минимум из двух символов")
    private String lastName;

    @Column(name = "Department")
    @Size(min = 1, message = "Название отдела доложно состоять минимум из одного символа")
    private String department;

    @Column(name = "Salary")
    @Min(value = 0, message = "Зарплата должна быть больше 0$")
    private int salary;

    public Employee() {
    }

    public Employee(String firstName, String lastName, String department, int salary) {
        this.firstName = firstName;
        this.lastName = lastName;
        this.department = department;
        this.salary = salary;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public String getDepartment() {
        return department;
    }

    public void setDepartment(String department) {
        this.department = department;
    }

    public int getSalary() {
        return salary;
    }

    public void setSalary(int salary) {
        this.salary = salary;
    }

    @Override
    public String toString() {
        return "Employee{" +
                "id=" + id +
                ", firstName='" + firstName + '\'' +
                ", lastName='" + lastName + '\'' +
                ", department='" + department + '\'' +
                ", salary=" + salary +
                '}';
    }
}