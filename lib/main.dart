import 'package:flutter/material.dart';
import "package:ig_clone/data/notifiers.dart";
import "package:ig_clone/pages/SplashScreen.dart";
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
    final List<Widget> listPage = [
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
        body: ValueListenableBuilder(
          valueListenable: selectedPageValue,
          builder: (context, value, child) {
            return listPage.elementAt(selectedPageValue.value);
          },
        ),
        bottomNavigationBar: Navbar(),
      ),
    );
  }
}
