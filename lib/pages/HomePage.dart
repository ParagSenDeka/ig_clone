import 'package:flutter/material.dart';
import 'package:ig_clone/pages/MassagePage.dart';
import 'package:ig_clone/widgets/Navbar.dart';
import 'package:ig_clone/pages/NotificationPage.dart';
import 'package:ig_clone/widgets/ApplicationWidget.dart';

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
            padding: const EdgeInsets.only(right: 10, left: 7),
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const Massagepage()));
              },
              child: SizedBox(
                width: 30,
                height: 30,
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
              SizedBox(
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
              ),
              const SizedBox(height: AppWidget.spaceBtwItemsMd - 2),
              Column(
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
                  Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: AppWidget.spaceBtwItems),
                        Padding(
                          padding: EdgeInsets.only(right: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Suggested for you',
                                style: AppWidget.MediamMdTextStyle(
                                    color: Colors.black),
                              ),
                              Text('See all',
                                  style: AppWidget.SmallXTextStyle()),
                            ],
                          ),
                        ),
                        SizedBox(height: 12),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 220,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      reverse: true,
                      itemCount: 10,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.all(4),
                          child: Stack(
                            children: [
                              Container(
                                height: 200,
                                width: 150,
                                decoration: BoxDecoration(
                                  color: Colors.grey[300],
                                  border:
                                      Border.all(color: Colors.black, width: 1),
                                  borderRadius: BorderRadius.circular(17),
                                ),
                                child: Center(
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        top: 25,
                                        bottom: 10,
                                        right: 10,
                                        left: 10),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        const CircleAvatar(
                                          radius: 20,
                                          backgroundImage: AssetImage(
                                            'assets/user.png',
                                          ),
                                        ),
                                        const SizedBox(
                                            height:
                                                AppWidget.spaceBtwItemsSm - 1),
                                        Text('User Name',
                                            style: AppWidget.MediamMdTextStyle(
                                                color: Colors.black)),
                                        SizedBox(
                                            height:
                                                AppWidget.spaceBtwItemsSm - 1),
                                        Text('Followed by ABED,\n XYZ',
                                            textAlign: TextAlign.center,
                                            style: AppWidget.SmallXTextStyle()),
                                        SizedBox(
                                          height: AppWidget.spaceBtwItemsSm - 2,
                                        ),
                                        ElevatedButton(
                                            style: ElevatedButton.styleFrom(
                                              elevation: 4,
                                              backgroundColor: Colors.blue,
                                            ),
                                            onPressed: () {},
                                            child: Padding(
                                              padding: const EdgeInsets.only(
                                                  right: 15, left: 15),
                                              child: Text(
                                                'Follow',
                                                style:
                                                    AppWidget.MediamMdTextStyle(
                                                  color: Colors.white,
                                                ),
                                              ),
                                            ))
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                top: 5,
                                right: 5,
                                child: IconButton(
                                  onPressed: () {},
                                  icon: const Icon(Icons.close,
                                      size: 18, color: Colors.black),
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
