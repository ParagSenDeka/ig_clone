import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart' show GoogleFonts;
import 'package:ig_clone/pages/HomePage.dart';
import 'pages/Navbar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
      debugShowCheckedModeBanner: false,
      title: 'Instagram Clone',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: Scaffold(
      appBar: AppBar(
        title: Text("Instagram",
          style: GoogleFonts.lato(),
        ),
        actions: [
          IconButton(onPressed: () {
          }, icon: Icon(Icons.heart_broken_outlined)),
          IconButton(onPressed: (){}, icon: Icon(Icons.chat_bubble_outline))
        ],
      ),
      body:HomePage(),
      bottomNavigationBar: Navbar(),
    )
    );
  }
}
