import 'package:flutter/material.dart';
import 'package:medical_store/login.dart';

class Secondpage extends StatefulWidget {
  const Secondpage({super.key});

  @override
  State<Secondpage> createState() => _SecondpageState();
}

class _SecondpageState extends State<Secondpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 140, left: 50),
          child: Image.asset(
            'accets/images/splash_image_1.png',
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 477, left: 60),
          child: Container(
            child: Image.asset(
              'accets/images/splash_details.png',
            ),
          ),
        ),
        TextButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Login(),
                  ));
            },
            child: const Padding(
              padding: EdgeInsets.only(top: 759, left: 30),
              child: Text('skip'),
            )),
        TextButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Login(),
                  ));
            },
            child: const Padding(
              padding: EdgeInsets.only(top: 759, left: 270),
              child: Text('Next'),
            )),
      ],
    ));
  }
}
