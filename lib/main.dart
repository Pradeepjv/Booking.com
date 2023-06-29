import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Footer'),
        ),
        body: const SingleChildScrollView(
          child: Footer(),
        ),
      ),
    );
  }
}

class Footer extends StatelessWidget {
  const Footer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey),
              borderRadius: BorderRadius.circular(8.0),
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: 150.0,
                  height: 150.0,
                  child: Image.asset('assets/badge.png'),
                ),
                const SizedBox(width: 16.0),
                Container(
                  margin: const EdgeInsets.all(15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Get instant discounts',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18.0,
                        ),
                      ),
                      const SizedBox(height: 8.0),
                      const Text(
                        'Just sign into your Booking.com account and look for the blue Genius logo to save',
                        style: TextStyle(fontSize: 16.0),
                      ),
                      const SizedBox(height: 16.0),
                      Row(
                        children: [
                          OutlinedButton(
                            onPressed: () {},
                            child: const Text('Sign In'),
                          ),
                          const SizedBox(width: 8.0),
                          OutlinedButton(
                            onPressed: () {},
                            child: const Text('Register'),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 16.0),
          Container(
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey),
              borderRadius: BorderRadius.circular(8.0),
            ),
            padding: const EdgeInsets.only(top: 16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(1000.0),
                    ),
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Text(
                          'Find Homes',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 25.0,
                            color: Colors.white,
                          ),
                        ),
                        const Text(
                          'For your next Trip',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 25.0,
                            color: Colors.white,
                          ),
                        ),
                        const SizedBox(height: 16.0),
                        Column(
                          children: [
                            SizedBox(
                              width: 175,
                              child: TextButton(
                                onPressed: () {},
                                style: ButtonStyle(
                                  backgroundColor:
                                      MaterialStateProperty.all(Colors.white),
                                ),
                                child: const Text(
                                  'Discover Homes',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16.0,
                                    color: Colors.blue,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    SizedBox(
                      width: 350.0,
                      height: 350.0,
                      child: Image.asset('assets/badge2.png'),
                    ),
                    const SizedBox(width: 16.0),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(height: 16.0),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.only(left: 125.0),
                child: const Text(
                  'Destinations we love',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0,
                  ),
                ),
              ),
              const SizedBox(height: 16.0),
              Padding(
                padding: const EdgeInsets.only(left: 125.0),
                child: Row(
                  children: [
                    Flexible(
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          shape: const StadiumBorder(),
                        ),
                        child: const Text('Regions'),
                      ),
                    ),
                    const SizedBox(width: 8.0),
                    Flexible(
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          shape: const StadiumBorder(),
                        ),
                        child: const Text('Cities'),
                      ),
                    ),
                    const SizedBox(width: 8.0),
                    Flexible(
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          shape: const StadiumBorder(),
                        ),
                        child: const Text('Places of interest'),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 16.0),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Phuket Province',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        '3234 properties',
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        'Tenerife',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        '4827 properties',
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        'Ibiza',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        '2153 properties',
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        'Bihar',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        '162 properties',
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        'Zanzibar',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        '1475 properties',
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(width: 20),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Isle of Wight',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        '896 properties',
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        'Hawaii',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        '7419 properties',
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        'Guernsey',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        '296 properties',
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        'Lake District',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        '563 properties',
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        'Ras Al Khaimah',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        '1891 properties',
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(width: 20),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Bora Bora',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        '982 properties',
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        'Santorini',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        '3254 properties',
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        'Mykonos',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        '2548 properties',
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        'Uttar Pradesh',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        '457 properties',
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        'Texel',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        '784 properties',
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(width: 20),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Bali',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        '5937 properties',
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        'Jersey',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        '432 properties',
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        'England',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        '8754 properties',
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        'Cornwall',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        '3167 properties',
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        'Sydney',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        '6358 properties',
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 100.0),
              Container(
                color: const Color.fromARGB(
                    255, 0, 34, 79), // Set the dark blue color here
                padding: const EdgeInsets.all(50.0),
                child: Column(
                  children: [
                    const Center(
                      child: Text(
                        'Save time, save money!',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 25.0,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    const Center(
                      child: Text(
                        'Sign up and we will send the best deals to you',
                        style: TextStyle(
                          fontWeight: FontWeight.normal,
                          fontSize: 20.0,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    const SizedBox(height: 16.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          color: Colors.white,
                          width: 400,
                          child: TextFormField(
                            decoration: const InputDecoration(
                              labelText: 'Email',
                              border: OutlineInputBorder(),
                            ),
                          ),
                        ),
                        const SizedBox(width: 16.0),
                        SizedBox(
                          height: 53,
                          width: 161,
                          child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.blue[
                                  900], // Set the dark blue color as button background
                            ),
                            child: const Text('Subscribe'),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.all(30),
                color: const Color.fromRGBO(0, 23, 134, 1),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: 28,
                          width: 134,
                          child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              backgroundColor: const Color.fromRGBO(0, 23, 134, 1),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(1.0),
                                side: const BorderSide(
                                  color: Colors
                                      .white, // Set the button's border color to white
                                ),
                              ),
                            ),
                            child: const Text(
                              'List your property',
                              style: TextStyle(fontSize: 12),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 50),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Mobile version',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 13,
                              fontWeight: FontWeight.bold,
                              decoration: TextDecoration.underline),
                        ),
                        SizedBox(width: 20),
                        Text(
                          'Your account',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 13,
                              decoration: TextDecoration.underline),
                        ),
                        SizedBox(width: 20),
                        Text(
                          'Make changes online to your booking',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 13,
                              decoration: TextDecoration.underline),
                        ),
                        SizedBox(width: 20),
                        Text(
                          'Customer service help',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 13,
                              decoration: TextDecoration.underline),
                        ),
                        SizedBox(width: 20),
                        Text(
                          'Become an affiliate',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 13,
                              decoration: TextDecoration.underline),
                        ),
                        SizedBox(width: 20),
                        Text(
                          'Booking.com for Business',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 13,
                              decoration: TextDecoration.underline),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
          Container(
            height: 550,
            padding: const EdgeInsets.fromLTRB(225, 30, 225, 20),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Countries',
                      style: TextStyle(color: Colors.blue
                          //   fontWeight: FontWeight.bold,
                          ),
                    ),
                    // Text(
                    //   '3234 properties',
                    //   style: TextStyle(
                    //     color: Colors.grey,
                    //   ),
                    // ),
                    SizedBox(height: 10),
                    Text(
                      'Regions',
                      style: TextStyle(color: Colors.blue
                          //   fontWeight: FontWeight.bold,
                          ),
                    ),
                    // Text(
                    //   '4827 properties',
                    //   style: TextStyle(
                    //     color: Colors.grey,
                    //   ),
                    // ),
                    SizedBox(height: 10),
                    Text(
                      'Cities',
                      style: TextStyle(color: Colors.blue
                          //   fontWeight: FontWeight.bold,
                          ),
                    ),
                    // Text(
                    //   '2153 properties',
                    //   style: TextStyle(
                    //     color: Colors.grey,
                    //   ),
                    // ),
                    SizedBox(height: 10),
                    Text(
                      'Districts',
                      style: TextStyle(color: Colors.blue
                          //   fontWeight: FontWeight.bold,
                          ),
                    ),
                    // Text(
                    //   '162 properties',
                    //   style: TextStyle(
                    //     color: Colors.grey,
                    //   ),
                    // ),
                    SizedBox(height: 10),
                    Text(
                      'Airports',
                      style: TextStyle(color: Colors.blue
                          //   fontWeight: FontWeight.bold,
                          ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Hotels',
                      style: TextStyle(color: Colors.blue
                          //   fontWeight: FontWeight.bold,
                          ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Places of interest',
                      style: TextStyle(color: Colors.blue
                          //   fontWeight: FontWeight.bold,
                          ),
                    ),
                    // Text(
                    //   '1475 properties',
                    //   style: TextStyle(
                    //     color: Colors.grey,
                    //   ),
                    // ),
                  ],
                ),
                SizedBox(width: 20),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Homes',
                      style: TextStyle(color: Colors.blue
                          //   fontWeight: FontWeight.bold,
                          ),
                    ),
                    // Text(
                    //   '3234 properties',
                    //   style: TextStyle(
                    //     color: Colors.grey,
                    //   ),
                    // ),
                    SizedBox(height: 10),
                    Text(
                      'Apartments',
                      style: TextStyle(color: Colors.blue
                          //   fontWeight: FontWeight.bold,
                          ),
                    ),
                    // Text(
                    //   '4827 properties',
                    //   style: TextStyle(
                    //     color: Colors.grey,
                    //   ),
                    // ),
                    SizedBox(height: 10),
                    Text(
                      'Resorts',
                      style: TextStyle(color: Colors.blue
                          //   fontWeight: FontWeight.bold,
                          ),
                    ),
                    // Text(
                    //   '2153 properties',
                    //   style: TextStyle(
                    //     color: Colors.grey,
                    //   ),
                    // ),
                    SizedBox(height: 10),
                    Text(
                      'Villas',
                      style: TextStyle(color: Colors.blue
                          //   fontWeight: FontWeight.bold,
                          ),
                    ),
                    // Text(
                    //   '162 properties',
                    //   style: TextStyle(
                    //     color: Colors.grey,
                    //   ),
                    // ),
                    SizedBox(height: 10),
                    Text(
                      'Hostels',
                      style: TextStyle(color: Colors.blue
                          //   fontWeight: FontWeight.bold,
                          ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'B&Bs',
                      style: TextStyle(color: Colors.blue
                          //   fontWeight: FontWeight.bold,
                          ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Guest houses',
                      style: TextStyle(color: Colors.blue
                          //   fontWeight: FontWeight.bold,
                          ),
                    ),
                  ],
                ),
                SizedBox(width: 20),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Unique places to stay',
                      style: TextStyle(color: Colors.blue
                          //   fontWeight: FontWeight.bold,
                          ),
                    ),
                    // Text(
                    //   '3234 properties',
                    //   style: TextStyle(
                    //     color: Colors.grey,
                    //   ),
                    // ),
                    SizedBox(height: 10),
                    Text(
                      'All destinations',
                      style: TextStyle(color: Colors.blue
                          //   fontWeight: FontWeight.bold,
                          ),
                    ),
                    // Text(
                    //   '4827 properties',
                    //   style: TextStyle(
                    //     color: Colors.grey,
                    //   ),
                    // ),
                    SizedBox(height: 10),
                    Text(
                      'All flight destinations',
                      style: TextStyle(color: Colors.blue
                          //   fontWeight: FontWeight.bold,
                          ),
                    ),
                    // Text(
                    //   '2153 properties',
                    //   style: TextStyle(
                    //     color: Colors.grey,
                    //   ),
                    // ),
                    SizedBox(height: 10),
                    Text(
                      'All car rental locations',
                      style: TextStyle(color: Colors.blue
                          //   fontWeight: FontWeight.bold,
                          ),
                    ),
                    // Text(
                    //   '162 properties',
                    //   style: TextStyle(
                    //     color: Colors.grey,
                    //   ),
                    // ),
                    SizedBox(height: 10),
                    Text(
                      'Discover',
                      style: TextStyle(color: Colors.blue
                          //   fontWeight: FontWeight.bold,
                          ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Reviews',
                      style: TextStyle(color: Colors.blue
                          //   fontWeight: FontWeight.bold,
                          ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Discover monthly stays',
                      style: TextStyle(color: Colors.blue
                          //   fontWeight: FontWeight.bold,
                          ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Unpacked: Travel articles',
                      style: TextStyle(color: Colors.blue
                          //   fontWeight: FontWeight.bold,
                          ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Seasonal and holiday deals',
                      style: TextStyle(color: Colors.blue
                          //   fontWeight: FontWeight.bold,
                          ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Traveller Review Awards',
                      style: TextStyle(color: Colors.blue
                          //   fontWeight: FontWeight.bold,
                          ),
                    ),
                  ],
                ),
                SizedBox(width: 20),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Car rental',
                      style: TextStyle(color: Colors.blue
                          //   fontWeight: FontWeight.bold,
                          ),
                    ),
                    // Text(
                    //   '3234 properties',
                    //   style: TextStyle(
                    //     color: Colors.grey,
                    //   ),
                    // ),
                    SizedBox(height: 10),
                    Text(
                      'Flight finder',
                      style: TextStyle(color: Colors.blue
                          //   fontWeight: FontWeight.bold,
                          ),
                    ),
                    // Text(
                    //   '4827 properties',
                    //   style: TextStyle(
                    //     color: Colors.grey,
                    //   ),
                    // ),
                    SizedBox(height: 10),
                    Text(
                      'Restaurant reservations',
                      style: TextStyle(color: Colors.blue
                          //   fontWeight: FontWeight.bold,
                          ),
                    ),
                    // Text(
                    //   '2153 properties',
                    //   style: TextStyle(
                    //     color: Colors.grey,
                    //   ),
                    // ),
                    SizedBox(height: 10),
                    Text(
                      'Booking.com for Travel Agents',
                      style: TextStyle(color: Colors.blue
                          //   fontWeight: FontWeight.bold,
                          ),
                    ),
                  ],
                ),
                SizedBox(width: 20),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Coronavirus (COVID-19) FAQs',
                      style: TextStyle(color: Colors.blue
                          //   fontWeight: FontWeight.bold,
                          ),
                    ),
                    // Text(
                    //   '3234 properties',
                    //   style: TextStyle(
                    //     color: Colors.grey,
                    //   ),
                    // ),
                    SizedBox(height: 10),
                    Text(
                      'About Booking.com',
                      style: TextStyle(color: Colors.blue
                          //   fontWeight: FontWeight.bold,
                          ),
                    ),
                    // Text(
                    //   '4827 properties',
                    //   style: TextStyle(
                    //     color: Colors.grey,
                    //   ),
                    // ),
                    SizedBox(height: 10),
                    Text(
                      'Customer Service Help',
                      style: TextStyle(color: Colors.blue
                          //   fontWeight: FontWeight.bold,
                          ),
                    ),
                    // Text(
                    //   '2153 properties',
                    //   style: TextStyle(
                    //     color: Colors.grey,
                    //   ),
                    // ),
                    SizedBox(height: 10),
                    Text(
                      'Partner help',
                      style: TextStyle(color: Colors.blue
                          //   fontWeight: FontWeight.bold,
                          ),
                    ),
                    // Text(
                    //   '162 properties',
                    //   style: TextStyle(
                    //     color: Colors.grey,
                    //   ),
                    // ),
                    SizedBox(height: 10),
                    Text(
                      'Careers',
                      style: TextStyle(color: Colors.blue
                          //   fontWeight: FontWeight.bold,
                          ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Sustainability',
                      style: TextStyle(color: Colors.blue
                          //   fontWeight: FontWeight.bold,
                          ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Press Center',
                      style: TextStyle(color: Colors.blue
                          //   fontWeight: FontWeight.bold,
                          ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Safety Resource Center',
                      style: TextStyle(color: Colors.blue
                          //   fontWeight: FontWeight.bold,
                          ),
                    ),
                    // Text(
                    //   '3234 properties',
                    //   style: TextStyle(
                    //     color: Colors.grey,
                    //   ),
                    // ),
                    SizedBox(height: 10),
                    Text(
                      'Investor relations',
                      style: TextStyle(color: Colors.blue
                          //   fontWeight: FontWeight.bold,
                          ),
                    ),
                    // Text(
                    //   '4827 properties',
                    //   style: TextStyle(
                    //     color: Colors.grey,
                    //   ),
                    // ),
                    SizedBox(height: 10),
                    Text(
                      'Terms & Conditions',
                      style: TextStyle(color: Colors.blue
                          //   fontWeight: FontWeight.bold,
                          ),
                    ),
                    // Text(
                    //   '2153 properties',
                    //   style: TextStyle(
                    //     color: Colors.grey,
                    //   ),
                    // ),
                    SizedBox(height: 10),
                    Text(
                      'Partner dispute',
                      style: TextStyle(color: Colors.blue
                          //   fontWeight: FontWeight.bold,
                          ),
                    ),
                    // Text(
                    //   '162 properties',
                    //   style: TextStyle(
                    //     color: Colors.grey,
                    //   ),
                    // ),
                    SizedBox(height: 10),
                    Text(
                      'How We Work',
                      style: TextStyle(color: Colors.blue
                          //   fontWeight: FontWeight.bold,
                          ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Privacy & cookie statement',
                      style: TextStyle(color: Colors.blue
                          //   fontWeight: FontWeight.bold,
                          ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Guest houses',
                      style: TextStyle(color: Colors.blue
                          //   fontWeight: FontWeight.bold,
                          ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'MSA statement',
                      style: TextStyle(color: Colors.blue
                          //   fontWeight: FontWeight.bold,
                          ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Corporate contact',
                      style: TextStyle(color: Colors.blue
                          //   fontWeight: FontWeight.bold,
                          ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Content guidelines',
                      style: TextStyle(color: Colors.blue
                          //   fontWeight: FontWeight.bold,
                          ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Extranet Log-in',
                style: TextStyle(color: Colors.blue, fontSize: 16),
              )
            ],
          ),
          const Padding(
            padding: EdgeInsets.only(left: 250),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'Copyright © 1996_2023 Booking.com™. All rights reserved',
                  style: TextStyle(color: Colors.black, fontSize: 11),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Booking.com is part of Booking Holdings Inc., the world leader in online travel and related services.',
                style: TextStyle(color: Colors.grey, fontSize: 12),
              )
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/f1.png'),
              const SizedBox(
                width: 30,
              ),
              Image.asset('assets/f2.png'),
              const SizedBox(
                width: 30,
              ),
              Image.asset('assets/f3.png'),
              const SizedBox(
                width: 30,
              ),
              Image.asset('assets/f4.png'),
              const SizedBox(
                width: 30,
              ),
              Image.asset('assets/f5.png'),
              const SizedBox(
                width: 30,
              ),
              Image.asset('assets/f6.png'),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'JWG2023',
                style: TextStyle(color: Colors.black, fontSize: 14),
              )
            ],
          ),
        ],
      ),
    );
  }
}
