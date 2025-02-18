import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ig_clone/widgets/Navbar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
      bottomNavigationBar: Navbar(),
    );
  }
}
