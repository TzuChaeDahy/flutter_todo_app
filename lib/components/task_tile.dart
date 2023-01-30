import 'package:flutter/material.dart';

class TaskTile extends StatefulWidget {
  final String taskTitle;
  final dynamic taskColor;

  const TaskTile({super.key, required this.taskTitle, this.taskColor});

  @override
  State<TaskTile> createState() => _TaskTileState();
}

class _TaskTileState extends State<TaskTile> {
  var isDone = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 8),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: Colors.grey[100],
            boxShadow: const [
              BoxShadow(
                  color: Colors.grey,
                  blurRadius: 4,
                  spreadRadius: 2,
                  offset: Offset(-2, 2))
            ],
          ),
          child: Row(children: [
            Transform.scale(
              scale: 1.25,
              child: Checkbox(
                  fillColor: MaterialStateProperty.all(widget.taskColor),
                  activeColor: Colors.grey,
                  checkColor: Colors.white,
                  shape: const CircleBorder(),
                  value: isDone,
                  onChanged: (_) {
                    setState(() {
                      isDone = !isDone;
                    });
                  }),
            ),
            Text(
              widget.taskTitle,
              style: TextStyle(
                  fontSize: 17,
                  color: isDone ? Colors.grey : Colors.black,
                  decoration: isDone ? TextDecoration.lineThrough : null),
            )
          ]),
        ),
        const SizedBox(
          height: 16,
        )
      ],
    );
  }
}
