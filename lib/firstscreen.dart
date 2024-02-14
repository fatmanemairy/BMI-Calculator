
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled/app_cubit/app_cubit.dart';
import 'package:untitled/app_cubit/app_states.dart';
import 'package:untitled/secondscreen.dart';
import 'app_colors.dart';





class FirstScreen extends StatelessWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    //AppCubit cubit=AppCubit();

    return BlocBuilder<AppCubit,AppStates>(
        builder:(BuildContext context,dynamic state){
          AppCubit cubit=BlocProvider.of<AppCubit>(context);

               return Scaffold(
                 backgroundColor: Color(0XFF0A0E21),
                 appBar: AppBar(
                   backgroundColor: Color(0XFF0A0E21),
                   centerTitle: true,
                   title: Text("BMI CALCULATOR"),

                 ),
                 body :Column(
                   children: [
                     Row(
                       mainAxisAlignment: MainAxisAlignment.center,
                       children: [
                         GestureDetector(
                           onTap: (){
                             cubit.ChangeGender(false);
                           },
                           //female
                           child: Container(
                             width: 160,
                             height: 160,
                             decoration: BoxDecoration(
                                 color :cubit.ismale != null &&(cubit.ismale! ==false)?Colors.pink :lightgrey,                      borderRadius: BorderRadius.circular(20)

                             ),
                             child: Column(
                               mainAxisAlignment: MainAxisAlignment.center,
                               children: [
                                 Icon(Icons.female,
                                   color: Colors.white,
                                   size: 70,),

                                 SizedBox(height: 15,),
                                 Text(
                                   "FEMALE",
                                   style: TextStyle(
                                       color: Colors.white
                                   ),
                                 ),
                               ],
                             ),
                           ),
                         ),


                         SizedBox(width: 10,),



                         GestureDetector(
                           onTap: (){

                             cubit.ChangeGender(true);

                           },
                           //male
                           child:     Container(
                             width: 160,
                             height: 160,
                             decoration: BoxDecoration(
                                 color :cubit.ismale != null &&(cubit.ismale!)?Colors.pink :lightgrey,
                                 borderRadius: BorderRadius.circular(20)

                             ),
                             child: Column(
                               mainAxisAlignment: MainAxisAlignment.center,
                               children: [
                                 Icon(Icons.male,
                                   color: Colors.white,
                                   size: 70,),

                                 SizedBox(height: 15,),
                                 Text(
                                   "MALE",
                                   style: TextStyle(
                                       color: Colors.white
                                   ),
                                 ),
                               ],
                             ),
                           ),

                         ),

                       ],
                     ),


                     SizedBox(height: 15,),

                     Container(
                       height: 160,
                       width: double.infinity,
                       decoration:BoxDecoration(
                           color: Color(0XFF1F1B31),
                           borderRadius: BorderRadius.circular(20)
                       ),

                       child:Column(
                         mainAxisAlignment: MainAxisAlignment.center,
                         children: [
                           //Height
                           Text(
                             "HEIGHT",
                             style: TextStyle(
                                 color: Colors.white
                             ),
                           ),

                           SizedBox(height: 30,),

                           Text(
                             (cubit.currentheight.ceil()).toString(),
                             style: TextStyle(
                                 color: Colors.white,
                                 fontSize:30
                             ),
                           ),
                         //Height slider
                           Slider(
                             min: 50,
                             max: 250,
                             activeColor: Colors.pink,
                             value:cubit.currentheight,
                              onChanged: (double newvalue) {

                               cubit.ChangeHeight(newvalue);
                               },
                           )

                         ],
                       ),
                     ),

                     SizedBox(height: 15,),



                     Row(
                       mainAxisAlignment: MainAxisAlignment.center,
                       children: [
                         Container(
                           width: 160,
                           height: 160,
                           decoration: BoxDecoration(
                               color: Color(0XFF1F1B31),
                               borderRadius: BorderRadius.circular(20)

                           ),
                           child: Column(
                             mainAxisAlignment: MainAxisAlignment.center,
                             children: [

                               SizedBox(height: 15,),
                               Text(
                                 "WEIGHT",
                                 style: TextStyle(
                                     color: Colors.white
                                 ),
                               ),
                               SizedBox(height: 10,),
                               Text(
                                 cubit.currentw.toString(),
                                 style: TextStyle(
                                     color: Colors.white,
                                     fontSize:30
                                 ),
                               ),
                               SizedBox(height: 10,),
                               Row(
                                 mainAxisAlignment: MainAxisAlignment.center,
                                 children: [
                                   FloatingActionButton(
                                       backgroundColor: Colors.pink,
                                       child: Icon(CupertinoIcons.minus),
                                       onPressed:(){
                                         if(cubit.currentw>50){
                                           cubit.ChangeWeight(cubit.currentw -1);
                                         }
                                       }
                                   ),

                                   SizedBox(width: 10,),

                                   FloatingActionButton(
                                       backgroundColor: Colors.pink,
                                       child: Icon(CupertinoIcons.plus),
                                       onPressed:(){
                                         cubit.ChangeWeight(cubit.currentw +1);
                                       }
                                   )



                                 ],
                               ),
                             ],
                           ),
                         ),

                         SizedBox(width: 10,),

                         Container(
                           width: 160,
                           height: 160,
                           decoration: BoxDecoration(
                               color: lightgrey,
                               borderRadius: BorderRadius.circular(20)

                           ),
                           child: Column(
                             mainAxisAlignment: MainAxisAlignment.center,
                             children: [


                               SizedBox(height: 15,),
                               Text(
                                 "AGE",
                                 style: TextStyle(
                                     color: Colors.white
                                 ),
                               ),
                               SizedBox(height: 10,),
                               Text(
                                 cubit. currentage.toString(),
                                 style: TextStyle(
                                     color: Colors.white
                                 ),
                               ),
                               SizedBox(height: 15,),
                               Row(
                                 mainAxisAlignment: MainAxisAlignment.center,
                                 children: [
                                   FloatingActionButton(
                                       backgroundColor: Colors.pink,
                                       child: Icon(CupertinoIcons.minus),
                                       onPressed:(){
                                         if(cubit.currentage>9){
                                           cubit.ChangeAge(cubit.currentage +1);
                                         }


                                       }
                                   ),

                                   SizedBox(width: 10,),

                                   FloatingActionButton(
                                       backgroundColor: Colors.pink,
                                       child: Icon(CupertinoIcons.plus),
                                       onPressed:(){
                                         cubit.ChangeAge(cubit.currentage +1);
                                       }
                                   )



                                 ],
                               ),

                             ],
                           ),
                         ),

                       ],
                     ),
                   ],
                 ),
                 bottomSheet:GestureDetector(
                   onTap: (){

                     Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context)=>secondscreen() ));

                   },
                   child:  Container(
                     height: 50,
                     width: double.infinity,
                     decoration: BoxDecoration(
                         color: Colors.pink
                     ),
                     child: Center(
                       child: Text("CALCULATE",
                         style: TextStyle(color: Colors.white),

                       ),
                     ),

                   ),
                 ),
               );
        },

    );
  }
}


