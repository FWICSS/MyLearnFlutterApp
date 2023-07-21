import 'package:dyma/utils/buttonTextPush.dart';
import 'package:dyma/widgetDeLayout/widgetColumnExpanded.dart';
import 'package:dyma/widgetDeLayout/widgetContainer.dart';
import 'package:dyma/widgetDeLayout/widgetPadingCenter.dart';
import 'package:dyma/widgetDeLayout/widgetRow.dart';
import 'package:dyma/widgetDeLayout/widgetStack.dart';
import 'package:flutter/material.dart';

class WidgetLayout extends StatelessWidget {
  final List<Map<String, Widget>> buttonsData = [
    {'Le Container': WidgetContainer()},
    {'Le Padding et le Center': WidgetPaddingCenter()},
    {'Les column et expanded': WidgetColumnExpanded()},
    {'Les rows': WidgetRow()},
    {'La Stack': WidgetStack()}
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("Les Widgets de layout"),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          ..._generateButtons(context),
        ],
      )),
    );
  }

  // Fonction pour générer les boutons à partir de la liste de données
  List<Widget> _generateButtons(context) {
    List<Widget> buttons = [];

    for (var buttonData in buttonsData) {
      String buttonText = buttonData.keys.first;
      Widget buttonPage = buttonData.values.first;

      buttons.add(
        ButtonTextPush(
          buttonText: buttonText,
          page: buttonPage,
        ),
      );
    }
    return buttons;
  }
}


