import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_assgnment_5/home_page.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  startTimer() async {
    Timer(const Duration(seconds: 5), () {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => HomePage()));
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    startTimer();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset("assets/images/travel.jpg", width: 200, height: 200),
            Text(
              "Tourist Attractions",
              style: GoogleFonts.acme(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 60, 161, 83)),
            ),
            const SizedBox(
              height: 10,
            ),
            const CircularProgressIndicator(
              color: Color.fromARGB(255, 52, 152, 69),
            )
          ],
        ),
      ),
    );
  }
}
