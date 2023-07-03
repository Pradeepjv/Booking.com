import 'package:flutter/material.dart';
class MyHomePage1 extends StatefulWidget {
  const MyHomePage1({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage1> createState() => _MyHomePage1State();
}

class _MyHomePage1State extends State<MyHomePage1> {
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              margin: const EdgeInsets.only(left: 100, top: 15),
              child: const Text(
                'Trending destinations',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 100),
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
                      margin: const EdgeInsets.only(left: 100, top: 15),
                      child: Image.asset(
                        'assets/images/mumbai.jpg',
                        // height: 300,
                        width: 530,
                      ),
                    ),
                    const Positioned(
                      left: 120,
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
                      left: 15,
                      top: 15,
                    ),
                    child: Image.asset(
                      'assets/images/Manali.jpg',
                      // height: 300,
                      width: 530,
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
                      margin: const EdgeInsets.only(left: 100, top: 15),
                      child: Image.asset(
                        'assets/images/Chennai.jpg',
                        // height: 800,
                        width: 350,
                      ),
                    ),
                    const Positioned(
                      left: 110,
                      top: 15,
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
                      left: 15,
                      top: 15,
                    ),
                    child: Image.asset(
                      'assets/images/delhi.jpg',
                      // height: 300,
                      width: 350,
                    ),
                  ),
                  const Positioned(
                    left: 25,
                    top: 14,
                    child: Text(
                      'delhi',
                      style: TextStyle(
                          color: Color.fromARGB(255, 107, 98, 98),
                          fontSize: 30,
                          fontWeight: FontWeight.bold),
                    ),
                  )
                ]),
                Stack(children: [
                  Container(
                    margin: const EdgeInsets.only(left: 15, top: 15, right: 15),
                    child: Image.asset(
                      'assets/images/banglore.jpg',
                      // height: 300,
                      width: 350,
                    ),
                  ),
                  const Positioned(
                    left: 25,
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
              margin: const EdgeInsets.only(left: 100, top: 15),
              child: const Text(
                'Browse by property type',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            Stack(children: [
              SizedBox(
                width: 1200,
                height: 300,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          margin: const EdgeInsets.only(
                              left: 100, top: 15, right: 15, bottom: 20),
                          child: Image.asset(
                            'assets/images/hotel.jpg',
                            // height: 300,
                            width: 350,
                          ),
                        ),
                        const Text(
                          'Hotels',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16),
                        ),
                        const Text(
                          '979,483 hotels',
                          style: TextStyle(fontSize: 14, color: Colors.grey),
                        )
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          margin: const EdgeInsets.only(
                              left: 15, top: 15, right: 15, bottom: 20),
                          child: Image.asset(
                            'assets/images/appartment.png',
                            // height: 300,
                            width: 350,
                          ),
                        ),
                        const Text(
                          'Apartments',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16),
                        ),
                        const Text(
                          '1,180,119 apartments',
                          style: TextStyle(fontSize: 14, color: Colors.grey),
                        )
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          margin: const EdgeInsets.only(
                              left: 15, top: 15, right: 15, bottom: 20),
                          child: Image.asset(
                            'assets/images/resorts.jpg',
                            // height: 300,
                            width: 350,
                          ),
                        ),
                        const Text(
                          'Resorts',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16),
                        ),
                        const Text(
                          '19,207 resorts',
                          style: TextStyle(fontSize: 14, color: Colors.grey),
                        )
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          margin: const EdgeInsets.only(
                              left: 15, top: 15, right: 15, bottom: 20),
                          child: Image.asset(
                            'assets/images/villas.jpg',
                            // height: 300,
                            width: 350,
                          ),
                        ),
                        const Text(
                          'Villas',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16),
                        ),
                        const Text(
                          '626,173 villas',
                          style: TextStyle(fontSize: 14, color: Colors.grey),
                        )
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          margin: const EdgeInsets.only(
                              left: 15, top: 15, right: 15, bottom: 20),
                          child: Image.asset(
                            'assets/images/cabins.jpg',
                            // height: 300,
                            width: 350,
                          ),
                        ),
                        const Text(
                          'Cabins',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16),
                        ),
                        const Text(
                          '44,448 cabins',
                          style: TextStyle(fontSize: 14, color: Colors.grey),
                        )
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          margin: const EdgeInsets.only(
                              left: 15, top: 15, right: 15, bottom: 20),
                          child: Image.asset(
                            'assets/images/cottage.jpg',
                            // height: 300,
                            width: 350,
                          ),
                        ),
                        const Text(
                          'Cottages',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16),
                        ),
                        const Text(
                          '681,583 cottages',
                          style: TextStyle(fontSize: 14, color: Colors.grey),
                        )
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          margin: const EdgeInsets.only(
                              left: 15, top: 15, right: 15, bottom: 20),
                          child: Image.asset(
                            'assets/images/glamping.jpg',
                            // height: 300,
                            width: 350,
                          ),
                        ),
                        const Text(
                          'Glamping',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16),
                        ),
                        const Text(
                          '17,569 Glamping Sites',
                          style: TextStyle(fontSize: 14, color: Colors.grey),
                        )
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          margin: const EdgeInsets.only(
                              left: 15, top: 15, right: 15, bottom: 20),
                          child: Image.asset(
                            'assets/images/serviced_apartments.jpg',
                            // height: 300,
                            width: 350,
                          ),
                        ),
                        const Text(
                          'Serviced Apartments',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16),
                        ),
                        const Text(
                          '40,249 serviced apartments',
                          style: TextStyle(fontSize: 14, color: Colors.grey),
                        )
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          margin: const EdgeInsets.only(
                              left: 15, top: 15, right: 15, bottom: 20),
                          child: Image.asset(
                            'assets/images/vacation_homes.jpg',
                            // height: 300,
                            width: 350,
                          ),
                        ),
                        const Text(
                          'Vacation Homes',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16),
                        ),
                        const Text(
                          '626,173 vacation homes',
                          style: TextStyle(fontSize: 14, color: Colors.grey),
                        )
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          margin: const EdgeInsets.only(
                              left: 15, top: 15, right: 15, bottom: 20),
                          child: Image.asset(
                            'assets/images/guest_houses.png',
                            // height: 300,
                            width: 350,
                          ),
                        ),
                        const Text(
                          'Guest houses',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16),
                        ),
                        const Text('115,640 guest houses')
                      ],
                    ),
                  ],
                ),
              ),
              Positioned(
                left: 85,
                top: 100,
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
              Positioned(
                right: -10,
                top: 100,
                child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(18),
                      border: Border.all(color: Colors.black),
                      color: Colors.white,
                    ),
                    child: const Icon(Icons.arrow_forward_ios)),
              )
            ]),
            Container(
              margin: const EdgeInsets.only(left: 100, top: 15),
              child: const Text(
                'Explore India',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 100),
              child: const Text(
                'These popular destinations have a lot to offer',
                style: TextStyle(fontSize: 16, color: Colors.grey),
              ),
            ),
            Stack(children: [
              SizedBox(
                width: 1200,
                height: 205,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Column(
                      children: [
                        Container(
                          margin: const EdgeInsets.only(
                              left: 100, top: 15, right: 15, bottom: 20),
                          child: Image.asset(
                            'assets/images/goa.jpg',
                            // height: 300,
                            width: 200,
                          ),
                        ),
                        const Text(
                          'Goa',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16),
                        ),
                        const Text(
                          '5,249 properties',
                          style: TextStyle(fontSize: 14, color: Colors.grey),
                        )
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          margin: const EdgeInsets.only(
                              left: 15, top: 15, right: 15, bottom: 20),
                          child: Image.asset(
                            'assets/images/delhi1.jpg',
                            // height: 300,
                            width: 200,
                          ),
                        ),
                        const Text(
                          'New Delhi',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16),
                        ),
                        const Text(
                          '2,915 properties',
                          style: TextStyle(fontSize: 14, color: Colors.grey),
                        )
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          margin: const EdgeInsets.only(
                              left: 15, top: 15, right: 15, bottom: 20),
                          child: Image.asset(
                            'assets/images/rishikesh.jpg',
                            // height: 300,
                            width: 200,
                          ),
                        ),
                        const Text(
                          'Rishīkesh',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16),
                        ),
                        const Text(
                          '478 properties',
                          style: TextStyle(fontSize: 14, color: Colors.grey),
                        )
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          margin: const EdgeInsets.only(
                              left: 15, top: 15, right: 15, bottom: 20),
                          child: Image.asset(
                            'assets/images/mumbai.jpg',
                            // height: 300,
                            width: 200,
                          ),
                        ),
                        const Text(
                          'Mumbai',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16),
                        ),
                        const Text(
                          '1,650 properties',
                          style: TextStyle(fontSize: 14, color: Colors.grey),
                        )
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          margin: const EdgeInsets.only(
                              left: 15, top: 15, right: 15, bottom: 20),
                          child: Image.asset(
                            'assets/images/lonavala.jpg',
                            // height: 300,
                            width: 200,
                          ),
                        ),
                        const Text(
                          'Lonavala',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16),
                        ),
                        const Text(
                          '749 properties',
                          style: TextStyle(fontSize: 14, color: Colors.grey),
                        )
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          margin: const EdgeInsets.only(
                              left: 15, top: 15, right: 15, bottom: 20),
                          child: Image.asset(
                            'assets/images/banglore.jpg',
                            // height: 300,
                            width: 200,
                          ),
                        ),
                        const Text(
                          'Bangalore',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16),
                        ),
                        const Text(
                          '2,042 properties',
                          style: TextStyle(fontSize: 14, color: Colors.grey),
                        )
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          margin: const EdgeInsets.only(
                              left: 15, top: 15, right: 15, bottom: 20),
                          child: Image.asset(
                            'assets/images/Manali.jpg',
                            // height: 300,
                            width: 200,
                          ),
                        ),
                        const Text(
                          'Manāli',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16),
                        ),
                        const Text(
                          '871 properties',
                          style: TextStyle(fontSize: 14, color: Colors.grey),
                        )
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          margin: const EdgeInsets.only(
                              left: 15, top: 15, right: 15, bottom: 20),
                          child: Image.asset(
                            'assets/images/north_goa.jpg',
                            // height: 300,
                            width: 200,
                          ),
                        ),
                        const Text(
                          'North Goa',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16),
                        ),
                        const Text(
                          '3,907 properties',
                          style: TextStyle(fontSize: 14, color: Colors.grey),
                        )
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          margin: const EdgeInsets.only(
                              left: 15, top: 15, right: 15, bottom: 20),
                          child: Image.asset(
                            'assets/images/Ooty.jpg',
                            // height: 300,
                            width: 200,
                          ),
                        ),
                        const Text(
                          'Ooty',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16),
                        ),
                        const Text(
                          '470 properties',
                          style: TextStyle(fontSize: 14, color: Colors.grey),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              Positioned(
                left: 85,
                top: 65,
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
              Positioned(
                right: -10,
                top: 65,
                child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(18),
                      border: Border.all(color: Colors.black),
                      color: Colors.white,
                    ),
                    child: const Icon(Icons.arrow_forward_ios)),
              )
            ]),

            Container(
              margin: const EdgeInsets.only(left: 100, top: 15),
              child: const Text(
                'Quick and easy trip planner',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            Container(
              margin: const EdgeInsets.only(left: 100),
              child: const Text(
                'Pick a vibe and explore the top destinations in India',
                style: TextStyle(fontSize: 16, color: Colors.grey),
              ),
            ),
            // buttons for above
            Container(
              margin: const EdgeInsets.only(left: 100, top: 15),
              child: Row(
                children: [
                  InkWell(
                    onTap: () {
                      setState(() {
                        index = 0;
                      });
                    },
                    child: Container(
                      padding: const EdgeInsets.all(8.0),
                      decoration: BoxDecoration(
                          border: index == 0
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
                          index = 1;
                        });
                      },
                      child: Container(
                        padding: const EdgeInsets.all(8.0),
                        decoration: BoxDecoration(
                            border: index == 1
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
                          index = 2;
                        });
                      },
                      child: Container(
                        padding: const EdgeInsets.all(8.0),
                        decoration: BoxDecoration(
                            border: index == 2
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
                          index = 3;
                        });
                      },
                      child: Container(
                        padding: const EdgeInsets.all(8.0),
                        decoration: BoxDecoration(
                            border: index == 3
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
                          index = 4;
                        });
                      },
                      child: Container(
                        padding: const EdgeInsets.all(8.0),
                        decoration: BoxDecoration(
                            border: index == 4
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
                          index = 5;
                        });
                      },
                      child: Container(
                        padding: const EdgeInsets.all(8.0),
                        decoration: BoxDecoration(
                            border: index == 5
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
            // images for above
            Stack(children: [
              SizedBox(
                width: 1200,
                height: 205,
                child: ListView(
                  // shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  children: [
                    Column(
                      children: [
                        Container(
                          margin: const EdgeInsets.only(
                              left: 100, top: 15, right: 15, bottom: 20),
                          child: Image.asset(
                            'assets/images/Yercaud.jpg',
                            // height: 300,
                            width: 200,
                          ),
                        ),
                        const Text(
                          'Yercaud',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16),
                        ),
                        const Text(
                          '147 km away',
                          style: TextStyle(fontSize: 14, color: Colors.grey),
                        )
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          margin: const EdgeInsets.only(
                              left: 15, top: 15, right: 15, bottom: 20),
                          child: Image.asset(
                            'assets/images/kumarakom.jpg',
                            // height: 300,
                            width: 200,
                          ),
                        ),
                        const Text(
                          'Kumarakom',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16),
                        ),
                        const Text(
                          '397 km away',
                          style: TextStyle(fontSize: 14, color: Colors.grey),
                        )
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          margin: const EdgeInsets.only(
                              left: 15, top: 15, right: 15, bottom: 20),
                          child: Image.asset(
                            'assets/images/panchangi.jpg',
                            // height: 300,
                            width: 200,
                          ),
                        ),
                        const Text(
                          'Panchgani',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16),
                        ),
                        const Text(
                          '682 km away',
                          style: TextStyle(fontSize: 14, color: Colors.grey),
                        )
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          margin: const EdgeInsets.only(
                              left: 15, top: 15, right: 15, bottom: 20),
                          child: Image.asset(
                            'assets/images/lavasa.jpg',
                            // height: 300,
                            width: 200,
                          ),
                        ),
                        const Text(
                          'Lavasa',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16),
                        ),
                        const Text(
                          '745 km away',
                          style: TextStyle(fontSize: 14, color: Colors.grey),
                        )
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          margin: const EdgeInsets.only(
                              left: 15, top: 15, right: 15, bottom: 20),
                          child: Image.asset(
                            'assets/images/saputara.jpg',
                            // height: 300,
                            width: 200,
                          ),
                        ),
                        const Text(
                          'Saputara',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16),
                        ),
                        const Text(
                          ' 939 km away',
                          style: TextStyle(fontSize: 14, color: Colors.grey),
                        )
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          margin: const EdgeInsets.only(
                              left: 15, top: 15, right: 15, bottom: 20),
                          child: Image.asset(
                            'assets/images/kalimpong.jpg',
                            // height: 300,
                            width: 200,
                          ),
                        ),
                        const Text(
                          'Kalimpong',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16),
                        ),
                        const Text(
                          '1,933 km away',
                          style: TextStyle(fontSize: 14, color: Colors.grey),
                        )
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          margin: const EdgeInsets.only(
                              left: 15, top: 15, right: 15, bottom: 20),
                          child: Image.asset(
                            'assets/images/pelling.jpg',
                            // height: 300,
                            width: 200,
                          ),
                        ),
                        const Text(
                          'Pelling',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16),
                        ),
                        const Text(
                          '1,939 km away',
                          style: TextStyle(fontSize: 14, color: Colors.grey),
                        )
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          margin: const EdgeInsets.only(
                              left: 15, top: 15, right: 15, bottom: 20),
                          child: Image.asset(
                            'assets/images/kasauli.jpg',
                            // height: 300,
                            width: 200,
                          ),
                        ),
                        const Text(
                          'Kasauli',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16),
                        ),
                        const Text(
                          '1,993 km away',
                          style: TextStyle(fontSize: 14, color: Colors.grey),
                        )
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          margin: const EdgeInsets.only(
                              left: 15, top: 15, right: 15, bottom: 20),
                          child: Image.asset(
                            'assets/images/chail.jpg',
                            // height: 300,
                            width: 200,
                          ),
                        ),
                        const Text(
                          'Chail',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16),
                        ),
                        const Text(
                          '2,001 km away',
                          style: TextStyle(fontSize: 14, color: Colors.grey),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              Positioned(
                left: 85,
                top: 65,
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
              Positioned(
                right: -10,
                top: 65,
                child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(18),
                      border: Border.all(color: Colors.black),
                      color: Colors.white,
                    ),
                    child: const Icon(Icons.arrow_forward_ios)),
              )
            ]),

            Container(
              margin: const EdgeInsets.only(left: 100, top: 15),
              child: const Text(
                'Stay at our top unique properties',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            Container(
              margin: const EdgeInsets.only(left: 100),
              child: const Text(
                'From castles and villas to boats and igloos, we have it all',
                style: TextStyle(fontSize: 16, color: Colors.grey),
              ),
            ),

            Stack(children: [
              SizedBox(
                width: 1200,
                height: 320,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          margin: const EdgeInsets.only(
                              left: 100, top: 15, right: 15, bottom: 20),
                          child: Image.asset(
                            'assets/images/La Roulotte de Ciney.jpg',
                            // height: 300,
                            width: 350,
                          ),
                        ),
                        const Text(
                          'La Roulotte de Ciney',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16),
                        ),
                        const Text(
                          'Belgium, Ciney',
                          style: TextStyle(fontSize: 14, color: Colors.grey),
                        ),
                        // const Text('8.4 Very Good · 92 reviews')
                        RichText(
                            text: const TextSpan(
                                style: TextStyle(
                                  fontSize: 12,
                                ),
                                children: <TextSpan>[
                              TextSpan(
                                  text: '8.4',
                                  style: TextStyle(
                                      color: Colors.white,
                                      backgroundColor: Colors.blue)),
                              TextSpan(text: ' Very Good'),
                              TextSpan(
                                text: '· 92 reviews ',
                                style: TextStyle(color: Colors.grey),
                              ),
                            ]))
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
                        const Text(
                          'Domki Wierszyki Shelters',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16),
                        ),
                        const Text(
                          'Poland, Zakopane',
                          style: TextStyle(fontSize: 14, color: Colors.grey),
                        ),
                        // const Text('9.7Exceptional · 86 reviews'),
                        RichText(
                            text: const TextSpan(
                                style: TextStyle(
                                  fontSize: 12,
                                ),
                                children: <TextSpan>[
                              TextSpan(
                                  text: '9.7',
                                  style: TextStyle(
                                      color: Colors.white,
                                      backgroundColor: Colors.blue)),
                              TextSpan(text: ' Exceptional'),
                              TextSpan(
                                text: '· 86 reviews ',
                                style: TextStyle(color: Colors.grey),
                              ),
                            ]))
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
                        const Text(
                          'Ranczo w Dolinie',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16),
                        ),
                        const Text(
                          'Poland, Kiszkowo',
                          style: TextStyle(fontSize: 14, color: Colors.grey),
                        ),
                        RichText(
                            text: const TextSpan(
                                style: TextStyle(
                                  fontSize: 12,
                                ),
                                children: <TextSpan>[
                              TextSpan(
                                  text: '9.5',
                                  style: TextStyle(
                                      color: Colors.white,
                                      backgroundColor: Colors.blue)),
                              TextSpan(text: ' Exceptional'),
                              TextSpan(
                                text: '· 232 reviews ',
                                style: TextStyle(color: Colors.grey),
                              ),
                            ]))
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
                        const Text(
                          'Tiny House Dreischwesternherz',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16),
                        ),
                        const Text(
                          'Germany, Trier',
                          style: TextStyle(fontSize: 14, color: Colors.grey),
                        ),
                        // const Text('9.6 Exceptional · 145 reviews'),
                        RichText(
                            text: const TextSpan(
                                style: TextStyle(
                                  fontSize: 12,
                                ),
                                children: <TextSpan>[
                              TextSpan(
                                  text: '9.6',
                                  style: TextStyle(
                                      color: Colors.white,
                                      backgroundColor: Colors.blue)),
                              TextSpan(text: ' Exceptional'),
                              TextSpan(
                                text: '· 145 reviews ',
                                style: TextStyle(color: Colors.grey),
                              ),
                            ]))
                      ],
                    ),
                  ],
                ),
              ),
              Positioned(
                left: 85,
                top: 100,
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
              Positioned(
                right: -10,
                top: 100,
                child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(18),
                      border: Border.all(color: Colors.black),
                      color: Colors.white,
                    ),
                    child: const Icon(Icons.arrow_forward_ios)),
              )
            ]),

            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  margin: const EdgeInsets.only(left: 100, top: 15),
                  child: const Text(
                    'Get inspiration for your next trip',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 720, top: 15),
                  child: const Text(
                    'More',
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.blue,
                    ),
                  ),
                ),
              ],
            ),

            Stack(children: [
              SizedBox(
                width: 1200,
                height: 380,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Stack(children: [
                      Container(
                        margin: const EdgeInsets.only(
                          left: 100,
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
              Positioned(
                left: 85,
                top: 150,
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
              Positioned(
                right: -10,
                top: 150,
                child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(18),
                      border: Border.all(color: Colors.black),
                      color: Colors.white,
                    ),
                    child: const Icon(Icons.arrow_forward_ios)),
              )
            ]),

            Row(
              children: [
                Container(
                  margin: const EdgeInsets.only(left: 100, top: 15),
                  child: const Text(
                    'Homes guests love',
                    style: TextStyle(
                      fontSize: 24,

                      // fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 790, top: 15),
                  child: const Text(
                    'Discover homes',
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.blue,
                    ),
                  ),
                ),
              ],
            ),

            Stack(children: [
              SizedBox(
                width: 1200,
                height: 420,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          margin: const EdgeInsets.only(
                              left: 100, top: 15, right: 15, bottom: 20),
                          child: Image.asset(
                            'assets/images/Aparthotel Stare Miasto.webp',
                            height: 220,
                            width: 350,
                            fit: BoxFit.fill,
                          ),
                        ),
                        const Text(
                          'Aparthotel Stare Miasto',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16),
                        ),
                        const Text(
                          'Old Town, Poland, Kraków',
                          style: TextStyle(fontSize: 14, color: Colors.grey),
                        ),
                        // const Text('8.4 Very Good · 92 reviews')
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            RichText(
                              text: const TextSpan(
                                  style: TextStyle(
                                    fontSize: 12,
                                  ),
                                  children: <TextSpan>[
                                    TextSpan(
                                      text: ' Starting from ',
                                      style: TextStyle(
                                          fontSize: 14, color: Colors.grey),
                                    ),
                                    TextSpan(
                                      text: '₹ 9,651',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ]),
                            ),
                            RichText(
                                text: const TextSpan(
                                    style: TextStyle(
                                      fontSize: 12,
                                    ),
                                    children: <TextSpan>[
                                  TextSpan(
                                      text: '9.7',
                                      style: TextStyle(
                                          color: Colors.white,
                                          backgroundColor: Colors.blue)),
                                  TextSpan(text: ' Exceptional'),
                                  TextSpan(
                                    text: '· 86 reviews ',
                                    style: TextStyle(color: Colors.grey),
                                  ),
                                ]))
                          ],
                        )

                        // SizedBox(
                        //   width:150,
                        //   child:
                        //     Text('data'),

                        // )
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          margin: const EdgeInsets.only(
                              left: 15, top: 15, right: 15, bottom: 20),
                          child: Image.asset(
                            'assets/images/7Seasons Apartments Budapest.webp',
                            height: 220,
                            width: 350,
                            fit: BoxFit.fill,
                          ),
                        ),
                        const Text(
                          '7Seasons Apartments Budapest',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16),
                        ),
                        const Text(
                          '06. Terézváros, Hungary, Budapest',
                          style: TextStyle(fontSize: 14, color: Colors.grey),
                        ),

                        // const Text('9.7Exceptional · 86 reviews'),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            RichText(
                              text: const TextSpan(
                                  style: TextStyle(
                                    fontSize: 12,
                                  ),
                                  children: <TextSpan>[
                                    TextSpan(
                                      text: ' Starting from ',
                                      style: TextStyle(
                                          fontSize: 14, color: Colors.grey),
                                    ),
                                    TextSpan(
                                      text: '₹ 13,911',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ]),
                            ),
                            RichText(
                                text: const TextSpan(
                                    style: TextStyle(
                                      fontSize: 12,
                                    ),
                                    children: <TextSpan>[
                                  TextSpan(
                                      text: '9.7',
                                      style: TextStyle(
                                          color: Colors.white,
                                          backgroundColor: Colors.blue)),
                                  TextSpan(text: ' Exceptional'),
                                  TextSpan(
                                    text: '· 86 reviews ',
                                    style: TextStyle(color: Colors.grey),
                                  ),
                                ]))
                          ],
                        )
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          margin: const EdgeInsets.only(
                              left: 15, top: 15, right: 15, bottom: 20),
                          child: Image.asset(
                            'assets/images/3 Epoques Apartments by Prague Residences.webp',
                            height: 220,
                            width: 350,
                            fit: BoxFit.fill,
                          ),
                        ),
                        const Text(
                          '3 Epoques Apartments by Prague Residences',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16),
                        ),
                        const Text(
                          'Prague 1, Czech Republic, Praha 1',
                          style: TextStyle(fontSize: 14, color: Colors.grey),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            RichText(
                              text: const TextSpan(
                                  style: TextStyle(
                                    fontSize: 12,
                                  ),
                                  children: <TextSpan>[
                                    TextSpan(
                                      text: ' Starting from ',
                                      style: TextStyle(
                                          fontSize: 14, color: Colors.grey),
                                    ),
                                    TextSpan(
                                      text: '₹ 13,552',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ]),
                            ),
                            RichText(
                                text: const TextSpan(
                                    style: TextStyle(
                                      fontSize: 12,
                                    ),
                                    children: <TextSpan>[
                                  TextSpan(
                                      text: '9.7',
                                      style: TextStyle(
                                          color: Colors.white,
                                          backgroundColor: Colors.blue)),
                                  TextSpan(text: ' Exceptional'),
                                  TextSpan(
                                    text: '· 86 reviews ',
                                    style: TextStyle(color: Colors.grey),
                                  ),
                                ]))
                          ],
                        )

                        // TextSpan(
                        //             text: '9.5',
                        //             style: TextStyle(
                        //                 color: Colors.white,
                        //                 backgroundColor: Colors.blue)),
                        //         TextSpan(text: ' Exceptional'),
                        //         TextSpan(
                        //           text: '· 232 reviews ',
                        //           style: TextStyle(color: Colors.grey),
                        //         ),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          margin: const EdgeInsets.only(
                              left: 15, top: 15, right: 15, bottom: 20),
                          child: Image.asset(
                            'assets/images/6 Continents Apartments by Prague Residences.webp',
                            height: 220,
                            width: 350,
                            fit: BoxFit.fill,
                          ),
                        ),
                        const Text(
                          '6 Continents Apartments by Prague Residences',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16),
                        ),
                        const Text(
                          'Prague 1, Czech Republic, Prague',
                          style: TextStyle(fontSize: 14, color: Colors.grey),
                        ),
                        // const Text('9.6 Exceptional · 145 reviews'),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            RichText(
                              text: const TextSpan(
                                  style: TextStyle(
                                    fontSize: 12,
                                  ),
                                  children: <TextSpan>[
                                    TextSpan(
                                      text: ' Starting from ',
                                      style: TextStyle(
                                          fontSize: 14, color: Colors.grey),
                                    ),
                                    TextSpan(
                                      text: '₹ 11,024',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ]),
                            ),
                            RichText(
                                text: const TextSpan(
                                    style: TextStyle(
                                      fontSize: 12,
                                    ),
                                    children: <TextSpan>[
                                  TextSpan(
                                      text: '9.7',
                                      style: TextStyle(
                                          color: Colors.white,
                                          backgroundColor: Colors.blue)),
                                  TextSpan(text: ' Exceptional'),
                                  TextSpan(
                                    text: '· 86 reviews ',
                                    style: TextStyle(color: Colors.grey),
                                  ),
                                ]))
                          ],
                        )
                      ],
                    ),
                  ],
                ),
              ),
              Positioned(
                left: 85,
                top: 100,
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
              Positioned(
                right: -10,
                top: 100,
                child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(18),
                      border: Border.all(color: Colors.black),
                      color: Colors.white,
                    ),
                    child: const Icon(Icons.arrow_forward_ios)),
              )
            ]),
          ],
        ),
      ),
    );
  }
}
