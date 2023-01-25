import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:loginandregister/constant/constant.dart';
import 'package:loginandregister/constant/secondaryLogin.dart';
import 'package:loginandregister/view/login.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.only(top: 50, left: 20, right: 20),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Create Account',
                  style: textTheme.headline2,
                ),
                SizedBox(
                  height: 5.h,
                ),
                Text(
                  'Connect with your Friends Today!',
                  style: TextStyle(
                      color: Colors.grey, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 15.h,
                ),
                Text(
                  'Email Address',
                  style: textTheme.headline4,
                ),
                SizedBox(
                  height: 5.h,
                ),
                textformFieldReusalbe('Enter your email'),
                SizedBox(
                  height: 15.h,
                ),
                Text(
                  'Password',
                  style: textTheme.headline4,
                ),
                SizedBox(
                  height: 5.h,
                ),
                textformFieldReusalbe('Enter your password'),
                SizedBox(
                  height: 15.h,
                ),
                Text(
                  'Confirm Password',
                  style: textTheme.headline4,
                ),
                SizedBox(
                  height: 5.h,
                ),
                textformFieldReusalbe(
                  'Enter your password Again',
                ),
                SizedBox(
                  height: 15.h,
                ),
                Container(
                  height: 45.h,
                  width: double.infinity,
                  child: ElevatedButton(
                      style: btnStyle(Colors.white, backGroundColor),
                      onPressed: () {},
                      child: Text('Sign Up')),
                ),
                SizedBox(
                  height: 25.h,
                ),
                Row(
                  children: [
                    Expanded(
                        child: Divider(
                      color: Colors.grey,
                    )),
                    SizedBox(
                      width: 5.w,
                    ),
                    Center(
                      child: Text(
                        'Or Login with',
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                    SizedBox(
                      width: 5.w,
                    ),
                    Expanded(
                      child: Divider(
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 15.h,
                ),
                SecondaryLogin(),
                SizedBox(
                  height: 55.h,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 25),
                  child: Row(
                    children: [
                      Center(
                          child: Text(
                        'Already have an account?',
                        style: TextStyle(color: Colors.grey),
                      )),
                      SizedBox(
                        width: 6.w,
                      ),
                      Center(
                        child: TextButton(
                            onPressed: () {
                              Get.to(() => LoginPage(),
                                  transition: Transition.rightToLeft);
                            },
                            child: Text(
                              'Log In',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20),
                            )),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Column textformFieldReusalbe(String hinttext, {bool isObscure = false}) {
    return Column(
      children: [
        Container(
          height: 45.h,
          width: double.infinity,
          child: TextFormField(
            obscureText: isObscure,
            cursorColor: Colors.orange,
            decoration: InputDecoration(
              focusColor: Colors.orange,
              hintStyle: TextStyle(color: Colors.grey),
              hintText: hinttext,
              border: InputBorder.none,
              enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey),
                  borderRadius: BorderRadius.circular(10)),
              focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey),
                  borderRadius: BorderRadius.circular(10)),
              contentPadding: EdgeInsets.all(26),
            ),
          ),
        ),
      ],
    );
  }
}
