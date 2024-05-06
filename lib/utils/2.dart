import 'dart:async';
import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';


class second extends StatefulWidget {
  const second({super.key});

  @override
  State<second> createState() => _secondState();
}

class _secondState extends State<second> {
  @override
  Widget build(BuildContext context) {
    Timer.periodic(Duration(seconds: 1), (timer) {
      setState(() {
        dateTime = DateTime.now();
        if (dateTime.hour < 11) {
          check = 'AM';
        } else {
          check = 'PM';
        }

        switch (dateTime.weekday) {
          case 1:
            day = 'monday';
            break;
          case 2:
            day = 'Tuesaday';
            break;
          case 3:
            day = 'wednesday';
            break;
          case 4:
            day = 'thursday';
            break;
          case 5:
            day = 'friday';
            break;
          case 6:
            day = 'saturday';
            break;
          case 6:
            day = 'sunday';
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
                      img[index]['image'])),
            ),
            child: Column(
              children: [
                SizedBox(
                  height: 90,
                ),
                Text(
                  'Alarm',
                  style: TextStyle(fontSize: 20, color: Colors.red),
                ),
                SizedBox(
                  height: 30,
                ),
                Transform.rotate(
                    angle: pi - 10,
                    child: Icon(
                      Icons.notifications_active,
                      size: 50,
                      color: Colors.white,
                    )),
                SizedBox(
                  height: 30,
                ),
                Text(
                  '  ${dateTime.day}  / ${dateTime.month} / ${dateTime.year} ',
                  style: TextStyle(fontSize: 30, color: Colors.white),
                ),
                Text(
                  '${dateTime.hour % 12} : ${dateTime.minute} : ${dateTime.second}  $check ',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  day,
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.red,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  alignment: Alignment.center,
                  height: 180,
                  width: 180,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.white, width: 2),
                      shape: BoxShape.circle),
                  child: Stack(
                    children: [
                      ...List.generate(
                        60,
                            (index) => Transform.rotate(
                            angle: ((index + 1)) * 6 * pi / 180,
                            child: ((index + 1) % 5 == 0)
                                ? VerticalDivider(
                              thickness: 2,
                              color: Colors.red,
                              indent: 0,
                              endIndent: 160,
                            )
                                : VerticalDivider(
                              thickness: 3,
                              color: Colors.white,
                              indent: 0,
                              endIndent: 170,
                            )),
                      ),


                      Transform.rotate(
                        angle: dateTime.second * (6 * pi)/180,
                        child: const VerticalDivider(
                          thickness: 3,
                          indent: 20,
                          endIndent: 73,
                          color: Colors.red,
                        ),
                      ),
                      Transform.rotate(
                        angle: dateTime.minute * (6 * pi)/180,
                        child: const VerticalDivider(
                          thickness: 3,
                          indent: 28,
                          endIndent: 73,
                          color: Colors.grey,
                        ),
                      ),
                      Transform.rotate(
                        angle: dateTime.hour * (30 * pi)/180,
                        child: const VerticalDivider(
                          thickness: 4,
                          indent: 35,
                          endIndent: 73,
                        ),
                      )
                    ],
                  ),

                ),
                SizedBox(height: 50,),
                Positioned(
                  bottom: 5,
                  left:125,
                  child: OutlinedButton(
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
                    ),),),

                ),
                Container(
                  margin: EdgeInsets.only(left: 240),
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(10)
                  ),
                  child: IconButton(onPressed: () {
                    Navigator.of(context).pushNamed('/strap');
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

DateTime dateTime = DateTime.now();
String check = '';
String day = '';
int index =0;


List img=[
  {
    'image': 'https://i.pinimg.com/564x/08/9e/b3/089eb3d4aa77cc4c0f87701b679feaa5.jpg',
  },
  {
    'image': 'https://e0.pxfuel.com/wallpapers/904/49/desktop-wallpaper-sasuke-sharingan-red-eye-naruto-shippuden-thumbnail.jpg',
  },


];
