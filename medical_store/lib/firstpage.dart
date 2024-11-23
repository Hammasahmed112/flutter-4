import 'dart:async';

import 'package:flutter/material.dart';
import 'package:medical_store/secondpage.dart';

class Firstpage extends StatefulWidget {
  const Firstpage({super.key});

  @override
  State<Firstpage> createState() => _FirstpageState();
}

class _FirstpageState extends State<Firstpage> {
  @override
  void initState() {
    super.initState();

    Timer(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => const Secondpage(),
          ));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Container(
          height: double.infinity,
          decoration: const BoxDecoration(
              gradient: LinearGradient(
            colors: [
              Colors.deepPurpleAccent,
              Colors.blueAccent,
            ],
          )),
          child: Padding(
            padding: const EdgeInsets.only(top: 30),
            child: Image.asset('accets/images/logo_background.png'),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 300, left: 130),
          child: Container(
            height: 100,
            width: 100,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50), color: Colors.white),
            child: Image.asset('accets/images/Vector.png'),
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(left: 80, top: 420),
          child: Text(
            'Quick Medical',
            style: TextStyle(fontSize: 30, color: Colors.white),
          ),
        )
      ],
    ));
  }
}
