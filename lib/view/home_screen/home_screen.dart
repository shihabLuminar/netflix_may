import 'package:flutter/material.dart';
import 'package:netflix_may/utils/color_constants.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.mainBlack,
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(
                        "https://i.pinimg.com/564x/b1/8e/08/b18e0850f61301cce40519c584c7b1ba.jpg"))),
            height: 415,
          ),
          Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,
                    colors: [
                  ColorConstants.mainBlack,
                  Colors.transparent,
                ])),
            height: 415,
          ),
        ],
      ),
    );
  }
}
