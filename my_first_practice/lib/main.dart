import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

List<Color> myContainerColors = [
  Colors.grey,
  Colors.red,
  Colors.orange,
  Colors.blue,
  Colors.purple,
  Colors.pink,
  Colors.black,
  Colors.indigo
];
void main() {
  runApp(MaterialApp(
    home: Scaffold(
      body: SafeArea(
        child: Container(
          color: Colors.yellowAccent,
         
          
          child: Stack(
             alignment: AlignmentDirectional.topEnd,
             fit: StackFit.expand,
          children: [...myGetWidget()],
          )
        ),
      ),
    ),
  ));
}

List<Widget> myGetWidget() {
  List<Color> myContainerColors = [
    Colors.grey,
    Colors.red,
    Colors.orange,
    Colors.blue,
    Colors.purple,
    Colors.pink,
    Colors.black,
    Colors.indigo
  ];
  List<Widget> myResult = [];
  for (int i = 0; i < myContainerColors.length; i++) {
    myResult.add(Container(
      child: Padding(
        padding: EdgeInsets.all(8.0 * i),
        child: Container(
          width: 100,
          height: 100,
          color: myContainerColors[i],
          child: Center(child: Text('${1 + i}')),
        ),
      ),
    ));
  }
  return myResult;
}
