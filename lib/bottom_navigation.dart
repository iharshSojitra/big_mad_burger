import 'package:big_mad_burger/screen_1.dart';
import 'package:big_mad_burger/screen_2.dart';
import 'package:big_mad_burger/screen_3.dart';
import 'package:flutter/material.dart';

class Navigationn extends StatefulWidget {
  const Navigationn({Key? key}) : super(key: key);

  @override
  State<Navigationn> createState() => _NavigationnState();
}

class _NavigationnState extends State<Navigationn> {
  int selected = 0;
  List screenss = [
    Screen_1(),
    Screen_2(),
    Screen_3(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screenss[selected],
      bottomNavigationBar: ClipRRect(
        borderRadius: BorderRadius.vertical(top: Radius.circular(18)),
        child: BottomNavigationBar(
          currentIndex: selected,
          onTap: (value) {
            setState(() {
              selected = value;
            });
          },
          selectedItemColor: Colors.orange,
          backgroundColor: Colors.white,
          unselectedItemColor: Colors.black,
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home_outlined,
                ),
                label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.shopping_cart_outlined,
                ),
                label: "Order"),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.person_outline,
                ),
                label: "Profile"),
          ],
        ),
      ),
    );
  }
}
