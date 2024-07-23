import 'package:flutter/material.dart';
import 'package:netflix_may/utils/color_constants.dart';
import 'package:netflix_may/utils/image_constants.dart';
import 'package:netflix_may/view/home_screen/home_screen.dart';
import 'package:netflix_may/view/user_name_screen/user_name_screend.dart';

class SpalshScreen extends StatefulWidget {
  const SpalshScreen({super.key});

  @override
  State<SpalshScreen> createState() => _SpalshScreenState();
}

class _SpalshScreenState extends State<SpalshScreen> {
  @override
  void initState() {
    Future.delayed(Duration(seconds: 3)).then(
      (value) {
        Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => UserNameScreen(),
            ));
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.mainBlack,
      body: Center(
        child: Image.asset(ImageConstants.LOGO),
      ),
    );
  }
}
