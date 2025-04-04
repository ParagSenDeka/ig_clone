import 'package:flutter/material.dart';
import 'package:ig_clone/widgets/ApplicationWidget.dart';

class Profilepage extends StatefulWidget {
  const Profilepage({super.key});

  @override
  State<Profilepage> createState() => _ProfilepageState();
}

class _ProfilepageState extends State<Profilepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'User__Name',
          style: AppWidget.AppBarTextStyle(),
        ),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.ac_unit_sharp)),
          IconButton(onPressed: () {}, icon: Icon(Icons.add_box_outlined)),
          IconButton(onPressed: () {}, icon: Icon(Icons.reorder)),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(AppWidget.spaceBtwItems),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Stack(
                        children: [
                          CircleAvatar(
                            radius: 41,
                            child: Image(image: AssetImage('assets/user.png')),
                          ),
                          Positioned(
                              right: 3,
                              bottom: 3,
                              child: Icon(
                                Icons.add_circle_rounded,
                                color: Colors.blue,
                              )),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'User Real Name',
                            style: AppWidget.MediamMdTextStyle(
                                color: Colors.black),
                          ),
                          SizedBox(
                            height: AppWidget.spaceBtwItemsMd,
                          ),
                          Row(
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    '00',
                                    style: TextStyle(fontSize: 15),
                                  ),
                                  SizedBox(
                                    height: AppWidget.spaceBtwItemsSm - 2,
                                  ),
                                  Text(
                                    'posts',
                                    style: AppWidget.SmallXMDTextStyle(),
                                  ),
                                ],
                              ),
                              SizedBox(
                                width: AppWidget.spaceBtwItemsMd,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    '000',
                                    style: TextStyle(fontSize: 15),
                                  ),
                                  SizedBox(
                                    height: AppWidget.spaceBtwItemsSm - 2,
                                  ),
                                  Text(
                                    'followers',
                                    style: AppWidget.SmallXMDTextStyle(),
                                  ),
                                ],
                              ),
                              SizedBox(
                                width: AppWidget.spaceBtwItemsMd,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    '000',
                                    style: TextStyle(fontSize: 15),
                                  ),
                                  SizedBox(
                                    height: AppWidget.spaceBtwItemsSm - 2,
                                  ),
                                  Text(
                                    'following',
                                    style: AppWidget.SmallXMDTextStyle(),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),

              /// Bio Section
              SizedBox(
                height: AppWidget.defaultSpace,
              ),
              Padding(
                padding: const EdgeInsets.only(left: AppWidget.spaceBtwItemsMd),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "User's Bio",
                      style: TextStyle(fontSize: 13, fontFamily: 'Delius'),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: AppWidget.defaultSpace,
              ),

              /// Button for follow & Edit Profile
              Padding(
                  padding: const EdgeInsets.all(AppWidget.spaceBtwItemsSm),
                  child: Row(
                    children: [
                      Expanded(
                        flex: 43, // 45%
                        child: OutlinedButton(
                          onPressed: () {},
                          style: OutlinedButton.styleFrom(
                            side: BorderSide(color: Colors.blue),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                          child: Text('Edit profile'),
                        ),
                      ),
                      SizedBox(width: AppWidget.spaceBtwItemsSm),
                      Expanded(
                        flex: 43, // 45%
                        child: OutlinedButton(
                          onPressed: () {},
                          style: OutlinedButton.styleFrom(
                            side: BorderSide(color: Colors.green),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                          child: Text(' Share profile'),
                        ),
                      ),
                      SizedBox(width: AppWidget.spaceBtwItemsSm),
                      Expanded(
                        flex: 14, // 10%
                        child: OutlinedButton(
                          onPressed: () {},
                          style: OutlinedButton.styleFrom(
                            side: BorderSide(color: Colors.red),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                          child: Center(child: Icon(Icons.person_add_alt)),
                        ),
                      ),
                    ],
                  )),

              ///Highlight Section
              SizedBox(
                height: AppWidget.spaceBtwItemsSm - 5,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 378,
                    height: 120,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 10,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8.0),
                          child: Padding(
                            padding: const EdgeInsets.all(
                                AppWidget.spaceBtwItemsSm + 2),
                            child: Container(
                              width: 70,
                              height: 70,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border:
                                    Border.all(color: Colors.grey, width: 1.2),
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),

              ///Posts Sections
              //DefaultTabController(
              //    length: 3,
              //    child: Scaffold(
              //      appBar: AppBar(
              //        bottom: TabBar(tabs: [
              //          Tab(
              //            icon: Icon(Icons.grid_on),
              //          ),
              //          Tab(
              //            icon: Icon(Icons.grid_on),
              //          ),
              //          Tab(
              //            icon: Icon(Icons.grid_on),
              //          )
              //        ]),
              //      ),
              //      body: TabBarView(children: [],),
              //    ))
            ],//
          ),
        ),
      ),
    );
  }
}
