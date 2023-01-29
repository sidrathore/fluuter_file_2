import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      body: SafeArea(
        child: Container(
          
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            
           
            children: [
              
              Container(
                padding: EdgeInsets.all(10),
                child: Text('Login with mobile number',style: TextStyle(fontSize: 18),),
              ),
              Stack(
                
                 alignment: Alignment.centerRight,
                 clipBehavior: Clip.none,
                  children: [
                    Container(
                      padding: EdgeInsets.only(top: 5,bottom: 5,left: 8),
                      width: 130,
                      decoration: BoxDecoration(
                       border: Border.all(),
                       borderRadius: BorderRadius.circular(8),
                      ),
                      child: Text('+5493'),
                    ),
                    Positioned(
                      left: 110,
                      child: Container(
                        
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          color: Colors.white,
                         border: Border.all(),
                         borderRadius: BorderRadius.circular(18),
                        ),
                        child: Icon(Icons.done_sharp,color: Colors.green,),
                      ),
                    )
                  ],
                
              )
            ],
          ),
        ),
      ),
    ),
  ));
}
