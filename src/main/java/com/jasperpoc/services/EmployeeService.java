package com.jasperpoc.services;

import java.util.List;

import com.jasperpoc.model.Employee;

public interface EmployeeService {

    public Employee create(Employee employee);

    public Employee get(int id);

    public Employee update(Employee employee);

    public Employee delete(int id);

    public List<Employee> getAll();

}
