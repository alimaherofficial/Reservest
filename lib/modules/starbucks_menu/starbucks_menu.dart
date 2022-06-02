import 'package:flutter/material.dart';

class StarbucksMenu extends StatelessWidget {
  const StarbucksMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        title: const Text('Starbucks'),
      ),
      body: Column(
        // ignore: prefer_const_literals_to_create_immutables
        children: [const Text('A7a')],
      ),
    );
  }
}
