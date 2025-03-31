import 'package:flutter/material.dart';
import "package:ig_clone/widgets/Navbar.dart";
import 'pages/HomePage.dart';
import "package:ig_clone/pages/ProfilePage.dart";
import "package:ig_clone/pages/ReelPage.dart";
import "package:ig_clone/pages/SearchPage.dart";
import "package:ig_clone/pages/UploadPage.dart";

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    int currentIndex = 0;
    final List<Widget> list = [
      HomePage(),
      Searchpage(),
      Uploadpage(),
      Reelpage(),
      Profilepage(),
    ];

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Instagram Clone',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: Scaffold(
        body: HomePage(),
        bottomNavigationBar: Navbar(),
      ),
    );
  }
}
