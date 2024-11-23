import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:medical_store/home/medician.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int counter = 1;
  int _currentIndex = 0;

  List<String> images = [
    'accets/images/Group3619.png',
    'accets/images/image.png',
    'accets/images/images (1).jpg'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              width: 375,
              height: 213,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  gradient: const LinearGradient(colors: [
                    Color.fromARGB(255, 185, 236, 126),
                    Colors.blue
                  ])),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 32, left: 22),
              child: InkWell(
                onTap: () {
                  
                },
                child: Container(
                  child: const CircleAvatar(
                    backgroundImage: AssetImage(
                        'accets/images/417006580_2161961464169341_3020076478770961079_n.jpg'),
                  ),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 32, left: 295),
              child: Row(
                children: [
                  Icon(
                    Icons.notification_important,
                    color: Colors.white,
                  ),
                  SizedBox(width: 8),
                  Icon(
                    Icons.shopping_bag,
                    color: Colors.white,
                  )
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 90, left: 22),
              child: Text('Hi, Hammas',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w700,
                  )),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 120, left: 22),
              child: Text(
                'Welcome to Quick Medical Store',
                style: TextStyle(fontSize: 16),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 180, left: 40, right: 40),
              child: TextField(
                  decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: const BorderSide(color: Colors.grey, width: 2)),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: const BorderSide(color: Colors.grey, width: 2)),
                prefixIcon: const Icon(Icons.search),
                hintText: 'Search Medicine & Healthcare products',
                hintStyle: const TextStyle(color: Colors.grey, fontSize: 12),
              )),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 250, left: 20),
              child: Text(
                'Top Categories',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 290),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    width: 54,
                    height: 58,
                    decoration: BoxDecoration(
                        color: Colors.pinkAccent,
                        borderRadius: BorderRadius.circular(30)),
                  ),
                  Container(
                    width: 54,
                    height: 58,
                    decoration: BoxDecoration(
                        color: Colors.blueAccent,
                        borderRadius: BorderRadius.circular(30)),
                  ),
                  Container(
                    width: 54,
                    height: 58,
                    decoration: BoxDecoration(
                        color: Colors.yellowAccent,
                        borderRadius: BorderRadius.circular(30)),
                  ),
                  Container(
                    width: 54,
                    height: 58,
                    decoration: BoxDecoration(
                        color: Colors.greenAccent,
                        borderRadius: BorderRadius.circular(30)),
                  )
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 355, left: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text('Dental'),
                  Text('Wellness'),
                  Text('Homeo'),
                  Text('Eye care'),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 400),
              child: CarouselSlider(
                items: images
                    .map((e) => Container(
                          margin: const EdgeInsets.symmetric(horizontal: 1),
                          child: Image.asset(
                            e,
                            width: 300,
                            fit: BoxFit.cover,
                          ),
                        ))
                    .toList(),
                options: CarouselOptions(
                  height: 150,
                  viewportFraction: 1,
                  autoPlay: true,
                  autoPlayInterval: const Duration(seconds: 3),
                  autoPlayAnimationDuration: const Duration(milliseconds: 800),
                  autoPlayCurve: Curves.fastOutSlowIn,
                  onPageChanged: (index, reason) {
                    setState(() {
                      _currentIndex = index;
                    });
                  },
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 580, left: 25),
              child: Text(
                'Deals of the Day',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 620,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Card(
                    elevation: 8,
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const Medician(),
                            ));
                      },
                      child: SizedBox(
                        height: 150,
                        width: 150,
                        child: Image.asset(
                            'accets/images/25e65ef036cc94d16d67cb5e40a9108b.png'),
                      ),
                    ),
                  ),
                  Card(
                    elevation: 8,
                    child: SizedBox(
                      height: 150,
                      width: 150,
                      child: Image.asset(
                          'accets/images/25e65ef036cc94d16d67cb5e40a9108b.png'),
                    ),
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 785, left: 35),
              child: Column(
                children: [
                  Text('Accu-check Active'),
                  Text('Test Strip'),
                  Text('Rs.112',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w600)),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 785, left: 210),
              child: Column(
                children: [
                  Text('Accu-check Active'),
                  Text('Test Strip'),
                  Text('Rs.112',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w600)),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 875,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Card(
                    elevation: 8,
                    child: SizedBox(
                      height: 150,
                      width: 150,
                      child: Image.asset(
                          'accets/images/25e65ef036cc94d16d67cb5e40a9108b.png'),
                    ),
                  ),
                  Card(
                    elevation: 8,
                    child: SizedBox(
                      height: 150,
                      width: 150,
                      child: Image.asset(
                          'accets/images/25e65ef036cc94d16d67cb5e40a9108b.png'),
                    ),
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 1040, left: 35),
              child: Column(
                children: [
                  Text('Accu-check Active'),
                  Text('Test Strip'),
                  Text('Rs.112',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w600)),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 1040, left: 210),
              child: Column(
                children: [
                  Text('Accu-check Active'),
                  Text('Test Strip'),
                  Text('Rs.112',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w600)),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
