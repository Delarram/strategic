import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class ResuableTextFieldOtp extends StatelessWidget {
  final double height;
  final double width;
  final Color? color;
  final String? hintText;

  const ResuableTextFieldOtp(
      {Key? key,
        required this.height,
        required this.width,
        this.color,
        this.hintText})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.all(Radius.circular(15.r))
      ),
      child: TextFormField(
        onChanged: (value){
          if(value.length==1){
            FocusScope.of(context).nextFocus();
          }
        },
        cursorColor: Colors.black26,
        keyboardType: TextInputType.number,
        textAlign: TextAlign.center,
        inputFormatters: [
          LengthLimitingTextInputFormatter(1),
          FilteringTextInputFormatter.digitsOnly
        ],
        decoration: InputDecoration(
          border: InputBorder.none,
          fillColor: Color(0xffFFFFFF),
          labelStyle: const TextStyle(color: Color(0xff080C1A)),
          hintText: hintText,
          contentPadding: EdgeInsets.all(20.r),
          hintStyle: const TextStyle(color: Color(0xffBDBDBD)),
        ),
      ),
    );

  }
}
