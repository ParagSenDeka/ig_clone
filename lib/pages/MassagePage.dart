import 'package:flutter/material.dart';
import 'package:ig_clone/widgets/ApplicationWidget.dart';

class Massagepage extends StatefulWidget {
  const Massagepage({super.key});

  @override
  State<Massagepage> createState() => _MassagepageState();
}

class _MassagepageState extends State<Massagepage> {
  @override
  Widget build(BuildContext context) {
    return
      Scaffold(
        appBar: AppBar(title: Text('User Name '), actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.edit_note)),
          IconButton(onPressed: () {}, icon: Icon(Icons.reorder)),
        ],),
      );
  }
}
