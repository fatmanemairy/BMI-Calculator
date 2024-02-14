
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class secondscreen extends StatelessWidget {
  const secondscreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold (
      /*body: Center(
    // child : Text("Second Screen")
      ),*/
      backgroundColor: Color(0XFF0A0E21),
      body:Column(

        children: [

          Container( height: 160,
            width: double.infinity,
            decoration:BoxDecoration(
                color: Color(0XFF1F1B31),
                borderRadius: BorderRadius.circular(20)),

          ),

        ],


      ),
    );
  }
}
