import 'package:flutter/material.dart';

import '../components/categories.dart';
import '../components/custom_app_bar.dart';
import '../components/tasks.dart';
import '../components/text_title.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: Container(
        padding: const EdgeInsets.only(
          top: 48,
        ),
        child: Column(children: const [
          CustomAppBar(),
          TextTitle(),
          Categories(),
          Tasks()
        ]),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(
          Icons.add_rounded,
          size: 30,
        ),
        onPressed: () {},
        backgroundColor: Colors.blue[600],
      ),
    );
  }
}
