import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ResuableTextField extends StatelessWidget {
  final double? height;
  final double width;
  final Color? color;
  final Icon? prefixIcon;
  final String? hintText;
  final String? hintStyle;
  final double top;
  final double right;
  final double left;
  final double bottom;
  final bool? obsureText;
  final double? size;
  final Color? colorone;
  final AssetImage? imageIcon;
  final AssetImage? imageIconOne;
  final String? labelText;
  final Color? suffixIconColor;
  final Function? onChange;
  const ResuableTextField({
    Key? key,
    this.imageIcon,
    this.height,
    required this.width,
    this.prefixIcon,
    this.color,
    this.hintText,
    this.hintStyle,
    required this.top,
    required this.right,
    required this.left,
    required this.bottom,
    this.obsureText,
    this.size,
    this.colorone,
    this.imageIconOne,
    this.labelText, this.suffixIconColor, this.onChange,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin:
      EdgeInsets.only(right: right, left: left, bottom: bottom, top: top),
      width: width,
      height: height,
      color: color,
      child: TextField(
        onChanged: (value){
          onChange!(value);
        },
        cursorColor: const Color(0xff333333),
        decoration: InputDecoration(
          suffixIcon:imageIcon==null?null: Container(
              margin: EdgeInsets.all(10.r),
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
              ),
              child: ImageIcon(
                imageIcon,
                size: 15.sp,
                color: suffixIconColor,
              )),
          prefixIcon:imageIconOne==null?null: Container(
              margin: EdgeInsets.all(10.r),
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
              ),
              child: ImageIcon(
                imageIconOne,
                size: 15.sp,
                color: colorone,
              )),
          fillColor: Colors.grey[50],
          labelText: labelText,
          labelStyle: const TextStyle(color: Color(0xff380CBE)),
          hintText: hintText,
          contentPadding: const EdgeInsets.only(left: 12, right: 12),
          hintStyle: TextStyle(color: const Color(0xffBDBDBD), fontSize: size),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(50.r)),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide:
            BorderSide(color: const Color(0xffBDBDBD), width: 2.0.w),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide:
            BorderSide(color: const Color(0xffBDBDBD), width: 2.0.w),
          ),
        ),
      ),
    );
  }
}
