import 'package:flutter/material.dart';
import 'package:netflix_may/utils/color_constants.dart';
import 'package:netflix_may/view/comming_soon_screen/comming_soon_screen.dart';
import 'package:netflix_may/view/home_screen/home_screen.dart';
import 'package:netflix_may/view/notificatoins_screen/notifications_screen.dart';
import 'package:netflix_may/view/search_screen/search_screen.dart';

class BottomNavbarScreen extends StatefulWidget {
  const BottomNavbarScreen({super.key});

  @override
  State<BottomNavbarScreen> createState() => _BottomNavbarScreenState();
}

class _BottomNavbarScreenState extends State<BottomNavbarScreen> {
  List screensList = [
    HomeScreen(),
    SearchScreen(),
    CommingSoonScreen(),
    NotificationsScreen(),
    Container(color: Colors.yellow),
  ];
  int selecteIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.mainBlack,
      body: screensList[selecteIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selecteIndex,
        selectedLabelStyle: TextStyle(fontSize: 10),
        unselectedLabelStyle: TextStyle(fontSize: 10),
        type: BottomNavigationBarType.fixed,
        backgroundColor: ColorConstants.mainBlack,
        selectedItemColor: ColorConstants.mainWhite,
        unselectedItemColor: ColorConstants.grey,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: "Search"),
          BottomNavigationBarItem(
              icon: Icon(Icons.video_collection_rounded),
              label: "Comming Soon"),
          BottomNavigationBarItem(
              icon: Icon(Icons.download), label: "Downloads"),
          BottomNavigationBarItem(icon: Icon(Icons.menu), label: "More"),
        ],
        onTap: (value) {
          selecteIndex = value;
          setState(() {});
        },
      ),
    );
  }
}
