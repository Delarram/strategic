import 'package:flutter/material.dart';
import 'package:strategic/view/pages/myhome.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({Key? key}) : super(key: key);

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
     int index =0;
     int selectedText = 0;
     final screens = [
       const Center(child: Text("hello Punam")),
       const MyHome(),
       const Center(child: Text("hello Punam")),
       const Center(child: Text("hello Punam")),
     ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[index],
      bottomNavigationBar:  NavigationBarTheme(
        data:  NavigationBarThemeData(
          indicatorColor: Colors.transparent,
          labelTextStyle: MaterialStateProperty.all(
            const TextStyle(
                fontWeight:FontWeight.normal,fontSize: 14,color: Colors.pink),
          ),
        ),
        child: NavigationBar(
          height: 65,
          selectedIndex: index,
          animationDuration: const Duration(seconds: 1),
          onDestinationSelected: (index) =>
              setState(() => this.index = index,),
          backgroundColor: Colors.grey[100],
          labelBehavior: NavigationDestinationLabelBehavior.onlyShowSelected,
          destinations: const [
            NavigationDestination(
              selectedIcon: Icon(Icons.home,color: Colors.pink),
                icon: Icon(Icons.home_outlined),
                label:'Home' ),
            NavigationDestination(
                selectedIcon: Icon(Icons.content_paste_rounded,color: Colors.pink),
                icon: Icon(Icons.content_paste),
                label:'Contents'),
            NavigationDestination(
                selectedIcon: Icon(Icons.queue_play_next_outlined,color: Colors.pink),
                icon: Icon(Icons.queue_play_next),
                label:'Success Story' ),
            NavigationDestination(
                selectedIcon: Icon(Icons.account_circle,color: Colors.pink),
                icon: Icon(Icons.account_circle_outlined),
                label:'About Us' ),
          ],
        ),
      ),
    );
  }
}
