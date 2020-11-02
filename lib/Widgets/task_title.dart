import 'package:flutter/material.dart';

class TasksTitle extends StatelessWidget {

 final Function checkboxCallback;
  final bool isChecked;
  final String taskTitle;
  final Function longPressCallback;
TasksTitle({this.isChecked = false,this.taskTitle,this.checkboxCallback,this.longPressCallback});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: longPressCallback,
      title: Text(
        taskTitle,
        style: TextStyle(
          fontWeight: FontWeight.w700,
          decoration: isChecked ? TextDecoration.lineThrough : null,
        ),
      ),
      trailing: Checkbox(
        activeColor: Colors.lightBlueAccent,
        value: isChecked,
        onChanged: checkboxCallback,
      ),
    );
  }
}



class TaskCheckbox extends StatelessWidget {
  TaskCheckbox({this.CheckboxState,this.toggleCheckboxState});

  final bool CheckboxState;
 final Function toggleCheckboxState;
  @override
  Widget build(BuildContext context) {
    return Checkbox(
      activeColor: Colors.lightBlueAccent,
      value: CheckboxState,
      onChanged: toggleCheckboxState,
    );
  }
}


