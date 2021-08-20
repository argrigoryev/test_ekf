import 'package:test_ekf/models/child.dart';

class Employee {
  String name;
  String surname;
  String patronymic;
  DateTime birthDay;
  String position;
  List<Child> children = [];

  Employee(this.name, this.surname, this.patronymic, this.birthDay, this.position);
}