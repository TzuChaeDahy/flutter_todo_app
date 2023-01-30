import 'package:flutter/material.dart';
import 'package:todo_app/components/categories_tile.dart';

class Categories extends StatelessWidget {
  const Categories({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 30,
        ),
        Container(
          child: Column(children: [
            Container(
              padding: const EdgeInsets.only(left: 24),
              alignment: Alignment.centerLeft,
              child: Text(
                "Categories".toUpperCase(),
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                  color: Colors.grey[700],
                ),
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            Container(
              height: 145,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: const [
                  CategoriesTile(
                      categoryTitle: "Business",
                      taskAmount: 22,
                      categoryColor: Colors.pink),
                  CategoriesTile(
                      categoryTitle: "Personal",
                      taskAmount: 18,
                      categoryColor: Colors.blue),
                  CategoriesTile(
                      categoryTitle: "School",
                      taskAmount: 4,
                      categoryColor: Colors.green),
                  CategoriesTile(
                      categoryTitle: "Sports",
                      taskAmount: 6,
                      categoryColor: Colors.orange),
                ],
              ),
            )
          ]),
        ),
      ],
    );
  }
}
