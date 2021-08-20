import 'package:flutter/material.dart';
import 'package:test_ekf/popups/addEmployee.dart';
import '../widgets/employeesList.dart';


class EmployeesScreen extends StatelessWidget {

  onAddButtonClick(BuildContext context) {
    showAddEmployeePopup(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Employees',
          style: Theme.of(context)
              .textTheme
              .headline6
              .copyWith(fontSize: 26.0, color: Colors.white),
        ),
      ),
      body: EmployeesList(),
      floatingActionButton: FloatingActionButton(
        onPressed: () => onAddButtonClick(context),
        tooltip: 'Add',
        child: Icon(
          Icons.add,
        ),
      ),
    );
  }
}