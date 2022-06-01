import 'package:flutter/material.dart';

class SmallContainer extends StatefulWidget {
  const SmallContainer({Key? key}) : super(key: key);

  @override
  State<SmallContainer> createState() => _SmallContainerState();
}

class _SmallContainerState extends State<SmallContainer> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
        itemCount: 5,
        itemBuilder: (context, index)=>  buildContainer(index),

        );
  }
  buildContainer(int index) {
    return GestureDetector(
      onTap: (){
        setState(() {
          selectedIndex = index;
        });
      },
      child: Container(
        margin: EdgeInsets.only(top: 100),
        height: 30,
        width: 2,
        color: Colors.pink
      ),
    );
  }
}


