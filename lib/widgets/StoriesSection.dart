import 'package:flutter/material.dart';

class Storiessection extends StatelessWidget {
  const Storiessection({super.key});

  @override
  Widget build(BuildContext context) {
      return SizedBox(
        height: 100,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          reverse: true,
          itemCount: 10,
          itemBuilder: (context, index) {
            bool isUserStory = index == 9;
            return Padding(
              padding: const EdgeInsets.all(4.0),
              child: Column(
                children: [
                  Stack(
                    alignment: Alignment.bottomRight,
                    children: [
                      Container(
                        width: 70,
                        height: 70,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          gradient: isUserStory
                              ? null
                              : const LinearGradient(
                            colors: [
                              Color(0xFFfeda75),
                              Color(0xFFfa7e1e),
                              Color(0xFFd62976),
                              Color(0xFF962fbf),
                              Color(0xFF4f5bd5),
                            ],
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(2.0),
                          child: Container(
                            decoration: const BoxDecoration(
                              color: Colors.white,
                              shape: BoxShape.circle,
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(1.8),
                              child: CircleAvatar(
                                radius: 30,
                                backgroundImage: AssetImage(
                                  isUserStory
                                      ? "assets/your_profile.png"
                                      : "assets/user.png",
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      if (isUserStory)
                        Positioned(
                          bottom: 3,
                          right: 4,
                          child: Container(
                            width: 20,
                            height: 20,
                            decoration: const BoxDecoration(
                              color: Colors.blue,
                              shape: BoxShape.circle,
                            ),
                            child: const Icon(
                              Icons.add,
                              color: Colors.white,
                              size: 16,
                            ),
                          ),
                        ),
                    ],
                  ),
                  const SizedBox(height: 4),
                  const Text(
                    "User Name",
                    style: TextStyle(
                        fontSize: 12, fontWeight: FontWeight.w500),
                  ),
                ],
              ),
            );
          },
        ),
      );
    }
  }
