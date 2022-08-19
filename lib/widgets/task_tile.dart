import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_app/models/task_data.dart';
import '../consts.dart';

class TaskTile extends StatelessWidget {
  final bool isChecked;
  final String? taskTitle;
  final Function(bool?)? checkBoxCallback;
  final int? index;

  TaskTile(
      {required this.isChecked,
      this.taskTitle,
      this.checkBoxCallback,
      this.index});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: () {
        Provider.of<TaskData>(context, listen: false).deleteTask(index ?? -1);
      },
      title: Text(
        taskTitle ?? '',
        style: TextStyle(
          decoration: isChecked ? TextDecoration.lineThrough : null,
        ),
      ),
      trailing: Checkbox(
        checkColor: Colors.white,
        activeColor: kMainColor,
        onChanged: checkBoxCallback,
        value: isChecked,
      ),
    );
  }
}
