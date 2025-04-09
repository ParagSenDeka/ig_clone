import 'dart:async';

import 'package:flutter/material.dart';
import 'package:ig_clone/pages/HomePage.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({super.key});

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      Timer(const Duration(seconds: 3), () {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => const HomePage()),
        );
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Centered Instagram logo
          Center(
            child: SizedBox(
              height: 150,
              width: 150,
              child: const Image(
                image: AssetImage('assets/Instagram_logo.png'),
              ),
            ),
          ),

          // Developer credit at the bottom center
          Positioned(
            bottom: 30,
            left: 0,
            right: 0,
            child: Text(
              'By\nKuldeep & Parag',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 14,
                color: Colors.grey[600],
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
