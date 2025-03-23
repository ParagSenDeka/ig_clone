import 'package:flutter/material.dart';

class Navigationdestinationwidget extends StatelessWidget {
  final Icon icon;
  final String label;
  const Navigationdestinationwidget(
      {super.key,required this.icon, required this.label});

  @override
  Widget build(BuildContext context) {
    return NavigationDestination(icon: icon, label: label);
  }
}
