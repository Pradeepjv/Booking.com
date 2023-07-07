// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:grid/images.dart';
import 'package:grid/footer.dart';
import 'package:grid/gallery.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool? isChecked = false;
  bool? isChecked1 = false;
  bool? isChecked2 = false;
  int index = 0;
  bool isHover = false;

  int counter = 0;
  int counter1 = 0;
  int counter2 = 0;

  // List of items in our dropdown menu
  String? selectedItem;
  final List<String> items = ['Item 1'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
            child: Stack(
      children: [
        Column(children: <Widget>[
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
                    // ignore: sized_box_for_whitespace

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
                Padding(
                    padding: const EdgeInsets.only(left: 130, top: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        InkWell(
                          onTap: () {
                            setState(() {
                              index = 0;
                            });
                          },
                          // onHover: (val) {
                          //   // ignore: avoid_print
                          //   print(val);
                          //   setState(() {
                          //     isHover = val;
                          //   });
                          // },
                          child: Container(
                            margin: const EdgeInsets.only(right: 10),
                            padding: const EdgeInsets.all(8),
                            decoration: BoxDecoration(
                                border: index == 0
                                    ? Border.all(color: Colors.white)
                                    : Border.all(color: Colors.transparent),
                                borderRadius: BorderRadius.circular(20)),
                            child: const Row(children: [
                              Icon(
                                Icons.cottage_outlined,
                                color: Colors.white,
                              ),
                              Padding(padding: EdgeInsets.only(left: 5)),
                              Text(
                                "Stays",
                                style: TextStyle(
                                  fontSize: 17,
                                  color: Colors.white,
                                ),
                              ),
                            ]),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            setState(() {
                              index = 1;
                            });
                          },
                          child: Container(
                            margin: const EdgeInsets.only(right: 10),
                            padding: const EdgeInsets.all(8),
                            decoration: BoxDecoration(
                                border: index == 1
                                    ? Border.all(color: Colors.white)
                                    : Border.all(color: Colors.transparent),
                                borderRadius: BorderRadius.circular(20)),
                            child: const Row(
                              children: [
                                Icon(
                                  Icons.flight,
                                  color: Colors.white,
                                ),
                                Padding(padding: EdgeInsets.only(left: 5)),
                                Text(
                                  "Flights",
                                  style: TextStyle(
                                      fontSize: 17, color: Colors.white),
                                ),
                              ],
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            setState(() {
                              index = 2;
                            });
                          },
                          child: Container(
                            margin: const EdgeInsets.only(right: 10),
                            padding: const EdgeInsets.all(8),
                            decoration: BoxDecoration(
                                border: index == 2
                                    ? Border.all(color: Colors.white)
                                    : Border.all(color: Colors.transparent),
                                borderRadius: BorderRadius.circular(20)),
                            child: const Row(
                              children: [
                                Icon(
                                  Icons.hotel,
                                  color: Colors.white,
                                ),
                                Padding(padding: EdgeInsets.only(left: 5)),
                                Text(
                                  "Flight + Hotel",
                                  style: TextStyle(
                                      fontSize: 17, color: Colors.white),
                                ),
                              ],
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            setState(() {
                              index = 3;
                            });
                          },
                          child: Container(
                            margin: const EdgeInsets.only(right: 10),
                            padding: const EdgeInsets.all(8),
                            decoration: BoxDecoration(
                                border: index == 3
                                    ? Border.all(color: Colors.white)
                                    : Border.all(color: Colors.transparent),
                                borderRadius: BorderRadius.circular(20)),
                            child: const Row(
                              children: [
                                Icon(
                                  Icons.car_rental_outlined,
                                  color: Colors.white,
                                ),
                                Padding(padding: EdgeInsets.only(left: 5)),
                                Text(
                                  "Car rentals",
                                  style: TextStyle(
                                      fontSize: 17, color: Colors.white),
                                ),
                              ],
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            setState(() {
                              index = 4;
                            });
                          },
                          child: Container(
                            margin: const EdgeInsets.only(right: 10),
                            padding: const EdgeInsets.all(8),
                            decoration: BoxDecoration(
                                border: index == 4
                                    ? Border.all(color: Colors.white)
                                    : Border.all(color: Colors.transparent),
                                borderRadius: BorderRadius.circular(20)),
                            child: const Row(
                              children: [
                                Icon(
                                  Icons.attractions_outlined,
                                  color: Colors.white,
                                ),
                                Padding(padding: EdgeInsets.only(left: 5)),
                                Text(
                                  "Attractions",
                                  style: TextStyle(
                                      fontSize: 17, color: Colors.white),
                                ),
                              ],
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            setState(() {
                              index = 5;
                            });
                          },
                          child: Container(
                            margin: const EdgeInsets.only(right: 10),
                            padding: const EdgeInsets.all(8),
                            decoration: BoxDecoration(
                                border: index == 5
                                    ? Border.all(color: Colors.white)
                                    : Border.all(color: Colors.transparent),
                                borderRadius: BorderRadius.circular(20)),
                            child: const Row(
                              children: [
                                Icon(
                                  Icons.taxi_alert_outlined,
                                  color: Colors.white,
                                ),
                                Padding(padding: EdgeInsets.only(left: 5)),
                                Text(
                                  "Airport taxis",
                                  style: TextStyle(
                                      fontSize: 17, color: Colors.white),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    )),
                index == 0
                    ?

                    // code for 3rd row
                    // ignore: prefer_const_constructors
                    Column(
                        children: const [
                          Padding(
                              padding: EdgeInsets.only(left: 130, top: 100),
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Find your next stay",
                                      style: TextStyle(
                                          fontSize: 48, color: Colors.white),
                                    ),
                                  ])),
                          Padding(
                              padding: EdgeInsets.only(left: 130),
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Search deals on hotels, homes, and much more...",
                                      style: TextStyle(
                                          fontSize: 24, color: Colors.white),
                                    ),
                                  ])),
                        ],
                      )
                    : const Center(child: Text("comming soon")),
              ])),

          // this line is a code for checkbox
          // Padding(
          //   padding: const EdgeInsets.only(left: 248),
          //   child:

          // ),
          if (index == 0)
            Container(
              width: double.infinity,
              // height: 500,
              color: const Color.fromARGB(255, 253, 253, 255),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const Padding(padding: EdgeInsets.only(left: 120)),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Padding(
                          padding: EdgeInsets.only(top: 120, bottom: 5)),
                      const Text(
                        "Offers",
                        style: TextStyle(
                            fontSize: 24, fontWeight: FontWeight.bold),
                      ),
                      const Text(
                        "Promotions, deals, and special offers for you",
                        style: TextStyle(
                            fontSize: 16,
                            color: Color.fromARGB(255, 172, 170, 170)),
                      ),
                      // card widget code written in separate class
                      if (index == 0) ImageTextCard(key: UniqueKey()),
                    ],
                  )
                ],
              ),
            ),
          if (index == 0) const MyGallery(),
          if (index == 0) const Footer(),
        ]),
        if (index == 0)
          Positioned(
            top: 325,
            left: 130,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                    width: 1140,
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
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        // const Padding(padding: EdgeInsets.only(left: 140)),
                        // ignore: sized_box_for_whitespace
                        Container(
                          width: 400,
                          child: DropdownButtonFormField<String>(
                            decoration: InputDecoration(
                              // prefixIcon:
                              //     const Icon(Icons.location_city_outlined),
                              // hint: 'Where are you going?',
                              // suffixIcon: const Icon(Icons.close),
                              fillColor: Colors.black,
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(2),
                              ),
                            ),
                            hint: const Text('Where are you going?'),

                            // value: 'bangalore',
                            items: <String>[
                              // 'Where are you going?',
                              'bangalore',
                              'delhi',
                              'mumbai',
                              'chennai',
                              // Add more locations as needed
                            ].map<DropdownMenuItem<String>>((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Row(
                                  children: [
                                    const Icon(Icons.location_on),
                                    const SizedBox(width: 8),
                                    Text(value),
                                  ],
                                ),
                              );
                            }).toList(),
                            onChanged: (String? newValue) {
                              // Handle dropdown value change
                            },
                          ),
                        ),
                        // Container(
                        //   width: 400,
                        //   child: TextFormField(
                        //       decoration: InputDecoration(
                        //           prefixIcon:
                        //               const Icon(Icons.location_city_outlined),
                        //           hintText: "where are you going?",
                        //           suffixIcon: const Icon(Icons.close),
                        //           fillColor: Colors.black,
                        //           border: OutlineInputBorder(
                        //             borderRadius: BorderRadius.circular(2),
                        //           ))),
                        // ),
                        // ignore: sized_box_for_whitespace
                        Container(
                          width: 320,
                          child: TextFormField(
                              decoration: InputDecoration(
                                  prefixIcon: IconButton(
                                      onPressed: () async {
                                        DateTime? datePicked =
                                            await showDatePicker(
                                                context: context,
                                                initialDate: DateTime.now(),
                                                firstDate: DateTime(2023),
                                                lastDate: DateTime(2024));

                                        if (datePicked != null) {
                                          print(
                                              'Date selected: ${datePicked.day}-${datePicked.month}-${datePicked.year}');
                                        }
                                      },
                                      icon: const Icon(
                                          Icons.date_range_outlined)),
                                  hintText: "Select date",
                                  // suffixIcon: const Icon(Icons.close),
                                  fillColor: Colors.black,
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(2),
                                  ))),
                        ),
                        // ignore: sized_box_for_whitespace
                        StatefulBuilder(
                          builder: (BuildContext context,
                              void Function(void Function()) setState) {
                            return Container(
                              width: 300,
                              decoration: BoxDecoration(
                                  border: Border.all(color: Colors.black),
                                  borderRadius: BorderRadius.circular(2)),

                              child: Padding(
                                padding: const EdgeInsets.all(15.0),
                                child: DropdownButtonFormField<String>(
                                  decoration: const InputDecoration(
                                      hintText: 'select Room',
                                      prefixIcon: Icon(Icons.person),
                                      border: InputBorder.none),
                                  value: selectedItem,
                                  items: items.map((String items) {
                                    return DropdownMenuItem<String>(
                                      value: items,
                                      child: Column(
                                        children: [
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              const Text("Adult:"),
                                              const SizedBox(
                                                  width: 20, height: 3),
                                              IconButton(
                                                icon: const Icon(Icons.remove),
                                                onPressed: () {
                                                  setState(() {
                                                    if (counter > 0) {
                                                      counter--;
                                                    }
                                                  });
                                                },
                                              ),
                                              Text(
                                                counter.toString(),
                                                style: const TextStyle(
                                                    fontSize: 16),
                                              ),
                                              IconButton(
                                                icon: const Icon(Icons.add),
                                                onPressed: () {
                                                  setState(() {
                                                    counter++;
                                                  });
                                                },
                                              ),
                                            ],
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              const Text("children:"),
                                              const SizedBox(
                                                  width: 10, height: 5),
                                              IconButton(
                                                icon: const Icon(Icons.remove),
                                                onPressed: () {
                                                  setState(() {
                                                    if (counter1 > 0) {
                                                      counter1--;
                                                    }
                                                  });
                                                },
                                              ),
                                              Text(
                                                counter1.toString(),
                                                style: const TextStyle(
                                                    fontSize: 16),
                                              ),
                                              IconButton(
                                                icon: const Icon(Icons.add),
                                                onPressed: () {
                                                  setState(() {
                                                    counter1++;
                                                  });
                                                },
                                              ),
                                            ],
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              const Text("Rooms:"),
                                              const SizedBox(
                                                  width: 16, height: 5),
                                              IconButton(
                                                icon: const Icon(Icons.remove),
                                                onPressed: () {
                                                  setState(() {
                                                    if (counter2 > 0) {
                                                      counter2--;
                                                    }
                                                  });
                                                },
                                              ),
                                              Text(
                                                counter2.toString(),
                                                style: const TextStyle(
                                                    fontSize: 16),
                                              ),
                                              IconButton(
                                                icon: const Icon(Icons.add),
                                                onPressed: () {
                                                  setState(() {
                                                    counter2++;
                                                  });
                                                },
                                              ),
                                            ],
                                          ),
                                          const SizedBox(height: 10),
                                          SizedBox(
                                            width: 150,
                                            height: 30,
                                            child: OutlinedButton(
                                              onPressed: () {
                                                // Handle the "Done" button action here
                                              },
                                              style: OutlinedButton.styleFrom(
                                                shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          5.0),
                                                ),
                                                side: const BorderSide(
                                                    color: Colors.blue),
                                              ),
                                              child: const Text('Done'),
                                            ),
                                          ),
                                        ],
                                      ),
                                    );
                                  }).toList(),
                                  onChanged: (String? value) {
                                    setState(() {
                                      selectedItem = value;
                                    });
                                    if (selectedItem != null) {
                                      print('Selected option: $selectedItem');
                                    }
                                  },
                                ),
                              ),

                              // TextFormField(
                              //     decoration: InputDecoration(
                              //         prefixIcon:
                              //             const Icon(Icons.person_2_outlined),
                              //         hintText: "select room",
                              //         suffixIcon: DropdownButton<String>(
                              //           value: selectedItem,
                              //           items: items.map((String items) {
                              //             return DropdownMenuItem<String>(
                              //               value: items,
                              //               child: Text(items),
                              //             );
                              //           }).toList(),
                              //           onChanged: null,
                              //         ),
                              //         fillColor: Colors.black,
                              //         border: OutlineInputBorder(
                              //           borderRadius: BorderRadius.circular(2),
                              //         ))),
                            );
                          },
                        ),

                        Container(
                          width: 110,
                          padding: const EdgeInsets.all(10),
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    // const Padding(padding: EdgeInsets.only(left: 140)),
                    Checkbox(
                      value: isChecked,
                      // tristate: true,
                      onChanged: (newBool) {
                        setState(() => isChecked = newBool);
                      },
                    ),
                    // const SizedBox(width: 4.0),
                    const Text(
                      "I'm looking for an entire home or apartment",
                    ),
                    Checkbox(
                        value: isChecked1,
                        // tristate: true,
                        onChanged: (newBool) {
                          setState(() => isChecked1 = newBool);
                        }),
                    // const SizedBox(width: 4.0),
                    const Text("I'm traveling for work"),
                    Checkbox(
                        value: isChecked2,
                        // tristate: true,
                        onChanged: (newBool) {
                          setState(() => isChecked2 = newBool);
                        }),
                    // const SizedBox(width: 4.0),
                    const Text("Show me flights in a new tab"),
                  ],
                ),
              ],
            ),
          ),
      ],
    )));
  }
}
