import 'package:flutter/material.dart';

class CategoriesTile extends StatelessWidget {
  final String categoryTitle;
  final int taskAmount;
  final dynamic categoryColor;

  const CategoriesTile({
    super.key,
    required this.categoryTitle,
    required this.taskAmount,
    required this.categoryColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
      decoration: BoxDecoration(
          color: Colors.grey[100],
          borderRadius: BorderRadius.circular(12),
          boxShadow: const [
            BoxShadow(
                color: Colors.grey,
                blurRadius: 4,
                spreadRadius: 2,
                offset: Offset(-2, 2))
          ]),
      padding: const EdgeInsets.only(top: 24, right: 12, left: 12, bottom: 12),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Text(
          "${taskAmount.toString()} tasks",
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 14,
            color: Colors.grey,
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        Text(
          categoryTitle,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
            color: Colors.blueGrey[900],
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Container(
          height: 2,
          color: categoryColor,
          width: 160,
        )
      ]),
    );
  }
}
