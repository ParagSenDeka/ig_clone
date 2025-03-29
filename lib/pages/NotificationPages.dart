import 'package:flutter/material.dart';

class Notificationpages extends StatefulWidget {
  const Notificationpages({super.key});

  @override
  State<Notificationpages> createState() => _NotificationpagesState();
}

class _NotificationpagesState extends State<Notificationpages> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Notification'),actions: [
      ],),
    );
  }
}
