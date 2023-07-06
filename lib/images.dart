import 'dart:convert';
import 'package:flutter/material.dart';

class ImageTextCard extends StatefulWidget {
  const ImageTextCard({Key? key}) : super(key: key);

  @override
  State<ImageTextCard> createState() => _ImageTextCardState();
}

class _ImageTextCardState extends State<ImageTextCard> {
  int currentIndex = 0;

  void handleLeftArrowClick() {
    setState(() {
      currentIndex = (currentIndex - 1) % 3;
    });
  }

  void handleRightArrowClick() {
    setState(() {
      currentIndex = (currentIndex + 1) % 3;
    });
  }

  @override
  Widget build(BuildContext context) {
    return
        // ignore: avoid_unnecessary_containers, sized_box_for_whitespace

        FutureBuilder<String>(
            future: DefaultAssetBundle.of(context)
                .loadString("assets/json/object.json"),
            builder: (context, snapshot) {
              var data = json.decode(snapshot.data.toString());
              return Stack(
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
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 10, top: 25, bottom: 5),
                                              child: Text(
                                                  data["Offers"][0]["title"],
                                                  style: const TextStyle(
                                                      fontSize: 16,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                  textScaleFactor: 1.1)),
                                          Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 10),
                                              child: Text(
                                                  data["Offers"][0]
                                                      ["description"],
                                                  style: const TextStyle(
                                                      fontSize: 16),
                                                  textScaleFactor: 1.1)),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 10, top: 50),
                                            child: Container(
                                              width: 150,
                                              padding: const EdgeInsets.all(2),
                                              decoration: BoxDecoration(
                                                color: const Color.fromARGB(
                                                    255, 51, 113, 219),
                                                borderRadius:
                                                    BorderRadius.circular(0),
                                              ),
                                              child: TextButton(
                                                onPressed: () {
                                                  // Perform search operation
                                                  // Add your search logic here
                                                },
                                                child: Text(
                                                  data["Offers"][0]["button"],
                                                  style: const TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 14,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                  // textAlign: TextAlign.center,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      Container(
                                        width: 200,
                                        height: 200,
                                        margin: const EdgeInsets.only(left: 85),
                                        // child: Image.asset( 'assets/images/img1.jpeg'),
                                        child: Image.asset(
                                            data["Offers"][0]["image"]),
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
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 10, top: 25),
                                              child: Text(
                                                data["Offers"][1]["title"],
                                                style: const TextStyle(
                                                    fontSize: 16,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              )),
                                          Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 10, top: 5),
                                              child: Text(
                                                data["Offers"][1]
                                                    ["description"],
                                                style: const TextStyle(
                                                    fontSize: 16),
                                              )),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 10, top: 50),
                                            child: Container(
                                              width: 150,
                                              padding: const EdgeInsets.all(2),
                                              decoration: BoxDecoration(
                                                color: const Color.fromARGB(
                                                    255, 51, 113, 219),
                                                borderRadius:
                                                    BorderRadius.circular(0),
                                              ),
                                              child: TextButton(
                                                onPressed: () {
                                                  // Perform search operation
                                                  // Add your search logic here
                                                },
                                                child: Text(
                                                  data["Offers"][1]["button"],
                                                  style: const TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 13,
                                                      fontWeight:
                                                          FontWeight.bold),
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
                                            left:
                                                20), // Adjust the width as needed
                                        child: Image.asset(
                                            data["Offers"][1]["image"]),
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
                                                  data["Offers"][2]["image"],
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                            ],
                                          ),
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 10,
                                                          top: 20,
                                                          bottom: 5),
                                                  child: Text(
                                                    data["Offers"][2]["title"],
                                                    style: const TextStyle(
                                                        fontSize: 16,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        color: Colors.white),
                                                  )),
                                              Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 10),
                                                  child: Text(
                                                    data["Offers"][2]
                                                        ["description"],
                                                    // 'Save at least 15% on stays worldwide, from relaxing retreats to off-the-grid adventures',
                                                    style: const TextStyle(
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
                                                borderRadius:
                                                    BorderRadius.circular(0),
                                              ),
                                              child: TextButton(
                                                onPressed: () {
                                                  // Perform search operation
                                                  // Add your search logic here
                                                },
                                                child: Text(
                                                  data["Offers"][2]["button"],
                                                  style: const TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 12,
                                                      fontWeight:
                                                          FontWeight.bold),
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
                    child: GestureDetector(
                      onTap: () => handleLeftArrowClick,
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
                  ),
                  Positioned(
                    top: 80,
                    right: -5,
                    child: GestureDetector(
                      onTap: () => handleRightArrowClick,
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
                  ),
                ],
              );
            });
  }
}
