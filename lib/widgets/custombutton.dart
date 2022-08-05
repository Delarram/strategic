import 'package:flutter/material.dart';


class CustomButton extends StatelessWidget {
  final double height;
  final double width;
  final String text;
  final double? vertical;
  final double? horizontal;
  final Function nextPage;
  final double size;
  final Color? fontColor;
  const CustomButton(
      {Key? key,
        required this.height,
        required this.width,
        required  this.text,
        this.vertical,
        this.horizontal, required this.nextPage, required this.size, this.fontColor=const Color(0xff333333)})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: horizontal??0,vertical: vertical??0),
      height: height,
      width: width,
      child: MaterialButton(
        onPressed: () {
          nextPage();
        },
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5)
        ),
        color: Colors.amber,
        child: Text(
          text,
          style:  TextStyle(fontSize: size, color:fontColor),
        ),
      ),
    );
  }
}
