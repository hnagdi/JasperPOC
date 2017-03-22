package com.jasperpoc.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.jasperpoc.model.Employee;

public interface EmployeeRepository extends JpaRepository<Employee, Integer>{

}
