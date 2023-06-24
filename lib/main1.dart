// ignore_for_file: unused_import

import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Booking.com',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
            seedColor: const Color.fromARGB(255, 50, 1, 227)),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Booking.com'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(children: <Widget>[
      Container(
          margin: const EdgeInsets.all(0),
          width: double.infinity,
          height: 350,
          color: const Color.fromARGB(255, 13, 2, 162),
          // color: const Color.fromARGB(255, 246, 83, 7),
          child: Column(children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                const Padding(
                    padding: EdgeInsets.only(left: 140, top: 10),
                    child: Text(
                      'Booking.com',
                      style: TextStyle(
                        fontSize: 25,
                        color: Colors.white,
                        decoration: TextDecoration.none,
                      ),
                    )),
                const Padding(
                    padding: EdgeInsets.only(left: 540, top: 10),
                    child: TextButton(
                      onPressed: null,
                      child: Text(
                        "INR",
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          decoration: TextDecoration.none,
                        ),
                      ),
                    )),
                const Padding(
                    padding: EdgeInsets.only(left: 5, top: 7),
                    child: IconButton(
                      // hoverColor: Colors.blueGrey,
                      onPressed: null,
                      icon: Icon(
                        Icons.help_outline,
                        color: Colors.white,
                      ),
                    )),
                const Padding(
                  padding: EdgeInsets.only(left: 5, top: 11),
                  child: TextButton(
                      onPressed: null,
                      child: Text(
                        'List your property',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          decoration: TextDecoration.none,
                        ),
                      )),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 12),
                  padding: const EdgeInsets.all(8.0),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(0),
                      color: Colors.white),
                  child: const Text(
                    "Register",
                    style: TextStyle(
                        color: Color.fromARGB(255, 16, 8, 243),
                        fontSize: 14,
                        decoration: TextDecoration.none),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 10, top: 12),
                  padding: const EdgeInsets.all(8.0),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(0),
                      color: Colors.white),
                  child: const Text(
                    "Sign in",
                    style: TextStyle(
                        color: Color.fromARGB(255, 16, 8, 243),
                        fontSize: 14,
                        decoration: TextDecoration.none),
                  ),
                )
              ],
            ),
            const Padding(
                padding: EdgeInsets.only(left: 140, top: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text("Stays"),
                    IconButton(
                      // hoverColor: Colors.blueGrey,
                      onPressed: null,
                      icon: Icon(
                        Icons.cottage_outlined,
                        color: Colors.white,
                      ),
                    ),
                  ],
                )),
          ])),
      Container(
          width: double.infinity,
          color: const Color.fromARGB(255, 253, 253, 255)),
    ]));

    // return Scaffold(
    //   appBar: AppBar(
    //       backgroundColor: Colors.orange,
    //       titleSpacing: 0.5,
    //       title: const Text('Booking.com')),
    //   body:const Center(
    //     child: MyWidget(),
    //   ),
    // body:const Column(
    //   children:[
    //     Row(
    //       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    //       crossAxisAlignment: CrossAxisAlignment.center

    //     )
    //   ]
    // ) ,
  }
}

// class MyWidget extends StatelessWidget {
//   const MyWidget({super.key});
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: <Widget>[
//         Expanded(
//             child: Container(
//           width: double.infinity,
//           decoration:const BoxDecoration(
//             gradient: LinearGradient(
//               begin: Alignment.topRight,
//               end: Alignment.bottomLeft,
//               colors: <Color>[Color(0xffFFCE00), Color(0xffE86F1c)],
//             ),
//           ),
//         ))
//       ],
//     );
//   }
// }



    
  

