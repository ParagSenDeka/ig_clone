import 'package:flutter/material.dart';
import 'package:ig_clone/pages/ProfilePage.dart';
import 'package:ig_clone/pages/SearchPage.dart';
import 'package:ig_clone/widgets/ApplicationWidget.dart';

class Massagepage extends StatefulWidget {
  const Massagepage({super.key});

  @override
  State<Massagepage> createState() => _MassagepageState();
}

class _MassagepageState extends State<Massagepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('User Name'),
        actions: const [
          IconButton(onPressed: null, icon: Icon(Icons.edit_note)),
          IconButton(onPressed: null, icon: Icon(Icons.reorder)),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(AppWidget.spaceBtwItemsMd),
        child: Column(
          children: [
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Searchpage(),
                    ));
              },
              child: Container(
                height: 40,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.circular(15),
                ),
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  children: [
                    const Icon(Icons.search),
                    const SizedBox(width: 10),
                    Text(
                      'Search....',
                      style: AppWidget.SmallXMDTextStyle(),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20),
            SizedBox(
              height: 130,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 14,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(AppWidget.spaceBtwItemsSm),
                    child: Column(
                      children: [
                        Stack(
                          alignment: Alignment.topCenter,
                          children: [
                            Container(
                              height: 70,
                              width: 70,
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                              ),
                              child: const CircleAvatar(
                                radius: 35,
                                backgroundImage: AssetImage('assets/user.png'),
                              ),
                            ),
                            Positioned(
                              top: 0,
                              child: Container(
                                height: 20,
                                width: 40,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  color: Colors.grey[500],
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: AppWidget.spaceBtwItemsSm),
                        Text(
                          'User Name',
                          style: AppWidget.SmallXTextStyle(),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
            const SizedBox(height: AppWidget.defaultSpace - 3),
            Padding(
              padding: const EdgeInsets.symmetric(
                  horizontal: AppWidget.spaceBtwItems),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Messages',
                    style: AppWidget.MediamTextStyle(color: Colors.black),
                  ),
                  Text(
                    'Requests',
                    style: AppWidget.MediamTextStyle(color: Colors.blue),
                  ),
                ],
              ),
            ),
            const SizedBox(height: AppWidget.spaceBtwItems - 5),
            Expanded(
              child: ListView.separated(
                itemCount: 8,
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Profilepage(),
                            ));
                      },
                      child: const CircleAvatar(
                        radius: 30,
                        backgroundImage: AssetImage('assets/user.png'),
                      ),
                    ),
                    title: Text(
                      'User Name....',
                      style: AppWidget.SmallXMDTextStyle(),
                    ),
                    subtitle: Text(
                      '5+ New Messages. 1h',
                      style: AppWidget.SmallXTextStyle(),
                    ),
                    trailing: IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.camera_alt_outlined),
                    ),
                  );
                },
                separatorBuilder: (context, index) => const SizedBox(
                  height: AppWidget.spaceBtwItemsSm,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
