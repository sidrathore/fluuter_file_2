import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      body: SafeArea(
          child: Container(
            child: Column(
              children: [
                Container(
                   
                  child: Text('login by mobile no'),
                ),
                Container(
                  child: Row(
                    children: [
                      Stack(
                        children: [
                          Container(
                            width: 200,
                            height: 30,
                            
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: Colors.grey
                              
                            ),
                          ),
                          
                          Container(
                            margin: EdgeInsets.only(left: 180,top: 5),
                            width: 35,
                            height: 20,
                            
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: Colors.redAccent,
                            ),
                            )
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          ),

        ),
      ),
    ),
  );
}
