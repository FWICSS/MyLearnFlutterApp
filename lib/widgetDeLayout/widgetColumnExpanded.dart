import 'package:flutter/material.dart';

class WidgetColumnExpanded extends StatelessWidget {
  const WidgetColumnExpanded({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Les column et expanded")),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        textDirection: TextDirection.ltr,
        children: [
          Container(
            color: Colors.blue,
            height: 100,
            width: 100,
          ),
          Expanded(
            child: Container(
              color: Colors.red,
              height: 100,
              width: 100,
            ),
          ),
          Container(
            color: Colors.green,
            height: 100,
            width: 100,
          ),
          Container(
            color: Colors.purple,
            height: 100,
            width: 100,
          ),
        ],
      ),
    );
  }
}
