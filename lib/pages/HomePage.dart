import 'package:flutter/material.dart';
import 'package:ig_clone/pages/MassagePage.dart';
import 'package:ig_clone/pages/NotificationPage.dart';
import 'package:ig_clone/widgets/ApplicationWidget.dart';
import 'package:ig_clone/widgets/PostSection.dart';
import 'package:ig_clone/widgets/StoriesSection.dart';
import 'package:ig_clone/widgets/SuggestSection.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  void _navigateToMessages(BuildContext context) {
    Navigator.push(
      context,
      PageRouteBuilder(
        transitionDuration: const Duration(milliseconds: 500),
        pageBuilder: (context, animation, secondaryAnimation) => const Massagepage(),
        transitionsBuilder: (context, animation, secondaryAnimation, child) {
          const begin = Offset(1.0, 0.0);
          const end = Offset.zero;
          const curve = Curves.ease;
          final tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
          final offsetAnimation = animation.drive(tween);
          return SlideTransition(
            position: offsetAnimation,
            child: child,
          );
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onHorizontalDragEnd: (details) {
        if (details.primaryVelocity != null && details.primaryVelocity! < -100) {
          _navigateToMessages(context);
        }
      },
      child: Scaffold(
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
                  MaterialPageRoute(builder: (context) => const Notificationpages()),
                );
              },
              icon: const Icon(Icons.favorite_border),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 5.0),
              child: IconButton(
                onPressed: () => _navigateToMessages(context),
                icon: const Icon(Icons.chat),
              ),
            ),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(AppWidget.spaceBtwItemsSm),
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
      ),
    );
  }
}
