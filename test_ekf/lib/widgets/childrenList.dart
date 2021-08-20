import 'package:flutter/material.dart';
import 'package:test_ekf/models/model.dart';
import 'package:test_ekf/models/employee.dart';
import 'package:test_ekf/models/child.dart';
import 'childCard.dart';

class ChildrenList extends StatefulWidget {
  @override
  ChildrenListState createState() => ChildrenListState();
}

class ChildrenListState extends State<ChildrenList> {
  void update() => setState(() {});

  @override
  Widget build(BuildContext context) {
    Model.instance().setUpdateChildren(update);
    Employee currentEmployee = Model.instance().getCurrentEmployee();
    List<Child> children = currentEmployee.children;
    return ListView.builder(
      padding: EdgeInsets.only(top: 20, bottom: 30, right: 10, left: 10),
      itemCount: children.length,
      itemBuilder: (BuildContext context, int index) {
        return ChildCard(child: children[index]);
      },
    );
  }
}