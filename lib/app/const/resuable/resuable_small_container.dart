import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ResuableContainer extends StatelessWidget {
  final double height;
  final double width;
  final Color color;

  const ResuableContainer(
      {Key? key,
      required this.height,
      required this.width,
      required this.color,
      })
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      color: color,
    );
  }
}
