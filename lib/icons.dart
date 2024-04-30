import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
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
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'bottons icons',
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Text('Common Buttons',style: TextStyle(
                  fontWeight: FontWeight.bold,fontSize: 25
              ),),
              Container(
                margin: EdgeInsets.all(10),
                height: 350,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.black87),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      SizedBox(height: 10,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          ElevatedButton(
                              onPressed: () {}, child: Text('evavated')),
                          ElevatedButton(
                            onPressed: () {},
                            child: const Text('+ icon'),
                          ),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.grey),
                            onPressed: () {},
                            child: const Text(
                              'Elevate',
                              style: TextStyle(color: Colors.black45),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 10,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          FilledButton(onPressed: () {}, child: Text(' Filled ')),
                          FilledButton(onPressed: () {}, child: Text(' + icons')),
                          FilledButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.grey),
                            onPressed: () {},
                            child: const Text(
                              'Filled',
                              style: TextStyle(color: Colors.black45),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 10,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          FilledButton.tonal(
                              onPressed: () {}, child: Text(' Filled ')),
                          FilledButton(onPressed: () {}, child: Text(' + icons')),
                          FilledButton.tonal(
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.grey),
                            onPressed: () {},
                            child: const Text(
                              'tonal',
                              style: TextStyle(color: Colors.black45),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 10,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          OutlinedButton(
                              onPressed: () {}, child: Text(' Outline ')),
                          OutlinedButton(onPressed: () {}, child: Text(' + icons')),
                          OutlinedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.grey),
                            onPressed: () {},
                            child: const Text(
                              'Outline',
                              style: TextStyle(color: Colors.black45),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 10,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          TextButton(
                              onPressed: () {}, child: Text(' Text ')),
                          TextButton(onPressed: () {}, child: Text(' + icons')),
                          TextButton(

                            onPressed: () {},
                            child: const Text(
                              ' Text',
                              style: TextStyle(color: Colors.black45),
                            ),
                          ),
                        ],
                      ),

                    ],
                  ),
                ),
              ),
              Text('Flotingactongbotton',style: TextStyle(
                  fontWeight: FontWeight.bold,fontSize: 25
              ),),
              Container(
                margin: EdgeInsets.all(10),
                height: 200,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.black87),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    FloatingActionButton(onPressed:() {

                    },child: Icon(Icons.add),),
                    SizedBox(
                      height: 70,
                      width: 70,
                      child: FloatingActionButton(onPressed:() {

                      },child: Icon(Icons.add,size: 40,),),

                    ),
                    SizedBox(
                        height: 50,
                        width: 100,

                        child: FloatingActionButton(onPressed:() {

                        },child: Text('+ create ',style: TextStyle(fontSize: 20),)

                        )
                    ),
                    SizedBox(
                      height: 90,
                      width: 90,
                      child: FloatingActionButton(onPressed:() {

                      },child: Icon(Icons.add,size: 40,),),

                    ),
                  ],
                ),
              ),
              Text('Icon botton',style: TextStyle(
                  fontWeight: FontWeight.bold,fontSize: 25
              ),),
              Container(
                margin: EdgeInsets.all(10),
                height: 150,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.black87),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [

                    IconButton(onPressed:() {

                    }, icon: Icon(Icons.settings,size: 30,)),
                    IconButton.outlined(
                      onPressed: () {},
                      icon: const Icon(Icons.shopping_cart,
                        color: Colors.black87,size: 30,),
                    ),
                    IconButton.filledTonal(onPressed: () {

                    }, icon: Icon(CupertinoIcons.search,size: 30,color: Colors.grey,)),
                    IconButton.filled(onPressed: () {

                    }, icon: Icon(CupertinoIcons.home,size: 30,)),

                  ],
                ),
              )
            ],

          ),
        ),
      ),

    );
  }
}
