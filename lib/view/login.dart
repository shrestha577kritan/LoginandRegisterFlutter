import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:loginandregister/constant/constant.dart';
import 'package:loginandregister/constant/secondaryLogin.dart';
import 'package:loginandregister/view/register.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: loginBackGroundColor,
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(top: 50, left: 20, right: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Hello! Welcome back!👋', style: textTheme.headline2),
                Text(
                  'Hello again, You’ve been missed!',
                  style: textTheme.headline3,
                ),
                SizedBox(
                  height: 20.h,
                ),
                Text(
                  'Email Address',
                  style: textTheme.headline4,
                ),
                SizedBox(
                  height: 15.h,
                ),
                textformFieldReusalbe('rodgency@gmali.com'),
                SizedBox(
                  height: 20.h,
                ),
                Text(
                  ' Password',
                  style: textTheme.headline4,
                ),
                SizedBox(
                  height: 15.h,
                ),
                textformFieldReusalbe('............', isObscure: true),
                SizedBox(
                  height: 15.h,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      InkWell(
                        onTap: () {},
                        child: Text(
                          'Forget Password',
                          style: TextStyle(
                              color: Colors.red, fontWeight: FontWeight.w600),
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  height: 45.h,
                  width: double.infinity,
                  child: ElevatedButton(
                      style: btnStyle(Colors.white, Color(0XFF188F79)),
                      onPressed: () {},
                      child: Text('Login')),
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
                    )),
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
                        'Don’t have an account?',
                        style: TextStyle(color: Colors.grey),
                      )),
                      SizedBox(
                        width: 6.w,
                      ),
                      Center(
                        child: TextButton(
                            onPressed: () {
                              Get.to(() => RegisterPage(),
                                  transition: Transition.leftToRight);
                            },
                            child: Text(
                              'Sign UP',
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
            decoration: InputDecoration(
              hintText: hinttext,
              border: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.orange),
                borderRadius: BorderRadius.circular(5),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
