import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const watch());
}

class watch extends StatelessWidget {
  const watch({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: strapwatch(),
    );
  }
}

class strapwatch extends StatefulWidget {
  const strapwatch({super.key});

  @override
  State<strapwatch> createState() => _strapwatchState();
}

class _strapwatchState extends State<strapwatch> {
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
                          style: TextStyle(color: Colors.white),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

DateTime dateTime = DateTime.now();

String Day = '';
String Month = '';
String ch ='';