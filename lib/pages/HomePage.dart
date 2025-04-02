import 'package:flutter/material.dart';
import 'package:ig_clone/pages/MassagePage.dart';
import 'package:ig_clone/pages/NotificationPage.dart';
import 'package:ig_clone/widgets/ApplicationWidget.dart';
import 'package:ig_clone/widgets/PostSection.dart';
import 'package:ig_clone/widgets/StoriesSection.dart';
import 'package:ig_clone/widgets/SuggestSection.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Instagram",
          style: AppWidget.AppBarTextStyle(),
        ),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const Notificationpages()));
              },
              icon: const Icon(Icons.favorite_border)),
          Padding(
            padding: const EdgeInsets.only(right: 12, left: 4),
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const Massagepage()));
              },
              child: SizedBox(
                width: 28,
                height: 28,
                child: Image.asset('assets/Images/chat.png'),
              ),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Storiessection(),
              const SizedBox(height: AppWidget.spaceBtwItemsMd - 2),
              Column(
                children: [
                  Postsection(),
                ],
              ),
              Suggestsection(),
            ],
          ),
        ),
      ),
    );
  }
}
