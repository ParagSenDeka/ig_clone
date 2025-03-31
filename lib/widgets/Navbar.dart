import "package:flutter/material.dart";
import "package:ig_clone/data/notifiers.dart";
import "NavigationDestinationWidget.dart";

class Navbar extends StatelessWidget {
  const Navbar({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: selectedPageValue,
      builder: (context, selectedPage, child) {
        return NavigationBar(
          surfaceTintColor: NavigationBarThemeData().surfaceTintColor,
          destinations: [
            Navigationdestinationwidget(icon: Icon(Icons.home), label: ""),
            Navigationdestinationwidget(icon: Icon(Icons.search), label: ""),
            Navigationdestinationwidget(
                icon: Icon(Icons.control_point), label: ""),
            Navigationdestinationwidget(
                icon: Icon(Icons.play_circle), label: ""),
            Navigationdestinationwidget(icon: Icon(Icons.person), label: ""),
          ],
          onDestinationSelected: (value) {
            selectedPageValue.value = value;
          },
          selectedIndex: selectedPage,
        );
      },
    );
  }
}
