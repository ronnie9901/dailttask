import 'dart:async';
import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';




class first extends StatefulWidget {
  const first({super.key});

  @override
  State<first> createState() => _firstState();
}

class _firstState extends State<first> {
  @override
  Widget build(BuildContext context) {

    Timer.periodic(Duration(seconds: 1), (timer) {
      setState(() {
        dateTime  =DateTime.now();


        switch (dateTime.weekday)
        {
          case 1: day = 'monday';
          break;
          case 2: day = 'Tuesaday';
          break;
          case 3: day = 'wednesday';
          break;
          case 4: day = 'thursday';
          break;
          case 5: day = 'friday';
          break;
          case 6: day = 'saturday';
          break;
          case 6: day = 'sunday';
          break;

        }

      });
      if(dateTime.hour<11)
      {
        check='AM';
      }
      else
      {
        check= 'PM';
      }


    });


    return Scaffold(
      body: Column(
        children: [
          Container(
            alignment: Alignment.center,
            height: 714,
            width: double.infinity,
            decoration: BoxDecoration(

               image: DecorationImage(
                   fit: BoxFit.cover,
                   image: NetworkImage(
                       'https://i.pinimg.com/564x/08/9e/b3/089eb3d4aa77cc4c0f87701b679feaa5.jpg'
                   )
              ),
            ),
            child: Column(

              children: [
                SizedBox(height: 90,),
                Text('Alarm',style: TextStyle(fontSize: 20,color: Colors.red)
                  ,),
                SizedBox(height: 100,),
                Transform.rotate(angle: pi-10,child: Icon(Icons.notifications_active,size: 50,color: Colors.white,)) ,
                SizedBox(height: 60,),

                Text(' ${dateTime.day}/${dateTime.month}/${dateTime.year} ',style: TextStyle(
                    fontSize: 25,color: Colors.white
                ),),
                SizedBox(height: 20,),
                Text('${dateTime.hour%12} : ${dateTime.minute} : ${dateTime.second} $check',style: TextStyle(
                  fontSize: 25,color: Colors.red,fontWeight: FontWeight.bold,
                ),),
                Text(
                  day,
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.red,
                    fontWeight: FontWeight.bold,
                  ),
                ),


                Container(
                  margin: EdgeInsets.only(left: 240,top: 200),
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(10)
                  ),
                  child: IconButton(onPressed: () {
                 Navigator.of(context).pushNamed('/analog');
                  }, icon: Icon(CupertinoIcons.arrow_right)),
                )
              ],

            ),

          ),


        ],
      ),

    );
  }
}
DateTime dateTime=DateTime.now();
String check= '';
String day='';