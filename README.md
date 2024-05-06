# dailttask

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.




<h3 align="center">1. Icon button Task</h3>

###

<h1 align="left"></h1>


###

<div align="center">
  <img height="550" src="https://github.com/ronnie9901/dailttask/assets/148763509/610569ea-8afa-4874-8ec2-8cfb001bb4d1"  />

</div>

<h3 align="center">1. clock Task</h3>

###

<h1 align="left"></h1>


###

<div align="center">
  <img height="550" src="https://github.com/ronnie9901/dailttask/assets/148763509/9440f66f-4730-4dce-9469-6fddbee33252"  />

</div>

<h3 align="center">1. Analogue clock Task</h3>

###

<h1 align="left"></h1>


###

<div align="center">
  <img height="550" src="https://github.com/ronnie9901/dailttask/assets/148763509/be1c6c34-f1a7-4ccc-b42f-4e39cf019be4"  />

</div>


  <img height="550" src="https://github.com/ronnie9901/dailttask/assets/148763509/d4287ccb-4591-499a-9bed-ca713b1ea27c"  />


 <img height="550" src="https://github.com/ronnie9901/dailttask/assets/148763509/09b43b99-1c65-46da-804f-75567703b52c"  />



  <img height="550" src="https://github.com/ronnie9901/dailttask/assets/148763509/c079e5be-4cdd-49de-b0ac-bdab4b9d5d85"  />












https://github.com/ronnie9901/dailttask/assets/148763509/0e567651-645e-4bda-8e6e-b39f1f9470d1





  <h1>  Asyncronous Programming </h1>
  
 <h2> 1. What is Asynchronous programming?</h2>
 defination :  Asynchronous programming is a programming paradigm that allows tasks or operations to run independently and concurrently, without waiting for each other to complete before moving on to the next task.


 <h2> 2. What is Future Class ?</h2>
  defination : Future represents a value that may not be available yet. It encapsulates an asynchronous operation and provides a way to handle the result or error when it becomes available.


 <h2> 3. What is Duration class & Future.delayed() constructor with Example ?</h2>
Duration : A span of time, such as 27 days, 4 hours, 12 minutes, and 3 seconds. A Duration represents a difference from one point in time to another.

Future.delayed() : Delay function creates a future that runs its computation after a delay.

Example
  void main(){

  print("Hello world");

  Future.delayed(Duration(seconds: 3), () {
  
    print("Hello Dart!"); // this line will execute after the duration completes
  },);

  print("Hello Flutter!");
}

 <h2> 4. What is the Use of the async & await keyword?</h2>
async : The async keyword is used to mark a function as asynchronous.

await : The await keyword is used to pause the execution of an asynchronous function until a particular asynchronous operation is completed.



 <h2> 5. What is Recursion ? With Example.</h2>
The function calls itself repeatedly until a base condition is reached.




 <h2>  6. What is Timer class with example? </h2>
A countdown timer that can be configured to fire once or repeatedly.



Example
import 'dart:async';

void main(){

    print("Hello world !");
    Timer(Duration(seconds: 1), () {
      print('Jay Shree Ram');
    });
    
}


 <h2>7. What is Timer.periodic and use with Example?</h2>
About: " Time periodic" refers to something that occurs or repeats at regular intervals of time. In various fields like physics, mathematics, and engineering, time periodicity is often a fundamental concept. 

examle :

void main(){

    import 'dart:async';
    Timer.periodic(Duration(seconds: 1), (timer) 
    {
      print('hello rohan');
    });
}

