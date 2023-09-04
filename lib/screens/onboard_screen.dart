import 'package:entry_task/res/app_colors.dart';
import 'package:entry_task/screens/home_screen.dart';
import 'package:entry_task/screens/widgets/black_button.dart';
import 'package:entry_task/screens/widgets/dot.dart';
import 'package:flutter/material.dart';

class OnboardScreen extends StatelessWidget {
  static const String id = 'onboard_screen';
  const OnboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.colorWhite,
      body: SafeArea(
          child: Column(
        children: [
          Expanded(
              flex: 3,
              child: Stack(
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height * 0.45,
                    decoration: const BoxDecoration(
                        color: AppColors.colorBlack,
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(160),
                          bottomRight: Radius.circular(160),
                        )),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 80, left: 30, right: 30),
                    child: Image(
                      image: AssetImage('assets/1.png'),
                    ),
                  )
                ],
              )),
          Expanded(
              flex: 2,
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: AppColors.colorLightGrey,
                      borderRadius: BorderRadius.circular(16)),
                  child: Column(
                    children: [
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.015,
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(vertical: 8.0),
                        child: Text(
                          'Discover Amazing Place',
                          style: TextStyle(
                              color: AppColors.colorBlack,
                              fontWeight: FontWeight.w600,
                              fontSize: 28),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 40.0),
                        child: Text(
                          'Plan your trip, Choose your destination. Pick the best local guide for your holiday',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.grey.shade500,
                              fontWeight: FontWeight.w400,
                              height: 1.5,
                              fontSize: 18),
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.015,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const PageDot(dotColor: AppColors.colorYellow),
                          PageDot(dotColor: Colors.grey.shade400),
                          PageDot(dotColor: Colors.grey.shade400),
                        ],
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.02,
                      ),
                      BlackButton(
                          name: 'Get Started',
                          onTap: () {
                            Navigator.pushReplacementNamed(
                                context, HomeScreen.id);
                          }),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.015,
                      ),
                      Text(
                        'Skip for now',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.grey.shade500,
                            fontWeight: FontWeight.w400,
                            fontSize: 16),
                      ),
                    ],
                  ),
                ),
              ))
        ],
      )),
    );
  }
}
