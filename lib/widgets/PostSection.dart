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
                    onPressed: () {
                      BottomSheet(context);
                    },
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
                color: Colors.grey, borderRadius: BorderRadius.circular(20)),
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
                IconButton(
                    onPressed: () {}, icon: const Icon(Icons.chat_outlined)),
                IconButton(
                    onPressed: () {}, icon: const Icon(Icons.send_rounded)),
              ],
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.bookmark,
                      size: 29,
                    ),
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
                height: 5,
              ),
              Text("User's caption........... more ",
                  style: AppWidget.SmallXTextStyle()),
              SizedBox(
                height: 4,
              ),
              Text('Time 00 day ago .....', style: AppWidget.SmallXTextStyle()),
            ],
          ),
        ),
      ],
    );
  }

  Future<dynamic> BottomSheet(BuildContext context) {
    return showModalBottomSheet(
        context: context,
        builder: (BuildContext context) {
          return Padding(
            padding: const EdgeInsets.all(AppWidget.spaceBtwItems),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Center(
                      child: Divider(
                    height: 3,
                    thickness: 3,
                    endIndent: 160,
                    indent: 160,
                    color: Colors.grey,
                  )),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(AppWidget.defaultSpace),
                        child: Container(
                          decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.black,
                                width: 0.9,
                              ),
                              borderRadius: BorderRadius.circular(30)),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.bookmark_border)),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(AppWidget.defaultSpace),
                        child: Container(
                          decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.black,
                                width: 0.9,
                              ),
                              borderRadius: BorderRadius.circular(30)),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: IconButton(
                                onPressed: () {}, icon: Icon(Icons.reorder)),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(AppWidget.defaultSpace),
                        child: Container(
                          decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.black,
                                width: 0.9,
                              ),
                              borderRadius: BorderRadius.circular(30)),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: IconButton(
                                onPressed: () {}, icon: Icon(Icons.scanner)),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: AppWidget.spaceBtwItemsSm,
                  ),
                  Divider(),
                  Wrap(children: [
                    ListTile(
                      leading: IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.star_border_rounded)),
                      title: Text('Add to favorite'),
                    ),
                    ListTile(
                      leading: IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.person_remove_outlined)),
                      title: Text('Unfollow'),
                    ),
                    ListTile(
                      leading: IconButton(
                          onPressed: () {}, icon: Icon(Icons.content_cut)),
                      title: Text('Create a cutout sticker'),
                    ),
                    ListTile(
                      leading: IconButton(
                          onPressed: () {}, icon: Icon(Icons.info_outline)),
                      title: Text("Why you're seeing this post"),
                    ),
                    ListTile(
                      leading: IconButton(
                          onPressed: () {}, icon: Icon(Icons.hide_source)),
                      title: Text('Hide'),
                    ),
                    ListTile(
                      leading: IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.account_circle_outlined)),
                      title: Text('About this account'),
                    ),
                    ListTile(
                      leading: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.report_gmailerrorred,
                            color: Colors.red,
                          )),
                      title: Text('Report',style: TextStyle(color: Colors.red),),
                    ),
                  ])
                ],
              ),
            ),
          );
        });
  }
}
