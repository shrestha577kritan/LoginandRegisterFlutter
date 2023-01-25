import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SecondaryLogin extends StatelessWidget {
  const SecondaryLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
      Expanded(
        child: Container(
          height: 40.h,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey.shade600),
            borderRadius: BorderRadius.circular(15),
          ),
          child: Row(
           
            children: [
              Center(child: Image.asset('assets/Facebook.png')),
              Container(
                child: Text(
                  'Facebook',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
        ),
      ),
      SizedBox(width: 10.w,),
      Expanded(
        child: Container(
          height: 40.h,
         
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey.shade600),
            borderRadius: BorderRadius.circular(15),
          ),
          child: Row(
            children: [
              Center(child: Image.asset('assets/Google.png')),
              Center(
                child: Text(
                  'Google',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
        ),
      )
    ]);
  }
}
