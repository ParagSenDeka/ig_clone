import "package:flutter/foundation.dart";
import "package:flutter/material.dart";
import "NavigationDestinationWidget.dart";

class Navbar extends StatefulWidget {
  const Navbar({super.key});
  @override
  State<Navbar> createState() => _NavbarState();
}

class _NavbarState extends State<Navbar> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return NavigationBar(
      surfaceTintColor: NavigationBarThemeData().surfaceTintColor,
      destinations: [
        Navigationdestinationwidget(icon: Icon(Icons.home), label: ""),
        Navigationdestinationwidget(icon: Icon(Icons.search), label: ""),
        Navigationdestinationwidget(icon: Icon(Icons.control_point), label: ""),
        Navigationdestinationwidget(icon: Icon(Icons.play_circle), label: ""),
        Navigationdestinationwidget(icon: Icon(Icons.person), label: ""),
      ],
      onDestinationSelected: (value) {
        setState(() {
          currentIndex = value; // Remove .value
        });
        print(currentIndex);
      },
      selectedIndex: currentIndex, // Remove .value
    );
  }
}
