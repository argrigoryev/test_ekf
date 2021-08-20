import 'package:flutter/material.dart';
import 'package:test_ekf/popups/addChild.dart';
import 'package:test_ekf/widgets/childrenList.dart';


class ChildrenScreen extends StatelessWidget {
  onAddButtonClick(BuildContext context) {
    showAddChildPopup(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Children',
          style: Theme.of(context)
              .textTheme
              .headline6
              .copyWith(fontSize: 26.0, color: Colors.white),
        ),
      ),
      body: ChildrenList(),
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