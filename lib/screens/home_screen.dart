import 'package:entry_task/res/app_colors.dart';
import 'package:entry_task/screens/widgets/dot.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  static const String id = 'hoome_screen';
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size(size.width, size.height * 0.1),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'Hanoi, Vietnam',
                      style:
                          TextStyle(color: AppColors.colorBlack, fontSize: 24),
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.cloud_outlined,
                          color: Colors.grey.shade500,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: Text(
                            '17 \u2103',
                            style: TextStyle(
                                color: Colors.grey.shade500, fontSize: 18),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(right: 12.0, bottom: 8.0),
                child: Icon(
                  Icons.search,
                  color: Colors.black,
                  size: 25,
                ),
              ),
            ],
          ),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
                width: size.width,
                height: size.height * 0.12,
                // color: Colors.red,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 10,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 6.0),
                        child: CircleAvatar(
                          radius: size.height * 0.053,
                          backgroundColor: AppColors.colorYellow,
                          child: CircleAvatar(
                            radius: size.height * 0.05,
                            backgroundColor: AppColors.colorWhite,
                            child: CircleAvatar(
                              radius: size.height * 0.047,
                              backgroundImage: AssetImage('assets/sample1.JPG'),
                            ),
                          ),
                        ),
                      );
                    })),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 14.0),
              child: Divider(),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 15.0),
              child: Text(
                'Experiences in spotlight',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                    fontSize: 20),
              ),
            ),
            Container(
              width: size.width,
              height: size.height * 0.35,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 4,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: Container(
                        width: size.width * 0.7,
                        height: size.height * 0.35,
                        // color: Colors.red,
                        child: Column(
                          children: [
                            Stack(
                              children: [
                                Container(
                                  width: size.width * 0.7,
                                  height: size.height * 0.25,
                                  decoration: BoxDecoration(
                                      // color: Colors.green,
                                      image: const DecorationImage(
                                          image:
                                              AssetImage('assets/sample2.jpg'),
                                          fit: BoxFit.cover),
                                      borderRadius:
                                          BorderRadius.circular(12.0)),
                                ),
                                const Positioned(
                                    right: 5,
                                    top: 5,
                                    child: Icon(
                                      Icons.favorite_outline,
                                      color: Colors.grey,
                                    ))
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 5.0, horizontal: 4.0),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    'Coffee',
                                    style: TextStyle(
                                        color: Colors.grey.shade500,
                                        fontSize: 14),
                                  ),
                                  PageDot(dotColor: Colors.grey.shade500),
                                  Text(
                                    'Cultural tea',
                                    style: TextStyle(
                                        color: Colors.grey.shade500,
                                        fontSize: 13),
                                  ),
                                ],
                              ),
                            ),
                            Row(
                              children: [
                                const Expanded(
                                    flex: 4,
                                    child: Text(
                                      'Unique Egg Coffee class with Local',
                                      style: TextStyle(
                                          color: AppColors.colorBlack,
                                          fontSize: 20),
                                    )),
                                Expanded(
                                    child: Container(
                                  decoration: BoxDecoration(
                                      color: Colors.green,
                                      borderRadius: BorderRadius.circular(6.0)),
                                  child: const Padding(
                                    padding:
                                        EdgeInsets.symmetric(vertical: 4.0),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Text(
                                          '4.5',
                                          style: TextStyle(
                                              color: AppColors.colorWhite,
                                              fontSize: 18),
                                        ),
                                        Icon(
                                          Icons.star_rounded,
                                          color: AppColors.colorWhite,
                                          size: 18,
                                        ),
                                      ],
                                    ),
                                  ),
                                ))
                              ],
                            )
                          ],
                        ),
                      ),
                    );
                  }),
            )
          ],
        ),
      ),
    );
  }
}
