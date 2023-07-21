import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WidgetContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text("Le Container"),
        ),
        body: Container(
          color: Colors.green,
          alignment: Alignment.center,
          margin: EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const Text("""Attribut d'un container : 
                  this.alignment
                  this.padding,
                  this.color,
                  this.decoration,
                  this.foregroundDecoration,
                  double? width,
                  double? height,
                  BoxConstraints? constraints,
                  this.margin,
                  this.transform,
                  this.transformAlignment,
                  this.child,""", textDirection: TextDirection.ltr),
              const SizedBox(height: 20),
              Container(
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(
                    color: Colors.teal,
                    width: 3,
                    style: BorderStyle.solid,
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black,
                      offset: Offset(10, 10),
                      blurRadius: 10,
                      spreadRadius: 10,
                    ),
                  ],
                ),
                width: 250,
                height: 300,
                padding: EdgeInsets.all(10),
                alignment: Alignment.centerLeft,
                child: Text(
                    """Container avec BoxDecoration dont les attributs sont : 
                		color: 
                			Colors.red,
                  	borderRadius: 
                  		BorderRadius.circular(20),
                  	border: 
                  		Border.all(color: Colors.teal,width: 3,style: BorderStyle.solid,),
                  	boxShadow:
                  		[BoxShadow(color: Colors.black,offset: Offset(10, 10),blurRadius: 10,spreadRadius: 10,),],
                """,
                    textDirection: TextDirection.ltr),
              ),
            ],
          ),
        ));
  }
}
