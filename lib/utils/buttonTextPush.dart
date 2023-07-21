import 'package:flutter/material.dart';

class ButtonTextPush extends StatelessWidget {
  final String buttonText;
  final Widget page;
  const ButtonTextPush({
    required this.buttonText,
    required this.page,
  });
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ButtonTheme(
          child: ElevatedButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => page,
                ),
              );
            },
            child: Text(buttonText,
            style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold)),
            style: ElevatedButton.styleFrom(
              // backgroundColor: Colors.lightBlueAccent,
              padding: EdgeInsets.all(20.0),
              minimumSize: Size(MediaQuery.of(context).size.width * 0.75, 50),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.0),
              ),
            ),
          ),
        ),
        SizedBox(height: 20.0),
      ],
    );
  }
}
