import 'package:dyma/applicationMaterial/appMaterial.dart';
import 'package:dyma/utils/buttonTextPush.dart';
import 'package:dyma/widgetDeLayout/widgetContainer.dart';
import 'package:dyma/widgetLayout.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Learn Flutter App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.lightBlueAccent),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(title: 'Learn Flutter'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  final List<Map<String, Widget>> buttonsData = [
    {'Les Widgets de layout': WidgetLayout()},
    {'Material App': AppMaterial()},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Center(
          child: Text(widget.title),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ..._generateButtons(context),
          ],
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
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
