import 'package:flutter/material.dart';


class CustomMediumContainer extends StatelessWidget {
  final double height;
  final double width;
  final Color? color;
  final Widget child;
  final double circular;
  final double borderWidth;
  final dynamic margin;
  const CustomMediumContainer(
      {Key? key,
        required this.height,
        required this.width,
        required this.child,
        required this.circular,
        required this.borderWidth,
        this.color,
        this.margin})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      padding: const EdgeInsets.only(left: 20),
      height: height,
      width: width,
      child: child,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.all(Radius.circular(circular)),
        border: Border.all(width: borderWidth, color: Colors.white),
      ),
    );
  }
}
