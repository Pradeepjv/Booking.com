// ignore_for_file: unused_import

// import 'dart:html';
import 'dart:math';

import 'package:flutter/material.dart';
// import 'package:intl/intl.dart'; // For date formatting

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
  bool? isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(children: <Widget>[
      Container(
          margin: const EdgeInsets.all(0),
          width: double.infinity,
          height: 363.6,
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
                  padding: EdgeInsets.only(left: 540, top: 11, right: 12),
                  child: Text(
                    "INR",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      decoration: TextDecoration.none,
                    ),
                  ),
                ),
                const Padding(
                    padding: EdgeInsets.only(left: 12, top: 8, right: 12),
                    child: IconButton(
                      // hoverColor: Colors.blueGrey,
                      onPressed: null,
                      icon: Icon(
                        Icons.help_outline,
                        color: Colors.white,
                      ),
                    )),
                const Padding(
                  padding: EdgeInsets.only(left: 12, top: 11, right: 12),
                  child: Text(
                    'List your property',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      decoration: TextDecoration.none,
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 12, top: 12),
                  padding: const EdgeInsets.all(8.0),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(0),
                      color: const Color.fromARGB(255, 255, 255, 255)),
                  child: const Text(
                    "Register",
                    style: TextStyle(
                        color: Color.fromARGB(255, 5, 1, 119),
                        fontStyle: FontStyle.normal,
                        fontSize: 13,
                        decoration: TextDecoration.none),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 10, top: 12),
                  padding: const EdgeInsets.all(8.0),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(0),
                      color: const Color.fromARGB(255, 255, 255, 255)),
                  child: const Text(
                    "Sign in",
                    style: TextStyle(
                        color: Color.fromARGB(255, 5, 1, 119),
                        fontSize: 13,
                        decoration: TextDecoration.none),
                  ),
                )
              ],
            ),
            )InkWell(
              onTap: () {
                Navigator.pushNamedAndRemoveUntil(context, '/login', (
            
            const Padding(
                padding: EdgeInsets.only(left: 130, top: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    IconButton(
                      padding: EdgeInsets.only(right: 7),
                      onPressed: null,
                      icon: Icon(
                        Icons.cottage_outlined,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      "Stays",
                      style: TextStyle(
                        fontSize: 17,
                        color: Colors.white,
                      ),
                    ),
                    IconButton(
                      padding: EdgeInsets.only(left: 25, right: 7),
                      // hoverColor: Colors.blueGrey,
                      onPressed: null,
                      icon: Icon(
                        Icons.flight,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      "Flights",
                      style: TextStyle(fontSize: 17, color: Colors.white),
                    ),
                    IconButton(
                      padding: EdgeInsets.only(left: 25, right: 8),
                      onPressed: null,
                      icon: Icon(
                        Icons.hotel,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      "Flight + Hotel",
                      style: TextStyle(fontSize: 17, color: Colors.white),
                    ),
                    IconButton(
                      padding: EdgeInsets.only(left: 25, right: 7),
                      onPressed: null,
                      icon: Icon(
                        Icons.car_rental_outlined,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      "Car rentals",
                      style: TextStyle(fontSize: 17, color: Colors.white),
                    ),
                    IconButton(
                      padding: EdgeInsets.only(left: 25, right: 7),
                      onPressed: null,
                      icon: Icon(
                        Icons.attractions,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      "Attractions",
                      style: TextStyle(fontSize: 17, color: Colors.white),
                    ),
                    IconButton(
                      padding: EdgeInsets.only(left: 25, right: 7),
                      onPressed: null,
                      icon: Icon(
                        Icons.taxi_alert_outlined,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      "Airport taxis",
                      style: TextStyle(fontSize: 17, color: Colors.white),
                    ),
                  ],
                )),
            // code for 3rd row
            const Padding(
                padding: EdgeInsets.only(left: 130, top: 100),
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                  Text(
                    "Find your next stay",
                    style: TextStyle(fontSize: 48, color: Colors.white),
                  ),
                ])),
            const Padding(
                padding: EdgeInsets.only(left: 130),
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                  Text(
                    "Search deals on hotels, homes, and much more...",
                    style: TextStyle(fontSize: 24, color: Colors.white),
                  ),
                ])),
          ])),
      Container(
          width: 1000,
          height: 65,
          alignment: Alignment.center,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(7),
              border: Border.all(color: Colors.amberAccent, width: 5),
              boxShadow: const [
                BoxShadow(
                    color: Colors.white,
                    blurRadius: 2,
                    spreadRadius: 0,
                    offset: Offset(2, 2))
              ]),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: TextFormField(
                    decoration: InputDecoration(
                        prefixIcon: IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.location_city_outlined)),
                        labelText: "where are you going?",
                        suffixIcon: IconButton(
                            onPressed: () {}, icon: const Icon(Icons.close)),
                        fillColor: Colors.black,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(2),
                        ))),
              ),
              Expanded(
                child: TextFormField(
                    decoration: InputDecoration(
                        prefixIcon: IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.date_range_outlined)),
                        labelText: "Select date",
                        suffixIcon: IconButton(
                            onPressed: () {}, icon: const Icon(Icons.close)),
                        fillColor: Colors.black,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(2),
                        ))),
              ),
              Expanded(
                child: TextFormField(
                    decoration: InputDecoration(
                        prefixIcon: IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.person_2_outlined)),
                        labelText: "select room",
                        suffixIcon: IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.arrow_drop_down_sharp)),
                        fillColor: Colors.black,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(2),
                        ))),
              ),
              Container(
                width: 100,
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 51, 113, 219),
                  borderRadius: BorderRadius.circular(0),
                ),
                child: TextButton(
                  onPressed: () {
                    // Perform search operation
                    // Add your search logic here
                  },
                  child: const Text(
                    'Search',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ],
          )),

      // padding: const EdgeInsets.only(left: 140),
      Row(mainAxisAlignment: MainAxisAlignment.center, children: [
        Expanded(
          child: Checkbox(
            value: isChecked,
            // tristate: true,
            onChanged: (newBool) {
              setState(() => isChecked = newBool);
            },
            // const Text("I'm looking for an entire home or apartment")
          ),
        ),
        Padding(
            padding: const EdgeInsets.only(left: 140),
            child: Expanded(
              child: Checkbox(
                  value: isChecked,
                  // tristate: true,
                  onChanged: (newBool) {
                    setState(() => isChecked = newBool);
                  }),
            )),
        Expanded(
          child: Checkbox(
              value: isChecked,
              // tristate: true,
              onChanged: (newBool) {
                setState(() => isChecked = newBool);
              }),
        )
      ]),

      Container(
          width: double.infinity,
          height: 100,
          color: const Color.fromARGB(255, 253, 253, 255))
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
