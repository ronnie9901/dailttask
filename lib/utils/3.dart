import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class third extends StatefulWidget {
  const third({super.key});

  @override
  State<third> createState() => _thirdState();
}

class _thirdState extends State<third> {
  @override
  Widget build(BuildContext context) {
    Timer.periodic(Duration(seconds: 1), (timer) {
      setState(() {
        if (dateTime.hour < 11) {
          ch = 'Am';
        } else {
          ch = 'Pm';
        }
        switch (dateTime.weekday) {
          case 1:
            Day = 'monday';
            break;
          case 2:
            Day = 'Tuesday';
            break;
          case 3:
            Day = 'Wednesday';
            break;
          case 4:
            Day = 'Thursday';
            break;
          case 5:
            Day = 'Friday';
            break;
          case 6:
            Day = 'Saturday';
            break;
          case 7:
            Day = 'Sunday';
        }
        switch (dateTime.month) {
          case 1:
            Month = 'Jaun';
            break;
          case 2:
            Month = 'Feb';
            break;
          case 3:
            Month = 'Mar';
            break;
          case 4:
            Month = 'Apr';
            break;
          case 5:
            Month = 'May';
            break;
          case 6:
            Month = 'Jan';
            break;
          case 7:
            Month = 'July';
          case 8:
            Month = 'Aug';
            break;
          case 9:
            Month = 'Sept';
            break;
          case 10:
            Month = 'Oct';
            break;
          case 11:
            Month = 'Nev';
            break;
          case 12:
            Month = 'Dec';
            break;
        }

        dateTime = DateTime.now();
      });
    });
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
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
                gradient: LinearGradient(
                    begin: AlignmentDirectional.topStart,
                    colors: [
                      Colors.black12,
                      Colors.white24,
                    ]
                ),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(
                  a[index]['img']
                )
              )
            ),

            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Align(


                  alignment: Alignment.center,
                  child: Stack(
                    children: [
                      SizedBox(
                        height: 200,
                        width: 200,
                        child: CircularProgressIndicator(
                          strokeWidth: 10,
                          color: Colors.orange,
                          value:
                          (dateTime.hour % 12 + (dateTime.minute / 60)) / 160,
                        ),
                      ),
                      SizedBox(
                        height: 200,
                        width: 200,
                        child: CircularProgressIndicator(
                          strokeWidth: 8,
                          color: Colors.green,
                          value: dateTime.minute / 60,
                        ),
                      ),
                      SizedBox(
                        height: 200,
                        width: 200,
                        child: CircularProgressIndicator(
                          strokeWidth: 2,
                          color: Colors.white,
                          value: dateTime.second / 60,
                        ),
                      ),
                      Container(
                        height: 200,
                        width: 200,
                        decoration: BoxDecoration(),
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      '${ dateTime.hour%12 }:''${ '0${dateTime.minute}'}:${(dateTime.second)}  $ch',
                                      style: const TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white),
                                    ),
                                  ],
                                ),
                              ),
                              Text(
                                Day,
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                    color: Colors.white),
                              ),
                              Text(
                                '${dateTime.day} $Month',
                                style: TextStyle(color: Colors.red),
                              ),

                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(height: 200,),
                OutlinedButton(

                  onPressed: () {

                    if(index==1)
                    {
                      index=0;
                    }
                    else
                    {
                      index++;
                    }
                  },
                  child: Text('ChangeTheme',style: TextStyle(
                      color: Colors.red
                  ),),)
              ],
            ),

          ),



        ],
      ),
    );
  }
}

DateTime dateTime = DateTime.now();

String Day = '';
String Month = '';
String ch ='';
 int index=0;

List a=[
  {
    'img': 'https://i.pinimg.com/564x/08/9e/b3/089eb3d4aa77cc4c0f87701b679feaa5.jpg',
  },
  {
    'img': 'https://4kwallpapers.com/images/wallpapers/itachi-uchiha-naruto-amoled-black-background-5k-5800x3197-4962.png',
  },


];