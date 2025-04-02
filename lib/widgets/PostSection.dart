import 'package:flutter/material.dart';

import 'ApplicationWidget.dart';

class Postsection extends StatelessWidget {
  const Postsection({super.key});

  @override
  Widget build(BuildContext context) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  const CircleAvatar(
                    child: Icon(Icons.person),
                  ),
                  const SizedBox(width: AppWidget.spaceBtwItems),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'User Name and ABED',
                        style: AppWidget.SmallXMDTextStyle(),
                      ),
                      Text(
                        "User's Location",
                        style: AppWidget.SmallXTextStyle(),
                      )
                    ],
                  ),
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.more_vert)),
                ],
              )
            ],
          ),
          const SizedBox(height: AppWidget.spaceBtwItems - 2),
          Stack(children: [
            Container(
              height: 450,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(20)),
              child: Image(
                  image: AssetImage(
                    'assets/Post.png',
                  )),
            ),
            Positioned(
                left: 8,
                bottom: 8,
                child: CircleAvatar(
                    radius: 17,
                    backgroundColor: Colors.white54,
                    child: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.person,
                          size: 20,
                        )))),
            Positioned(
                right: 8,
                bottom: 8,
                child: CircleAvatar(
                    radius: 16,
                    backgroundColor: Colors.white54,
                    child: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.volume_up_rounded,
                          size: 20,
                        )))),
          ]),
          const SizedBox(height: AppWidget.spaceBtwItemsSm - 1),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.favorite_border_outlined)),
                  SizedBox(
                    width: 32,
                    height: 32,
                    child: Image.asset('assets/Images/chat.png'),
                  ),
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.send_rounded)),
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: SizedBox(
                      width: 30,
                      height: 30,
                      child: Image.asset('assets/Images/bookmark.png'),
                    ),
                  ),
                ],
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Like by ABCD and XYZ and others',
                  style: AppWidget.SmallXMDTextStyle(),
                ),
                SizedBox(
                  height: 4,
                ),
                Text("User's caption........... more ",
                    style: AppWidget.SmallXTextStyle()),
                SizedBox(
                  height: 3,
                ),
                Text('Time 00 day ago .....',
                    style: AppWidget.SmallXTextStyle()),
              ],
            ),
          ),
        ],
      );
    }
  }

