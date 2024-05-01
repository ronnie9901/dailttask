import 'dart:async';
import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(const Bottons());
}

class Bottons extends StatelessWidget {
  const Bottons({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: bottonpage(),
    );
  }
}

class bottonpage extends StatefulWidget {
  const bottonpage({super.key});

  @override
  State<bottonpage> createState() => _bottonpageState();
}

class _bottonpageState extends State<bottonpage> {
  @override
  Widget build(BuildContext context) {

    Timer.periodic(Duration(seconds: 1), (timer) {
      setState(() {
        dateTime  =DateTime.now();
        if(dateTime.hour>11)
        {
          check='am';
        }
        else
        {
          check= 'pm';
        }

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


    });


    return Scaffold(
      body: Column(
        children: [
          Container(
            alignment: Alignment.center,
            height: 714,
            width: double.infinity,
            decoration: BoxDecoration(
              boxShadow: const [
                BoxShadow(

                    spreadRadius: 10,
                    blurRadius: 20,
                    blurStyle: BlurStyle.inner
                ),
              ],
              image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                      'https://cdn.pixabay.com/photo/2016/11/25/23/15/moon-1859616_640.jpg'
                  )
              ),


            ),
            child: Column(

              children: [
                SizedBox(height: 90,),
                Text('Alarm',style: TextStyle(fontSize: 20,color: Colors.white)
                  ,),
                SizedBox(height: 190,),
                Transform.rotate(angle: pi-10,child: Icon(Icons.notifications_active,size: 50,color: Colors.white,)) ,
                SizedBox(height: 30,),

                Text('  ${dateTime.day}  : ${dateTime.month} : ${dateTime.year} ',style: TextStyle(
                    fontSize: 30,color: Colors.white
                ),),
                Text('${dateTime.hour%12} : ${dateTime.minute} : ${dateTime.second} ',style: TextStyle(
                  fontSize: 30,color: Colors.white,fontWeight: FontWeight.bold,
                ),),
                Text(day,style: TextStyle(
                  fontSize: 20,color: Colors.white,fontWeight: FontWeight.bold,
                ),),
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