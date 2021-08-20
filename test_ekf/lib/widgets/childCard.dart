import 'package:flutter/material.dart';
import 'package:test_ekf/models/child.dart';

class ChildCard extends StatelessWidget {
  const ChildCard({
    Key key,
    @required this.child,
  }) : super(key: key);

  final Child child;

  String getBirthDayText() {
    DateTime date = child.birthDay;
    return '${date.day}/${date.month}/${date.year}';
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Align(
          alignment: Alignment.centerLeft,
          child: Text(
            '${child.name} ${child.surname}',
            style: Theme.of(context).textTheme.headline6,
          ),
        ),
        subtitle: Text(getBirthDayText()),
      ),
    );
  }
}
