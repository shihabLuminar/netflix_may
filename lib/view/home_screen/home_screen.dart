import 'package:flutter/material.dart';
import 'package:netflix_may/utils/color_constants.dart';
import 'package:netflix_may/utils/image_constants.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.mainBlack,
      body: Column(
        children: [
          // #1 top ten section
          _buildTopTenSection(),
          SizedBox(height: 20),
          //#2 play button section
          Row(
            children: [Column()],
          )
        ],
      ),
    );
  }

  Widget _buildTopTenSection() {
    return Stack(
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
          padding: EdgeInsets.only(left: 10, right: 24, top: 45),
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                  colors: [
                ColorConstants.mainBlack,
                Colors.transparent,
              ])),
          height: 415,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(ImageConstants.LOGO_N),
                  Text(
                    "Tv Shows",
                    style: TextStyle(
                      color: ColorConstants.mainWhite,
                      fontSize: 17.2,
                    ),
                  ),
                  Text(
                    "Movies",
                    style: TextStyle(
                      color: ColorConstants.mainWhite,
                      fontSize: 17.2,
                    ),
                  ),
                  Text(
                    "My List",
                    style: TextStyle(
                      color: ColorConstants.mainWhite,
                      fontSize: 17.2,
                    ),
                  ),
                ],
              ),
              Text(
                "#2 in Nigeria Today",
                style: TextStyle(
                    color: ColorConstants.mainWhite,
                    fontSize: 14,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
