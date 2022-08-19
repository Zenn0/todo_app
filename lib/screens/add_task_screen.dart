import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_app/models/task_data.dart';
import '../consts.dart';

class AddTaskScreen extends StatelessWidget {
  String? taskDescription;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFF6a665f),
      child: Container(
        padding: const EdgeInsets.only(
          top: 30.0,
          left: 20.0,
          right: 20.0,
          bottom: 10.0,
        ),
        decoration: const BoxDecoration(
          color: kBackgroundColor,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(25.0),
            topRight: Radius.circular(25.0),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text(
              'Add Task',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 30.0,
                color: kDarkTextColor,
              ),
            ),
            TextField(
              onChanged: ((value) {
                taskDescription = value;
              }),
              autofocus: true,
              decoration: const InputDecoration(
                border: UnderlineInputBorder(),
                helperStyle: TextStyle(color: kMainColor),
                labelText: 'Enter your task',
                labelStyle: TextStyle(
                  color: kMainColor,
                ),
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: kMainColor),
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: kMainColor),
                ),
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            ElevatedButton(
              onPressed: (() {
                Provider.of<TaskData>(context, listen: false)
                    .addTask(taskDescription ?? '');
                Navigator.pop(context);
              }),
              child: const Text(
                'Add',
                style: TextStyle(fontSize: 20.0),
              ),
              style: ElevatedButton.styleFrom(
                primary: kMainColor,
              ),
            ),
            const SizedBox(
              height: 30.0,
            ),
          ],
        ),
      ),
    );
  }
}
