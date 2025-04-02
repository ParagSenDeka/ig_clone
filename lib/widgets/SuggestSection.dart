import 'package:flutter/material.dart';

import 'ApplicationWidget.dart';

class Suggestsection extends StatelessWidget {
  const Suggestsection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
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
                  style: AppWidget.MediamMdTextStyle(color: Colors.black),
                ),
                Text('See all', style: AppWidget.SmallXTextStyle()),
              ],
            ),
          ),
          SizedBox(height: AppWidget.spaceBtwItems + 2),
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
                          border: Border.all(color: Colors.black, width: 1),
                          borderRadius: BorderRadius.circular(17),
                        ),
                        child: Center(
                          child: Padding(
                            padding: const EdgeInsets.only(
                                top: 25, bottom: 10, right: 10, left: 10),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const CircleAvatar(
                                  radius: 20,
                                  backgroundImage: AssetImage(
                                    'assets/user.png',
                                  ),
                                ),
                                const SizedBox(
                                    height: AppWidget.spaceBtwItemsSm - 1),
                                Text('User Name',
                                    style: AppWidget.MediamMdTextStyle(
                                        color: Colors.black)),
                                SizedBox(height: AppWidget.spaceBtwItemsSm - 1),
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
                                        style: AppWidget.MediamMdTextStyle(
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
    );
  }
}
