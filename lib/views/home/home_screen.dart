// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:sadapay_ui/views/home/home_page_item.dart';
import 'package:sadapay_ui/views/more_screen/more_screen.dart';
import 'package:sadapay_ui/views/payments/payments.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 0;
  final tabs = [HomePageItems(), Payments(), MoreScreen()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: selectedIndex,
          selectedItemColor: Color(0xffFF8181),
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home_rounded),
              label: 'Personal',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.view_kanban),
              label: 'Payments',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.menu),
              label: 'More',
            ),
          ],
          onTap: (index) {
            selectedIndex = index;
            setState(() {});
          },
        ),
        body: SafeArea(child: tabs[selectedIndex]));
  }
}
