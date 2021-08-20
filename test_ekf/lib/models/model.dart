import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:test_ekf/models/employee.dart';
import 'child.dart';

class Model {
  static Model _instance;
  static Model instance() {
    if (_instance == null) {
      _instance = new Model();
    }
    return _instance;
  }

  List<Employee> _employees = [];
  Employee _currentEmployee;

  VoidCallback _updateEmployees;
  void setUpdateEmployees(VoidCallback update) => _updateEmployees = update;

  VoidCallback _updateChildren;
  void setUpdateChildren(VoidCallback update) => _updateChildren = update;

  List<Employee> getEmployees() => _employees;

  void addEmployee(Employee employee) {
    _employees.add(employee);
    _updateEmployees();
  }
  
  void addChild(Child child) {
    _currentEmployee.children.add(child);
    _updateChildren();
    _updateEmployees();
  }

  void setCurrentEmployee(Employee employee) => _currentEmployee = employee;
  Employee getCurrentEmployee() => _currentEmployee;
}