import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled/app_cubit/app_cubit.dart';
import 'firstscreen.dart';

void main() {
  runApp(const mynewapp());
}






class mynewapp extends StatefulWidget {
  const mynewapp({Key? key}) : super(key: key);

  @override
  State<mynewapp> createState() => _mynewappState();
}

class _mynewappState extends State<mynewapp> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create:(BuildContext context)=>AppCubit(),

      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: FirstScreen(),
      ),
    );
  }
}





















