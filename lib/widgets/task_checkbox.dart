import 'package:flutter/material.dart';
import 'package:todo_app/consts.dart';

class TaskCheckbox extends StatelessWidget {
  final bool? checkboxState;
  final Function? toogleCheckboxState;

  TaskCheckbox({this.checkboxState, this.toogleCheckboxState});

  @override
  Widget build(BuildContext context) {
    return Checkbox(
      checkColor: Colors.white,
      activeColor: kMainColor,
      onChanged: (value) {
        toogleCheckboxState!(value);
      },
      value: checkboxState,
    );
  }
}
