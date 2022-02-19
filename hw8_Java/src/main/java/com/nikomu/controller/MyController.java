/***********************************************************************************
 По нажатию на кнопку Add открывается форма для заполнения данных
 (имя, фамилия, департамент, зарплата).
 Нажимаем на кнопку ок, и открывается табличка с обновленными данными.

 *Добавить функционал для изменения данных о выбраном сотруднике.

 Прикрепить скрины приложения.

 Установить AndroidStudio и создать приложение Hello World.
 (на эмуляторе или телефоне)
 Сделать скриншот Hello World
 ***********************************************************************************/


package com.nikomu.controller;

import com.nikomu.entity.Employee;
import com.nikomu.service.EmployeeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import javax.swing.text.View;
import javax.validation.Valid;
import java.util.List;

@Controller
public class MyController {
    @Autowired
    private EmployeeService employeeService;

    @RequestMapping("/")
    public String showAllEmployees(Model model) {
        List<Employee> employees = employeeService.getAllEmployees();
        model.addAttribute("employees", employees);
        return "read-employees-view";
    }

    @RequestMapping("/createEmployeeForm")
    public String createEmployeeForm(Model model) {
        model.addAttribute("createEmployee", new Employee());
        return "create-employee-view";
    }

    @RequestMapping("/addNewEmployee")
    public String addNewEmployee(@Valid @ModelAttribute("newEmployee") Employee newEmployee, BindingResult bindingResult) {
        if(bindingResult.hasErrors()) {
            return "redirect:./createEmployeeForm";
        }
        employeeService.addEmployee(newEmployee);
        return "redirect:./";
    }

    @RequestMapping("/updateEmployeeForm/{id}")
    @DeleteMapping
    public String updateEmployeeForm(@PathVariable int id, Model model) {
        Employee editEmployee = employeeService.getEmployee(id);
        System.out.println(employeeService.getEmployee(id));
        model.addAttribute("updateEmployee", editEmployee);
        return "update-employee-view";
    }

    @RequestMapping("/editEmployee")
    public String editEmployee(@Valid @ModelAttribute("updateEmployee") Employee updateEmployee, BindingResult bindingResult) {
        if(bindingResult.hasErrors()) {
            return "redirect:./updateEmployeeForm/" + updateEmployee.getId();
        }
        employeeService.editEmployee(updateEmployee);
        return "redirect:./";
    }

    @RequestMapping("/deleteEmployee/{id}")
    public String deleteEmployee(@PathVariable int id) {
        employeeService.deleteEmployee(id);
        return "redirect:../";
    }
}