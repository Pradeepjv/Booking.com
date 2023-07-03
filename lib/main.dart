
// ignore_for_file: unused_import

// import 'dart:html';
import 'dart:math';

import 'package:flutter/material.dart';
// ignore: unnecessary_import
import 'package:flutter/services.dart';
// import 'package:booking_com/home.dart';
import 'package:grid/home.dart';



// import 'package:intl/intl.dart'; // For date formatting


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {

  const MyApp({Key? key}) : super(key: key);


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


