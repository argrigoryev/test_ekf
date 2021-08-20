import 'package:flutter/material.dart';
import 'package:test_ekf/models/model.dart';
import 'package:test_ekf/models/employee.dart';
import './employeeCard.dart';

class EmployeesList extends StatefulWidget {
  @override
  EmployeesListState createState() => EmployeesListState();
}

class EmployeesListState extends State<EmployeesList> {
  void update() => setState(() {});

  @override
  Widget build(BuildContext context) {
    Model.instance().setUpdateEmployees(update);
    List<Employee> employees = Model.instance().getEmployees();
    return ListView.builder(
      padding: EdgeInsets.only(top: 20, bottom: 30, right: 10, left: 10),
      itemCount: employees.length,
      itemBuilder: (BuildContext context, int index) {
        return EmployeeCard(employee: employees[index]);
      },
    );
  }
}