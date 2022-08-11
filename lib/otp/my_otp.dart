import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../widgets/custom_text.dart';
import '../widgets/custombutton.dart';
import 'custom_textField_for_otp.dart';

class MyOtp extends StatefulWidget {
  const MyOtp({Key? key}) : super(key: key);

  @override
  State<MyOtp> createState() => _MyOtpState();
}

class _MyOtpState extends State<MyOtp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFFFFFF),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                Container(
                  margin: const EdgeInsets.only(top: 200, bottom: 10),
                  child:  CustomText(
                    text: 'OTP Verification',
                    color: Colors.black26,
                    size: 18.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                CustomText(
                  text: 'We have sent OTP verification to your phone',
                  color: Colors.grey[200],
                  size: 12.sp,
                ),
                Padding(
                  padding: const EdgeInsets.all(40.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children:  [
                      ResuableTextFieldOtp(
                        height: 52.h,
                        width: 57.w,
                        color: Colors.grey[400],
                        hintText: '0',
                      ),
                      ResuableTextFieldOtp(
                        height: 52.h,
                        width: 57.w,
                        color: Colors.grey[400],
                        hintText: '0',
                      ),
                      ResuableTextFieldOtp(
                        height: 52.h,
                        width: 57.w,
                        color: Colors.grey[400],
                        hintText: '0',
                      ), ResuableTextFieldOtp(
                        height: 52.h,
                        width: 57.w,
                        color:Colors.grey[400],
                        hintText: '0',
                      ),
                    ],
                  ),
                ),
                GestureDetector(
                  onTap: (){
                  },
                  child: RichText(
                    text:  TextSpan(
                      text: 'Did not receive OTP? ',
                      style: TextStyle(fontSize: 16.sp, color: Colors.black26),
                      children: const <TextSpan>[
                        TextSpan(
                            text: 'Resend OTP',
                            style: TextStyle(
                                decoration: TextDecoration.underline,
                                color: Colors.grey)),
                      ],
                    ),
                  ),
                ),

                CustomButton(
                  height: 40.h,
                  width: double.infinity,
                  text: 'Submit',
                  vertical: 40.h,
                  horizontal: 20.w,
                  nextPage: () {
                  }, size: 15.sp,)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
