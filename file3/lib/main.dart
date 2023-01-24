import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      body: Container(
        child: Column(
          children: [
            MyCustomWidget(Color: Colors.blue,),
            MyCustomWidget(Color: Colors.red,),
            MyCustomWidget(Color: Colors.green,),
          ],
        ),
      ),
    ),
  ));
}

class MyCustomWidget extends StatelessWidget {
  final Color;

  const MyCustomWidget({super.key,this.Color});
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color,
      height: 30,
      width: double.infinity,
      margin: EdgeInsets.only(bottom: 10),
    );
  }
}
