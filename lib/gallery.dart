import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class MyGallery extends StatefulWidget {
  const MyGallery({Key? key}) : super(key: key);

  @override
  State<MyGallery> createState() => _MyGalleryState();
}

class _MyGalleryState extends State<MyGallery> {
  int count = 0;
  int btnIndex = 0;

  List _bptItems = [];
  List _exploreIndiaItems = [];
  List _relaxItems = [];
  List _cityItems = [];
  List _outdoorItems = [];
  List _romanceItems = [];
  List _foodItems = [];
  List _beachItems = [];
  List _topPropertiesItems = [];
  List _homesGuestItems = [];

  Future<void> bptLoadData() async {
    final String response = await rootBundle.loadString("assets/json/bpt.json");

    final data = await json.decode(response);
    setState(() {
      _bptItems = data["bpt"];
      // ignore: avoid_print
      print("number of items ${_bptItems.length}");
    });
  }

  Future<void> exploreIndiaLoadData() async {
    final String response =
        await rootBundle.loadString("assets/json/explore_india.json");
    final data = await json.decode(response);
    setState(() {
      _exploreIndiaItems = data["exploreIndia"];
      // ignore: avoid_print
      print("number of items ${_exploreIndiaItems.length}");
    });
  }

  Future<void> relaxLoadData() async {
    final String response =
        await rootBundle.loadString("assets/json/relax.json");
    final data = await json.decode(response);
    setState(() {
      _relaxItems = data["relax"];
      // ignore: avoid_print
      print("number of items ${_relaxItems.length}");
    });
  }

  Future<void> cityLoadData() async {
    final String response =
        await rootBundle.loadString("assets/json/city.json");
    final data = await json.decode(response);
    setState(() {
      _cityItems = data["city"];
      // ignore: avoid_print
      print("number of items ${_cityItems.length}");
    });
  }

  Future<void> outdoorLoadData() async {
    final String response =
        await rootBundle.loadString("assets/json/outdoor.json");
    final data = await json.decode(response);
    setState(() {
      _outdoorItems = data["outdoor"];
      // ignore: avoid_print
      print("number of items ${_outdoorItems.length}");
    });
  }

  Future<void> romanceLoadData() async {
    final String response =
        await rootBundle.loadString("assets/json/romance.json");
    final data = await json.decode(response);
    setState(() {
      _romanceItems = data["romance"];
      // ignore: avoid_print
      print("number of items ${_romanceItems.length}");
    });
  }

  Future<void> foodLoadData() async {
    final String response =
        await rootBundle.loadString("assets/json/food.json");
    final data = await json.decode(response);
    setState(() {
      _foodItems = data["food"];
      // ignore: avoid_print
      print("number of items ${_foodItems.length}");
    });
  }

  Future<void> beachLoadData() async {
    final String response =
        await rootBundle.loadString("assets/json/beach.json");
    final data = await json.decode(response);
    setState(() {
      _beachItems = data["beach"];
      // ignore: avoid_print
      print("number of items ${_beachItems.length}");
    });
  }

  Future<void> topPropertiesLoadData() async {
    final String response =
        await rootBundle.loadString("assets/json/top_properties.json");
    final data = await json.decode(response);
    setState(() {
      _topPropertiesItems = data["topProperties"];
      // ignore: avoid_print
      print("number of items ${_topPropertiesItems.length}");
    });
  }

  Future<void> homesGuestLoadData() async {
    final String response =
        await rootBundle.loadString("assets/json/homes_guest.json");
    final data = await json.decode(response);
    setState(() {
      _homesGuestItems = data["homesGuest"];
      // ignore: avoid_print
      print("number of items ${_homesGuestItems.length}");
    });
  }

  @override
  void initState() {
    super.initState();

    bptLoadData();
    exploreIndiaLoadData();
    relaxLoadData();
    cityLoadData();
    outdoorLoadData();
    romanceLoadData();
    foodLoadData();
    beachLoadData();
    topPropertiesLoadData();
    homesGuestLoadData();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            margin: const EdgeInsets.only(left: 130, top: 15),
            child: const Text(
              'Trending destinations',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(left: 130),
            child: const Text(
              'Most popular choices for travelers from India',
              style: TextStyle(fontSize: 16, color: Colors.grey),
            ),
          ),
          Wrap(
            children: [
              Stack(
                children: [
                  Container(
                    margin: const EdgeInsets.only(left: 130, top: 15),
                    child: InkWell(
                      onTap: () {
                        setState(() {});
                      },
                      child: Image.asset(
                        'assets/images/mumbai.jpg',
                        height: 300,
                        width: 595,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const Positioned(
                    left: 150,
                    top: 15,
                    child: Text(
                      'Mumbai',
                      style: TextStyle(
                          color: Color.fromARGB(255, 107, 98, 98),
                          fontSize: 30,
                          fontWeight: FontWeight.bold),
                    ),
                  )
                ],
              ),
              Stack(children: [
                Container(
                  margin: const EdgeInsets.only(
                    left: 18,
                    top: 15,
                  ),
                  child: InkWell(
                    onTap: () {
                      setState(() {});
                    },
                    child: Image.asset('assets/images/Manali.jpg',
                        height: 300, width: 595, fit: BoxFit.cover),
                  ),
                ),
                const Positioned(
                  left: 40,
                  top: 15,
                  child: Text(
                    'Manali',
                    style: TextStyle(
                        color: Color.fromARGB(255, 107, 98, 98),
                        fontSize: 30,
                        fontWeight: FontWeight.bold),
                  ),
                )
              ]),
              Stack(
                children: [
                  Container(
                    margin: const EdgeInsets.only(left: 130, top: 20),
                    child: InkWell(
                      onTap: () {
                        setState(() {});
                      },
                      child: Image.asset('assets/images/Chennai.jpg',
                          height: 300, width: 390, fit: BoxFit.cover),
                    ),
                  ),
                  const Positioned(
                    left: 150,
                    top: 17,
                    child: Text(
                      'Chennai',
                      style: TextStyle(
                          color: Color.fromARGB(255, 107, 98, 98),
                          fontSize: 30,
                          fontWeight: FontWeight.bold),
                    ),
                  )
                ],
              ),
              Stack(children: [
                Container(
                  margin: const EdgeInsets.only(
                    left: 19,
                    top: 20,
                  ),
                  child: InkWell(
                    onTap: () {
                      setState(() {});
                    },
                    child: Image.asset('assets/images/delhi.jpg',
                        height: 300, width: 390, fit: BoxFit.cover),
                  ),
                ),
                const Positioned(
                  left: 40,
                  top: 14,
                  child: Text(
                    'Delhi',
                    style: TextStyle(
                        color: Color.fromARGB(255, 107, 98, 98),
                        fontSize: 30,
                        fontWeight: FontWeight.bold),
                  ),
                )
              ]),
              Stack(children: [
                Container(
                  margin: const EdgeInsets.only(left: 19, top: 20, right: 15),
                  // decoration: BoxDecoration(
                  //     border: Border.all(color: Colors.black),
                  //     borderRadius: BorderRadius.circular(2)),
                  child: InkWell(
                    onTap: () {
                      setState(() {});
                    },
                    child: Image.asset('assets/images/banglore.jpg',
                        height: 300, width: 390, fit: BoxFit.cover),
                  ),
                ),
                const Positioned(
                  left: 40,
                  top: 15,
                  child: Text(
                    'Banglore',
                    style: TextStyle(
                        color: Color.fromARGB(255, 107, 98, 98),
                        fontSize: 30,
                        fontWeight: FontWeight.bold),
                  ),
                )
              ]),
            ],
          ),

          Container(
            margin: const EdgeInsets.only(left: 130, top: 50),
            child: const Text(
              'Browse by property type',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SizedBox(height: 10),

          // void moveLeft() {
          //   setState(() {
          //     if (btnIndex > 0) {
          //       btnIndex--;
          //     }
          //   });
          // }

          // void moveRight() {
          //   setState(() {
          //     if (btnIndex < mydata["bpt"].length - 1) {
          //       btnIndex++;
          //     }
          //   });
          // }

          Stack(
            children: [
              if (_bptItems.isNotEmpty)
                Padding(
                  padding: const EdgeInsets.only(left: 130.0),
                  child: SizedBox(
                    width: 1200,
                    height: 300,
                    child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return Column(
                          children: [
                            Image.asset(
                              _bptItems[index]["image"],
                              width: 290,
                              height: 200,
                              fit: BoxFit.cover,
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(25, 0, 25, 0),
                              child: Text(
                                _bptItems[index]["title"],
                                style: const TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 16),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(25, 0, 25, 0),
                              child: Text(
                                _bptItems[index]["description"],
                                style: const TextStyle(
                                    fontSize: 14, color: Colors.grey),
                              ),
                            )
                          ],
                        );
                      },
                      itemCount: _bptItems.length,
                      separatorBuilder: (BuildContext context, int index) {
                        return const SizedBox(width: 10);
                      },
                    ),
                  ),
                )
              else
                //  {loadData();}
                const Center(child: Icon(Icons.refresh_rounded)),
              Positioned(
                left: 110,
                top: 90,
                child: InkWell(
                  onTap: () {
                    setState(() {
                      if (btnIndex > 0) {
                        btnIndex -= 1; // Decrement the btnIndex value by 1
                      }
                    });
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(18),
                        border: Border.all(color: Colors.black),
                        color: Colors.white),
                    child: const Padding(
                      padding: EdgeInsets.all(2.0),
                      child: Icon(Icons.arrow_back_ios),
                    ),
                  ),
                ),
              ),
              Positioned(
                right: 0,
                top: 90,
                child: InkWell(
                  onTap: () {
                    setState(() {
                      if (btnIndex < _bptItems.length - 1) {
                        btnIndex += 1; // Increment the btnIndex value by 1
                      }
                    });
                  },
                  child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(18),
                        border: Border.all(color: Colors.black),
                        color: Colors.white,
                      ),
                      child: const Icon(Icons.arrow_forward_ios)),
                ),
              )
            ],
          ),

          Container(
            margin: const EdgeInsets.only(left: 130, top: 15),
            child: const Text(
              'Explore India',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(left: 130),
            child: const Text(
              'These popular destinations have a lot to offer',
              style: TextStyle(fontSize: 16, color: Colors.grey),
            ),
          ),

          Stack(
            children: [
              if (_exploreIndiaItems.isNotEmpty)
                Padding(
                  padding: const EdgeInsets.only(left: 130.0),
                  child: SizedBox(
                    width: 1200,
                    height: 300,
                    child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return Column(
                          children: [
                            Image.asset(
                              _exploreIndiaItems[index]["image"],
                              width: 190,
                              height: 150,
                              fit: BoxFit.cover,
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(25, 0, 25, 0),
                              child: Text(
                                _exploreIndiaItems[index]["title"],
                                style: const TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 16),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(25, 0, 25, 0),
                              child: Text(
                                _exploreIndiaItems[index]["description"],
                                style: const TextStyle(
                                    fontSize: 14, color: Colors.grey),
                              ),
                            )
                          ],
                        );
                      },
                      itemCount: _exploreIndiaItems.length,
                      separatorBuilder: (BuildContext context, int index) {
                        return const SizedBox(width: 10);
                      },
                    ),
                  ),
                )
              else
                //  {loadData();}
                const Center(child: Icon(Icons.refresh_rounded)),
              Positioned(
                left: 110,
                top: 60,
                child: InkWell(
                  onTap: () {
                    setState(() {});
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(18),
                        border: Border.all(color: Colors.black),
                        color: Colors.white),
                    child: const Padding(
                      padding: EdgeInsets.all(2.0),
                      child: Icon(Icons.arrow_back_ios),
                    ),
                  ),
                ),
              ),
              Positioned(
                right: 0,
                top: 60,
                child: InkWell(
                  onTap: () {
                    setState(() {});
                  },
                  child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(18),
                        border: Border.all(color: Colors.black),
                        color: Colors.white,
                      ),
                      child: const Icon(Icons.arrow_forward_ios)),
                ),
              )
            ],
          ),

          Container(
            margin: const EdgeInsets.only(left: 130, top: 15),
            child: const Text(
              'Quick and easy trip planner',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),

          Container(
            margin: const EdgeInsets.only(left: 130),
            child: const Text(
              'Pick a vibe and explore the top destinations in India',
              style: TextStyle(fontSize: 16, color: Colors.grey),
            ),
          ),

          // buttons for above
          Container(
            margin: const EdgeInsets.only(left: 130, top: 15),
            child: Row(
              children: [
                InkWell(
                  onTap: () {
                    setState(() {
                      count = 0;
                    });
                  },
                  child: Container(
                    padding: const EdgeInsets.all(8.0),
                    decoration: BoxDecoration(
                        border: count == 0
                            ? Border.all(color: Colors.black)
                            : Border.all(color: Colors.transparent),
                        borderRadius: BorderRadius.circular(18)),
                    child: const Row(
                      children: [
                        Icon(Icons.local_florist),
                        Text('Relax'),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 18.0),
                  child: InkWell(
                    onTap: () {
                      setState(() {
                        count = 1;
                      });
                    },
                    child: Container(
                      padding: const EdgeInsets.all(8.0),
                      decoration: BoxDecoration(
                          border: count == 1
                              ? Border.all(color: Colors.black)
                              : Border.all(color: Colors.transparent),
                          borderRadius: BorderRadius.circular(18)),
                      child: const Row(
                        children: [
                          Icon(Icons.location_city),
                          Text('City'),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 18.0),
                  child: InkWell(
                    onTap: () {
                      setState(() {
                        count = 2;
                      });
                    },
                    child: Container(
                      padding: const EdgeInsets.all(8.0),
                      decoration: BoxDecoration(
                          border: count == 2
                              ? Border.all(color: Colors.black)
                              : Border.all(color: Colors.transparent),
                          borderRadius: BorderRadius.circular(18)),
                      child: const Row(
                        children: [
                          Icon(Icons.pedal_bike),
                          Text('Outdoors'),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 18.0),
                  child: InkWell(
                    onTap: () {
                      setState(() {
                        count = 3;
                      });
                    },
                    child: Container(
                      padding: const EdgeInsets.all(8.0),
                      decoration: BoxDecoration(
                          border: count == 3
                              ? Border.all(color: Colors.black)
                              : Border.all(color: Colors.transparent),
                          borderRadius: BorderRadius.circular(18)),
                      child: const Row(
                        children: [
                          Icon(Icons.favorite_border),
                          Text('Romance'),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 18.0),
                  child: InkWell(
                    onTap: () {
                      setState(() {
                        count = 4;
                      });
                    },
                    child: Container(
                      padding: const EdgeInsets.all(8.0),
                      decoration: BoxDecoration(
                          border: count == 4
                              ? Border.all(color: Colors.black)
                              : Border.all(color: Colors.transparent),
                          borderRadius: BorderRadius.circular(18)),
                      child: const Row(
                        children: [
                          Icon(Icons.lunch_dining),
                          Text('Food'),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 18.0),
                  child: InkWell(
                    onTap: () {
                      setState(() {
                        count = 5;
                      });
                    },
                    child: Container(
                      padding: const EdgeInsets.all(8.0),
                      decoration: BoxDecoration(
                          border: count == 5
                              ? Border.all(color: Colors.black)
                              : Border.all(color: Colors.transparent),
                          borderRadius: BorderRadius.circular(18)),
                      child: const Row(
                        children: [
                          Icon(Icons.beach_access),
                          Text('Beach'),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          count == 0
              ? Stack(
                  children: [
                    if (_relaxItems.isNotEmpty)
                      Padding(
                        padding: const EdgeInsets.only(left: 130.0),
                        child: SizedBox(
                          width: 1200,
                          height: 300,
                          child: ListView.separated(
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (context, index) {
                              return Column(
                                children: [
                                  Image.asset(
                                    _relaxItems[index]["image"],
                                    width: 190,
                                    height: 150,
                                    fit: BoxFit.cover,
                                  ),
                                  Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(25, 0, 25, 0),
                                    child: Text(
                                      _relaxItems[index]["title"],
                                      style: const TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16),
                                    ),
                                  ),
                                  Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(25, 0, 25, 0),
                                    child: Text(
                                      _relaxItems[index]["description"],
                                      style: const TextStyle(
                                          fontSize: 14, color: Colors.grey),
                                    ),
                                  )
                                ],
                              );
                            },
                            itemCount: _relaxItems.length,
                            separatorBuilder:
                                (BuildContext context, int index) {
                              return const SizedBox(width: 10);
                            },
                          ),
                        ),
                      )
                    else
                      //  {loadData();}
                      const Center(child: Icon(Icons.refresh_rounded)),
                    Positioned(
                      left: 110,
                      top: 60,
                      child: InkWell(
                        onTap: () {
                          setState(() {});
                        },
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(18),
                              border: Border.all(color: Colors.black),
                              color: Colors.white),
                          child: const Padding(
                            padding: EdgeInsets.all(2.0),
                            child: Icon(Icons.arrow_back_ios),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      right: 0,
                      top: 60,
                      child: InkWell(
                        onTap: () {
                          setState(() {});
                        },
                        child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(18),
                              border: Border.all(color: Colors.black),
                              color: Colors.white,
                            ),
                            child: const Icon(Icons.arrow_forward_ios)),
                      ),
                    )
                  ],
                )
              : const Center(),

          count == 1
              ? Stack(
                  children: [
                    if (_cityItems.isNotEmpty)
                      Padding(
                        padding: const EdgeInsets.only(left: 130.0),
                        child: SizedBox(
                          width: 1200,
                          height: 300,
                          child: ListView.separated(
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (context, index) {
                              return Column(
                                children: [
                                  Image.asset(
                                    _cityItems[index]["image"],
                                    width: 190,
                                    height: 150,
                                    fit: BoxFit.cover,
                                  ),
                                  Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(25, 0, 25, 0),
                                    child: Text(
                                      _cityItems[index]["title"],
                                      style: const TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16),
                                    ),
                                  ),
                                  Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(25, 0, 25, 0),
                                    child: Text(
                                      _cityItems[index]["description"],
                                      style: const TextStyle(
                                          fontSize: 14, color: Colors.grey),
                                    ),
                                  )
                                ],
                              );
                            },
                            itemCount: _cityItems.length,
                            separatorBuilder:
                                (BuildContext context, int index) {
                              return const SizedBox(width: 10);
                            },
                          ),
                        ),
                      )
                    else
                      //  {loadData();}
                      const Center(child: Icon(Icons.refresh_rounded)),
                    Positioned(
                      left: 110,
                      top: 60,
                      child: InkWell(
                        onTap: () {
                          setState(() {});
                        },
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(18),
                              border: Border.all(color: Colors.black),
                              color: Colors.white),
                          child: const Padding(
                            padding: EdgeInsets.all(2.0),
                            child: Icon(Icons.arrow_back_ios),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      right: 0,
                      top: 60,
                      child: InkWell(
                        onTap: () {
                          setState(() {});
                        },
                        child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(18),
                              border: Border.all(color: Colors.black),
                              color: Colors.white,
                            ),
                            child: const Icon(Icons.arrow_forward_ios)),
                      ),
                    )
                  ],
                )
              : const Center(),

          count == 2
              ? Stack(
                  children: [
                    if (_outdoorItems.isNotEmpty)
                      Padding(
                        padding: const EdgeInsets.only(left: 130.0),
                        child: SizedBox(
                          width: 1200,
                          height: 300,
                          child: ListView.separated(
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (context, index) {
                              return Column(
                                children: [
                                  Image.asset(
                                    _outdoorItems[index]["image"],
                                    width: 190,
                                    height: 150,
                                    fit: BoxFit.cover,
                                  ),
                                  Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(25, 0, 25, 0),
                                    child: Text(
                                      _outdoorItems[index]["title"],
                                      style: const TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16),
                                    ),
                                  ),
                                  Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(25, 0, 25, 0),
                                    child: Text(
                                      _outdoorItems[index]["description"],
                                      style: const TextStyle(
                                          fontSize: 14, color: Colors.grey),
                                    ),
                                  )
                                ],
                              );
                            },
                            itemCount: _outdoorItems.length,
                            separatorBuilder:
                                (BuildContext context, int index) {
                              return const SizedBox(width: 10);
                            },
                          ),
                        ),
                      )
                    else
                      //  {loadData();}
                      const Center(child: Icon(Icons.refresh_rounded)),
                    Positioned(
                      left: 110,
                      top: 60,
                      child: InkWell(
                        onTap: () {
                          setState(() {});
                        },
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(18),
                              border: Border.all(color: Colors.black),
                              color: Colors.white),
                          child: const Padding(
                            padding: EdgeInsets.all(2.0),
                            child: Icon(Icons.arrow_back_ios),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      right: 0,
                      top: 60,
                      child: InkWell(
                        onTap: () {
                          setState(() {});
                        },
                        child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(18),
                              border: Border.all(color: Colors.black),
                              color: Colors.white,
                            ),
                            child: const Icon(Icons.arrow_forward_ios)),
                      ),
                    )
                  ],
                )
              : const Center(),

          count == 3
              ? Stack(
                  children: [
                    if (_romanceItems.isNotEmpty)
                      Padding(
                        padding: const EdgeInsets.only(left: 130.0),
                        child: SizedBox(
                          width: 1200,
                          height: 300,
                          child: ListView.separated(
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (context, index) {
                              return Column(
                                children: [
                                  Image.asset(
                                    _romanceItems[index]["image"],
                                    width: 190,
                                    height: 150,
                                    fit: BoxFit.cover,
                                  ),
                                  Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(25, 0, 25, 0),
                                    child: Text(
                                      _romanceItems[index]["title"],
                                      style: const TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16),
                                    ),
                                  ),
                                  Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(25, 0, 25, 0),
                                    child: Text(
                                      _romanceItems[index]["description"],
                                      style: const TextStyle(
                                          fontSize: 14, color: Colors.grey),
                                    ),
                                  )
                                ],
                              );
                            },
                            itemCount: _romanceItems.length,
                            separatorBuilder:
                                (BuildContext context, int index) {
                              return const SizedBox(width: 10);
                            },
                          ),
                        ),
                      )
                    else
                      //  {loadData();}
                      const Center(child: Icon(Icons.refresh_rounded)),
                    Positioned(
                      left: 110,
                      top: 60,
                      child: InkWell(
                        onTap: () {
                          setState(() {});
                        },
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(18),
                              border: Border.all(color: Colors.black),
                              color: Colors.white),
                          child: const Padding(
                            padding: EdgeInsets.all(2.0),
                            child: Icon(Icons.arrow_back_ios),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      right: 0,
                      top: 60,
                      child: InkWell(
                        onTap: () {
                          setState(() {});
                        },
                        child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(18),
                              border: Border.all(color: Colors.black),
                              color: Colors.white,
                            ),
                            child: const Icon(Icons.arrow_forward_ios)),
                      ),
                    )
                  ],
                )
              : const Center(),

          count == 4
              ? Stack(
                  children: [
                    if (_foodItems.isNotEmpty)
                      Padding(
                        padding: const EdgeInsets.only(left: 130.0),
                        child: SizedBox(
                          width: 1200,
                          height: 300,
                          child: ListView.separated(
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (context, index) {
                              return Column(
                                children: [
                                  Image.asset(
                                    _foodItems[index]["image"],
                                    width: 190,
                                    height: 150,
                                    fit: BoxFit.cover,
                                  ),
                                  Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(25, 0, 25, 0),
                                    child: Text(
                                      _foodItems[index]["title"],
                                      style: const TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16),
                                    ),
                                  ),
                                  Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(25, 0, 25, 0),
                                    child: Text(
                                      _foodItems[index]["description"],
                                      style: const TextStyle(
                                          fontSize: 14, color: Colors.grey),
                                    ),
                                  )
                                ],
                              );
                            },
                            itemCount: _foodItems.length,
                            separatorBuilder:
                                (BuildContext context, int index) {
                              return const SizedBox(width: 10);
                            },
                          ),
                        ),
                      )
                    else
                      //  {loadData();}
                      const Center(child: Icon(Icons.refresh_rounded)),
                    Positioned(
                      left: 110,
                      top: 60,
                      child: InkWell(
                        onTap: () {
                          setState(() {});
                        },
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(18),
                              border: Border.all(color: Colors.black),
                              color: Colors.white),
                          child: const Padding(
                            padding: EdgeInsets.all(2.0),
                            child: Icon(Icons.arrow_back_ios),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      right: 0,
                      top: 60,
                      child: InkWell(
                        onTap: () {
                          setState(() {});
                        },
                        child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(18),
                              border: Border.all(color: Colors.black),
                              color: Colors.white,
                            ),
                            child: const Icon(Icons.arrow_forward_ios)),
                      ),
                    )
                  ],
                )
              : const Center(),

          count == 5
              ? Stack(
                  children: [
                    if (_beachItems.isNotEmpty)
                      Padding(
                        padding: const EdgeInsets.only(left: 130.0),
                        child: SizedBox(
                          width: 1200,
                          height: 300,
                          child: ListView.separated(
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (context, index) {
                              return Column(
                                children: [
                                  Image.asset(
                                    _beachItems[index]["image"],
                                    width: 190,
                                    height: 150,
                                    fit: BoxFit.cover,
                                  ),
                                  Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(25, 0, 25, 0),
                                    child: Text(
                                      _beachItems[index]["title"],
                                      style: const TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16),
                                    ),
                                  ),
                                  Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(25, 0, 25, 0),
                                    child: Text(
                                      _beachItems[index]["description"],
                                      style: const TextStyle(
                                          fontSize: 14, color: Colors.grey),
                                    ),
                                  )
                                ],
                              );
                            },
                            itemCount: _beachItems.length,
                            separatorBuilder:
                                (BuildContext context, int index) {
                              return const SizedBox(width: 10);
                            },
                          ),
                        ),
                      )
                    else
                      //  {loadData();}
                      const Center(child: Icon(Icons.refresh_rounded)),
                    Positioned(
                      left: 110,
                      top: 60,
                      child: InkWell(
                        onTap: () {
                          setState(() {});
                        },
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(18),
                              border: Border.all(color: Colors.black),
                              color: Colors.white),
                          child: const Padding(
                            padding: EdgeInsets.all(2.0),
                            child: Icon(Icons.arrow_back_ios),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      right: 0,
                      top: 60,
                      child: InkWell(
                        onTap: () {
                          setState(() {});
                        },
                        child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(18),
                              border: Border.all(color: Colors.black),
                              color: Colors.white,
                            ),
                            child: const Icon(Icons.arrow_forward_ios)),
                      ),
                    )
                  ],
                )
              : const Center(),

          Container(
            margin: const EdgeInsets.only(left: 130, top: 15),
            child: const Text(
              'Stay at our top unique properties',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),

          Container(
            margin: const EdgeInsets.only(left: 130),
            child: const Text(
              'From castles and villas to boats and igloos, we have it all',
              style: TextStyle(fontSize: 16, color: Colors.grey),
            ),
          ),

          Stack(
            children: [
              if (_topPropertiesItems.isNotEmpty)
                Padding(
                  padding: const EdgeInsets.only(left: 130.0),
                  child: SizedBox(
                    width: 1200,
                    height: 330,
                    child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset(
                              _topPropertiesItems[index]["image"],
                              width: 290,
                              height: 250,
                              fit: BoxFit.cover,
                            ),
                            SizedBox(
                              width: 290,
                              child: Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(25, 0, 25, 0),
                                child: Text(
                                  _topPropertiesItems[index]["title"],
                                  style: const TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(25, 0, 25, 0),
                              child: Text(
                                _topPropertiesItems[index]["description"],
                                style: const TextStyle(
                                    fontSize: 14, color: Colors.grey),
                              ),
                            ),
                            const SizedBox(
                              height: 3,
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(25, 0, 25, 0),
                              child: RichText(
                                  textAlign: TextAlign.center,
                                  text: TextSpan(
                                      style: const TextStyle(
                                        fontSize: 12,
                                      ),
                                      children: <TextSpan>[
                                        TextSpan(
                                            text: _topPropertiesItems[index]
                                                ["id"],
                                            style: const TextStyle(
                                                color: Colors.white,
                                                backgroundColor: Colors.blue,
                                                fontSize: 15)),
                                        TextSpan(
                                          text: _topPropertiesItems[index]
                                              ["rating"],
                                        ),
                                        TextSpan(
                                          text: _topPropertiesItems[index]
                                              ["review"],
                                          style: const TextStyle(
                                              color: Colors.grey),
                                        ),
                                      ])),
                            )
                          ],
                        );
                      },
                      itemCount: _topPropertiesItems.length,
                      separatorBuilder: (BuildContext context, int index) {
                        return const SizedBox(width: 10);
                      },
                    ),
                  ),
                )
              else
                //  {loadData();}
                const Center(child: Icon(Icons.refresh_rounded)),
              Positioned(
                left: 110,
                top: 100,
                child: InkWell(
                  onTap: () {
                    setState(() {
                      if (btnIndex > 0) {
                        btnIndex -= 1; // Decrement the btnIndex value by 1
                      }
                    });
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(18),
                        border: Border.all(color: Colors.black),
                        color: Colors.white),
                    child: const Padding(
                      padding: EdgeInsets.all(2.0),
                      child: Icon(Icons.arrow_back_ios),
                    ),
                  ),
                ),
              ),
              Positioned(
                right: 0,
                top: 100,
                child: InkWell(
                  onTap: () {
                    setState(() {
                      if (btnIndex < _topPropertiesItems.length - 1) {
                        btnIndex += 1; // Increment the btnIndex value by 1
                      }
                    });
                  },
                  child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(18),
                        border: Border.all(color: Colors.black),
                        color: Colors.white,
                      ),
                      child: const Icon(Icons.arrow_forward_ios)),
                ),
              )
            ],
          ),

          Container(
            margin: const EdgeInsets.only(left: 130, top: 15),
            child: const Text(
              'Get inspiration for your next trip',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),

          Stack(children: [
            Padding(
              padding: const EdgeInsets.only(left: 130.0),
              child: SizedBox(
                width: 1200,
                height: 380,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Stack(children: [
                      Container(
                        margin: const EdgeInsets.only(
                          top: 15,
                        ),
                        width: 525,
                        child: Image.asset(
                            'assets/images/Tiny House Dreischwesternherz.jpg'),
                      ),
                      const Positioned(
                        left: 120,
                        bottom: 70,
                        child: Text(
                          'The best pride parades across America',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      const Positioned(
                        left: 120,
                        bottom: 50,
                        child: Text(
                          'join the celebration of love,inclusively,and diversity',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ]),
                    Column(
                      // mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          margin: const EdgeInsets.only(
                              left: 60, top: 15, right: 15, bottom: 20),
                          child: Image.asset(
                            'assets/images/La Roulotte de Ciney.jpg',
                            // height: 300,
                            width: 350,
                          ),
                        ),
                        const SizedBox(
                          width: 200,
                          child: Text(
                            'Europe’s finest and most scenic train rides',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 16),
                          ),
                        ),
                        const SizedBox(
                          width: 200,
                          child: Text(
                            'From the snow-capped Alps to the vast blue fjords of Norway.',
                            style: TextStyle(fontSize: 14, color: Colors.grey),
                          ),
                        ),
                        // const Text('8.4 Very Good · 92 reviews')
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          margin: const EdgeInsets.only(
                              left: 15, top: 15, right: 15, bottom: 20),
                          child: Image.asset(
                            'assets/images/Domki Wierszyki Shelters.jpg',
                            // height: 300,
                            width: 350,
                          ),
                        ),
                        const SizedBox(
                          width: 200,
                          child: Text(
                            '6 best summer music festivals in South Korea',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 16),
                          ),
                        ),
                        const SizedBox(
                          width: 200,
                          child: Text(
                            'From dancing to K-hip-hop in Seoul to a classical music festival in the mountains.',
                            style: TextStyle(fontSize: 14, color: Colors.grey),
                          ),
                        ),
                        // const Text('9.7Exceptional · 86 reviews'),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          margin: const EdgeInsets.only(
                              left: 15, top: 15, right: 15, bottom: 20),
                          child: Image.asset(
                            'assets/images/Ranczo w Dolinie.jpg',
                            // height: 300,
                            width: 350,
                          ),
                        ),
                        const SizedBox(
                          width: 200,
                          child: Text(
                            '5 city trips for cyclists',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 16),
                          ),
                        ),
                        const SizedBox(
                          width: 200,
                          child: Text(
                            'The best cities around the world to discover on two wheels.',
                            style: TextStyle(fontSize: 14, color: Colors.grey),
                          ),
                        ),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          margin: const EdgeInsets.only(
                              left: 15, top: 15, right: 15, bottom: 20),
                          child: Image.asset(
                            'assets/images/Tiny House Dreischwesternherz.jpg',
                            // height: 300,
                            width: 350,
                          ),
                        ),
                        const SizedBox(
                          width: 200,
                          child: Text(
                            '6 inspiring sabbaticals in the Asia-Pacific region',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 16),
                          ),
                        ),
                        const SizedBox(
                          width: 200,
                          child: Text(
                            'From a mindful stay in a Japanese temple to a cooking class in Vietnam.',
                            style: TextStyle(fontSize: 14, color: Colors.grey),
                          ),
                        ),
                        // const Text('9.6 Exceptional · 145 reviews'),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              left: 110,
              top: 150,
              child: InkWell(
                onTap: () {
                  setState(() {});
                },
                child: Container(
                  // width: 25,
                  // height: 25,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(18),
                      border: Border.all(color: Colors.black),
                      color: Colors.white),
                  child: const Padding(
                    padding: EdgeInsets.all(2.0),
                    child: Icon(Icons.arrow_back_ios),
                  ),
                ),
              ),
            ),
            Positioned(
              right: -10,
              top: 150,
              child: InkWell(
                onTap: () {
                  setState(() {});
                },
                child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(18),
                      border: Border.all(color: Colors.black),
                      color: Colors.white,
                    ),
                    child: const Icon(Icons.arrow_forward_ios)),
              ),
            )
          ]),

          Container(
            margin: const EdgeInsets.only(left: 130, top: 15),
            child: const Text(
              'Homes guests love',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),

          Stack(
            children: [
              if (_homesGuestItems.isNotEmpty)
                Padding(
                  padding: const EdgeInsets.only(left: 130.0),
                  child: SizedBox(
                    width: 1200,
                    height: 350,
                    child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset(
                              _homesGuestItems[index]["image"],
                              width: 290,
                              height: 250,
                              fit: BoxFit.cover,
                            ),
                            SizedBox(
                              width: 290,
                              child: Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(25, 0, 25, 0),
                                child: Text(
                                  _homesGuestItems[index]["title"],
                                  style: const TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(25, 0, 25, 0),
                              child: Text(
                                _homesGuestItems[index]["description"],
                                style: const TextStyle(
                                    fontSize: 14, color: Colors.grey),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(25, 0, 25, 0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  RichText(
                                      textAlign: TextAlign.center,
                                      text: TextSpan(
                                          style: const TextStyle(
                                            fontSize: 12,
                                          ),
                                          children: <TextSpan>[
                                            TextSpan(
                                              text: _homesGuestItems[index]
                                                  ["text"],
                                              style: const TextStyle(
                                                  fontSize: 14,
                                                  color: Colors.grey),
                                            ),
                                            TextSpan(
                                              text: _homesGuestItems[index]
                                                  ["amount"],
                                              style: const TextStyle(
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ])),
                                  const SizedBox(
                                    height: 3,
                                  ),
                                  RichText(
                                      textAlign: TextAlign.center,
                                      text: TextSpan(
                                          style: const TextStyle(
                                            fontSize: 12,
                                          ),
                                          children: <TextSpan>[
                                            TextSpan(
                                                text: _homesGuestItems[index]
                                                    ["id"],
                                                style: const TextStyle(
                                                    color: Colors.white,
                                                    backgroundColor:
                                                        Colors.blue)),
                                            TextSpan(
                                              text: _homesGuestItems[index]
                                                  ["rating"],
                                            ),
                                            TextSpan(
                                              text: _homesGuestItems[index]
                                                  ["review"],
                                              style: const TextStyle(
                                                  color: Colors.grey),
                                            ),
                                          ])),
                                ],
                              ),
                            )
                          ],
                        );
                      },
                      itemCount: _homesGuestItems.length,
                      separatorBuilder: (BuildContext context, int index) {
                        return const SizedBox(width: 10);
                      },
                    ),
                  ),
                )
              else
                //  {loadData();}
                const Center(child: Icon(Icons.refresh_rounded)),
              Positioned(
                left: 110,
                top: 100,
                child: InkWell(
                  onTap: () {
                    setState(() {
                      if (btnIndex > 0) {
                        btnIndex -= 1; // Decrement the btnIndex value by 1
                      }
                    });
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(18),
                        border: Border.all(color: Colors.black),
                        color: Colors.white),
                    child: const Padding(
                      padding: EdgeInsets.all(2.0),
                      child: Icon(Icons.arrow_back_ios),
                    ),
                  ),
                ),
              ),
              Positioned(
                right: 0,
                top: 100,
                child: InkWell(
                  onTap: () {
                    setState(() {
                      if (btnIndex < _homesGuestItems.length - 1) {
                        btnIndex += 1; // Increment the btnIndex value by 1
                      }
                    });
                  },
                  child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(18),
                        border: Border.all(color: Colors.black),
                        color: Colors.white,
                      ),
                      child: const Icon(Icons.arrow_forward_ios)),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
