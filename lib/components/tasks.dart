import 'package:flutter/material.dart';
import 'package:todo_app/components/task_tile.dart';

class Tasks extends StatelessWidget {
  const Tasks({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(children: [
        const SizedBox(
          height: 24,
        ),
        Container(
          alignment: Alignment.centerLeft,
          child: Text(
            "today's tasks".toUpperCase(),
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 14,
              color: Colors.grey[700],
            ),
          ),
        ),
        const SizedBox(
          height: 32,
        ),
        Column(
          children: const [
            TaskTile(
              taskTitle: "Create a new template",
              taskColor: Colors.blue,
            ),
            TaskTile(
              taskTitle: "Color Tiles",
              taskColor: Colors.pink,
            ),
            TaskTile(
              taskTitle: "Lunch with Emma",
              taskColor: Colors.blue,
            ),
            TaskTile(
              taskTitle: "Planning meeting",
              taskColor: Colors.pink,
            ),
          ],
        )
      ]),
    );
  }
}
