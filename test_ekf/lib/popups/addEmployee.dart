import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'package:date_field/date_field.dart';
import 'package:test_ekf/models/model.dart';
import 'package:test_ekf/models/employee.dart';
import '../appTheme.dart';

showAddEmployeePopup(context) {
  final nameInputController = TextEditingController();
  final surnameInputController = TextEditingController();
  final patronymicInputController = TextEditingController();
  final positionInputController = TextEditingController();
  DateTime birthDay;

  onAddButtonClick(BuildContext context) {
    String name = nameInputController.text;
    String surname = surnameInputController.text;
    String patronymic = patronymicInputController.text;
    String position = positionInputController.text;
    Employee employee = new Employee(name, surname, patronymic, birthDay, position);
    Model.instance().addEmployee(employee);
    Navigator.pop(context);
  }

  Alert(
      context: context,
      title: "Add Employee",
      style: AlertStyle(
          animationDuration: Duration(milliseconds: 350),
          titleStyle: Theme.of(context).textTheme.headline6),
      content: Column(
        children: <Widget>[
          TextField(
            controller: nameInputController,
            decoration: InputDecoration(
              labelStyle: TextStyle(fontSize: 17, color: Colors.grey),
              labelText: 'Name',
            ),
          ),
          TextField(
            controller: surnameInputController,
            decoration: InputDecoration(
              labelStyle: TextStyle(fontSize: 17, color: Colors.grey),
              labelText: 'Surname',
            ),
          ),
          TextField(
            controller: patronymicInputController,
            decoration: InputDecoration(
              labelStyle: TextStyle(fontSize: 17, color: Colors.grey),
              labelText: 'Patronymic',
            ),
          ),
          DateTimeFormField(
            decoration: const InputDecoration(
              hintStyle: TextStyle(fontSize: 17, color: Colors.grey, fontWeight: FontWeight.normal),
              labelText: 'Birth day',
            ),
            mode: DateTimeFieldPickerMode.date,
            dateTextStyle: TextStyle(fontSize: 15, fontWeight: FontWeight.normal),
            onDateSelected: (DateTime value) {
              birthDay = value;
            },
          ),
          TextField(
            controller: positionInputController,
            decoration: InputDecoration(
              labelStyle: TextStyle(fontSize: 17, color: Colors.grey),
              labelText: 'Position',
            ),
          ),
        ],
      ),
      buttons: [
        DialogButton(
          onPressed: () => onAddButtonClick(context),
          child: Text(
            "Add",
            style: TextStyle(color: AppTheme.getButtonTextColor(context), fontSize: 16),
          ),
        )
      ]).show();
}