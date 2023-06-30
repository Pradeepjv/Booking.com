import 'package:flutter/material.dart';


class ImageTextCard extends StatelessWidget {
  const ImageTextCard({super.key});

  @override
  Widget build(BuildContext context) {
    return
        

        Stack(
      children: [
        Column(
          children: [
            const Padding(padding: EdgeInsets.only(left: 100)),
            SizedBox(
              width: 1200,
              height: 200,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Container(
                    // can be used further
                    // padding: const EdgeInsets.only(left: 10),
                    margin: const EdgeInsets.only(left: 10),
                    width: 600,
                    height: 150,
                    color: Colors.white,
                    child: GestureDetector(
                      onTap: () {
                        // Handle click for the first card
                      },
                      child: Card(
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(1.0),
                        ),
                        child: Row(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                const Padding(
                                    padding: EdgeInsets.only(
                                        left: 10, top: 25, bottom: 5),
                                    child: Text(
                                        'Take your longest vacation yet',
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold),
                                        textScaleFactor: 1)),
                                const Padding(
                                    padding: EdgeInsets.only(left: 10),
                                    child: Text(
                                        'Browse properties offering long-term',
                                        style: TextStyle(fontSize: 16),
                                        textScaleFactor: 1.1)),
                                Padding(
                                  padding:
                                      const EdgeInsets.only(left: 10, top: 50),
                                  child: Container(
                                    width: 150,
                                    padding: const EdgeInsets.all(2),
                                    decoration: BoxDecoration(
                                      color: const Color.fromARGB(
                                          255, 51, 113, 219),
                                      borderRadius: BorderRadius.circular(0),
                                    ),
                                    child: TextButton(
                                      onPressed: () {
                                        // Perform search operation
                                        // Add your search logic here
                                      },
                                      child: const Text(
                                        'Find a stay',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 14,
                                            fontWeight: FontWeight.bold),
                                        // textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),

                            // ignore: sized_box_for_whitespace

                            // const Expanded(
                            //   child: Padding(
                            //     padding: EdgeInsets.all(8.0),
                            //     child: Text(
                            //       'Take your longest vacation yet',
                            //       style: TextStyle(fontSize: 16),
                            //     ),
                            //   ),
                            // ),
                            // const Expanded(
                            //   child: Padding(
                            //     padding: EdgeInsets.all(8.0),
                            //     child: Text(
                            //       'Browse properties offering long-term stays, many at reduced monthly rates.',
                            //       style: TextStyle(fontSize: 16),
                            //     ),
                            //   ),
                            // ),
                            // ignore: sized_box_for_whitespace
                            Container(
                              width: 200,
                              height: 200,
                              margin: const EdgeInsets.only(
                                  left: 85), // Adjust the width as needed
                              child: Image.asset('assets/images/img1.jpeg'),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Container(
                    // padding: const EdgeInsets.only(left: 10),
                    margin: const EdgeInsets.only(right: 30),
                    width: 600,
                    height: 190,
                    color: Colors.white,
                    child: GestureDetector(
                      onTap: () {
                        // Handle click for the first card
                      },
                      child: Card(
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(2.0),
                        ),
                        child: Row(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                const Padding(
                                    padding: EdgeInsets.only(left: 10, top: 25),
                                    child: Text(
                                      'Fly away to your dream vacation',
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold),
                                    )),
                                const Padding(
                                    padding: EdgeInsets.only(left: 10, top: 5),
                                    child: Text(
                                      'Get inspired compare and book flights with flexibility',
                                      style: TextStyle(fontSize: 16),
                                    )),
                                Padding(
                                  padding:
                                      const EdgeInsets.only(left: 10, top: 50),
                                  child: Container(
                                    width: 150,
                                    padding: const EdgeInsets.all(2),
                                    decoration: BoxDecoration(
                                      color: const Color.fromARGB(
                                          255, 51, 113, 219),
                                      borderRadius: BorderRadius.circular(0),
                                    ),
                                    child: TextButton(
                                      onPressed: () {
                                        // Perform search operation
                                        // Add your search logic here
                                      },
                                      child: const Text(
                                        'Search for Flights',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Container(
                              width: 150,
                              height: 200,
                              // ignore: prefer_const_constructors
                              margin: EdgeInsets.only(
                                  left: 20), // Adjust the width as needed
                              child: Image.asset('assets/images/img2.png'),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: 600,
                    height: 190,
                    color: Colors.white,
                    child: GestureDetector(
                      onTap: () {
                        // Handle click for the first card
                      },
                      child: Card(
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(2.0),
                        ),
                        child: Row(
                          children: [
                            // ignore: sized_box_for_whitespace
                            Stack(
                              children: [
                                Column(
                                  // crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    // ignore: sized_box_for_whitespace
                                    Container(
                                      width: 590,
                                      height: 192,

                                      // ignore: prefer_const_constructors
                                      // margin: EdgeInsets.only(
                                      //     left: 40), // Adjust the width as needed
                                      child: Image.asset(
                                        'assets/images/img3.jpeg',
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ],
                                ),
                                const Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Padding(
                                        padding: EdgeInsets.only(
                                            left: 10, top: 20, bottom: 5),
                                        child: Text(
                                          'The great getaway, your way',
                                          style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white),
                                        )),
                                    Padding(
                                        padding: EdgeInsets.only(left: 10),
                                        child: Text(
                                          "Save at least 15% on stays worldwide",
                                          // 'Save at least 15% on stays worldwide, from relaxing retreats to off-the-grid adventures',
                                          style: TextStyle(
                                              fontSize: 16,
                                              color: Colors.white),
                                        ))
                                  ],
                                ),
                                Positioned(
                                  top: 120,
                                  left: 10,
                                  child: Container(
                                    width: 150,
                                    padding: const EdgeInsets.all(2),
                                    decoration: BoxDecoration(
                                      color: const Color.fromARGB(
                                          255, 51, 113, 219),
                                      borderRadius: BorderRadius.circular(0),
                                    ),
                                    child: TextButton(
                                      onPressed: () {
                                        // Perform search operation
                                        // Add your search logic here
                                      },
                                      child: const Text(
                                        'Find Gateway Details ',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 12,
                                            fontWeight: FontWeight.bold),
                                        textAlign: TextAlign.center,
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
                  ),
                ],
              ),
            ),
          ],
        ),
        Positioned(
          top: 78,
          left: 0,
          child: Container(
            width: 35,
            height: 35,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                border: Border.all(color: Colors.black),
                color: Colors.white),
            child: const Icon(Icons.arrow_back_ios, size: 20),
          ),
        ),
        Positioned(
          top: 80,
          right: -5,
          child: Container(
              width: 35,
              height: 35,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                border: Border.all(color: Colors.black),
                color: Colors.white,
              ),
              child: const Icon(Icons.arrow_forward_ios, size: 20)),
        ),
      ],
    );
  }
}
