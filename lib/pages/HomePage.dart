import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ig_clone/pages/Navbar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Instagram",
          style: GoogleFonts.lato(),
        ),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.favorite_border)),
          IconButton(
              onPressed: () {}, icon: const Icon(Icons.chat_bubble_outline)),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 100, // Increased height for better spacing
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  reverse: true, // Enables right-to-left scrolling
                  itemCount: 10, // Number of story items
                  itemBuilder: (context, index) {
                    bool isUserStory =
                        index == 9; // Last item is the user's story
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
              const SizedBox(height: 10),
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
                          const SizedBox(width: 16),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'User Name and ABED',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 15),
                              ),
                              Text(
                                "User's Location",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 12),
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
                  const SizedBox(height: 10),
                  Stack(children: [
                    Container(
                      height: 450,
                      width: double.infinity,
                      decoration: BoxDecoration(color: Colors.grey,borderRadius: BorderRadius.circular(20)),
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
                                onPressed: () {}, icon: Icon(Icons.person,size: 20,)))),
                    Positioned(
                        right: 8,
                        bottom: 8,
                        child: CircleAvatar(
                            radius: 16,
                            backgroundColor: Colors.white54,
                            child: IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.volume_up_rounded,size: 20,)))),]
                  ),
                  const SizedBox(height: 5),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.favorite_border_outlined)),
                          IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                  Icons.chat_bubble_outline_rounded)),
                          IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.send_rounded)),
                        ],
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          IconButton(
                              onPressed: () {}, icon: const Icon(Icons.save)),
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
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.w600),
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Text(
                          "User's caption..... more ",
                          style: TextStyle(
                              fontSize: 12, fontWeight: FontWeight.w500),
                        ),
                        SizedBox(
                          height: 3,
                        ),
                        Text(
                          'Time 00 day ago ..',
                          style: TextStyle(
                              fontSize: 10, fontWeight: FontWeight.w400),
                        ),
                      ],
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 12),
                        Padding(
                          padding: EdgeInsets.only(right: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Suggested for you",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold)),
                              Text('See all',
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold)),
                            ],
                          ),
                        ),
                        SizedBox(height: 12),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 170,
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
                                height: 160,
                                width: 130,
                                decoration: BoxDecoration(
                                  color: Colors.grey[300],
                                  border: Border.all(
                                      color: Colors.black, width: 1.2),
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Center(
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        top: 25,
                                        bottom: 20,
                                        right: 10,
                                        left: 10),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        const CircleAvatar(
                                          radius: 25,
                                          backgroundImage:
                                              AssetImage('assets/user.png'),
                                        ),
                                        const SizedBox(height: 5),
                                        const Text('User Name',
                                            style: TextStyle(
                                                fontSize: 15,
                                                fontWeight: FontWeight.bold)),
                                        const SizedBox(height: 5),
                                        const Text('Followed by ABCD,\n XYZA',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(fontSize: 10)),
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
      bottomNavigationBar: const Navbar(),
    );
  }
}
