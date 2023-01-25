import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:loginandregister/constant/constant.dart';
import 'package:get/get.dart';
import 'package:loginandregister/view/login.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backGroundColor,
      body: SafeArea(
        child: Padding(
          padding: kPaddingMargin,
          child: Container(
            width: double.infinity,
            height: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(child: Image.asset('assets/welcome.png')),
                SizedBox(
                  height: 20.h,
                ),
                Text(
                  'Let’s Get\nStarted',
                  style: textTheme.headline1,
                ),
                SizedBox(
                  height: 10.h,
                ),
                Text(
                  'Connect with each other while chatting or\ncalling. Enjoy safe and private texting',
                  style: textTheme.subtitle1,
                ),
                SizedBox(
                  height: 15.h,
                ),
                Container(
                  decoration: BoxDecoration(),
                  height: 40.h,
                  width: double.infinity,
                  child: ElevatedButton(
                    style: btnStyle(Color(0xff188F79), Colors.white),
                    onPressed: () {
                      Get.to(() => LoginPage(),
                          transition: Transition.leftToRight);
                    },
                    child: Text('Join Now'),
                  ),
                ),
                SizedBox(
                  height: 40.h,
                ),
                InkWell(
                  onTap: () {
                    Get.to(() => LoginPage(),
                        transition: Transition.leftToRight);
                  },
                  child: Center(
                    child: InkWell(
                      onTap: () {
                        Get.to(() => LoginPage(),
                            transition: Transition.leftToRight);
                      },
                      child: Text(
                        'Alrady have an account?',
                        style: textTheme.subtitle1,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
