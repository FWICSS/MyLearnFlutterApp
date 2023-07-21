import 'package:flutter/material.dart';

class WidgetPaddingCenter extends StatelessWidget {
  const WidgetPaddingCenter({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Center(
          child: Text("Les Widgets padding et center"),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Center(
    	child: Container(
          color: Colors.lightBlueAccent,
          padding: const EdgeInsets.all(2),
          child: Text(
              '''Le padding peut etre utilisé comme un Container avec une seule propriété enfant.
              
Le Center permet de centrer le widget enfant
                  ''',
              style: TextStyle(
                fontSize: 30,
                color: Colors.white,
              ),
          ),
        ),
      ),
      ),
    );
  }
}
