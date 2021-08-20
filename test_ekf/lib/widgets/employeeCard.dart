import 'package:flutter/material.dart';
import 'package:test_ekf/models/model.dart';
import 'package:test_ekf/models/employee.dart';
import 'package:test_ekf/screens/childrenScreen.dart';

class EmployeeCard extends StatelessWidget {
  const EmployeeCard({
    Key key,
    @required this.employee,
  }) : super(key: key);

  final Employee employee;

  onEmployeeClick(BuildContext context) {
    Model.instance().setCurrentEmployee(employee);
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => ChildrenScreen())
    );
  }

  String getChildrenText() {
    int count = employee.children.length;
    if (count == 0) {
      return 'no children';
    } else if (count == 1) {
      return '1 child';
    } else {
      return '$count children';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        onTap: () => onEmployeeClick(context),
        trailing: Theme(
          data: Theme.of(context).copyWith(
            iconTheme: Theme.of(context).iconTheme.copyWith(
              color: Colors.grey,
            ),
          ),
          child: Icon(
            Icons.arrow_forward_ios,
          ),
        ),
        title: Align(
          alignment: Alignment.centerLeft,
          child: Text(
            '${employee.name} ${employee.surname}',
            style: Theme.of(context).textTheme.headline6,
          ),
        ),
        subtitle: Text(getChildrenText()),
      ),
    );
  }
}
