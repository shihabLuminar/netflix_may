import 'package:flutter/material.dart';
import 'package:netflix_may/dummy_db.dart';
import 'package:netflix_may/utils/color_constants.dart';
import 'package:netflix_may/utils/image_constants.dart';
import 'package:netflix_may/view/bottom_navbar_screen/bottom_navbar_screen.dart';
import 'package:netflix_may/view/global_widgets/user_name_card.dart';
import 'package:netflix_may/view/home_screen/home_screen.dart';

class UserNameScreen extends StatelessWidget {
  const UserNameScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.mainBlack,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: ColorConstants.mainBlack,
        title: Image.asset(
          ImageConstants.LOGO,
          height: 37,
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.edit,
                color: Colors.white,
              ))
        ],
      ),
      body: Center(
        child: GridView.builder(
            shrinkWrap: true,
            padding: EdgeInsets.symmetric(horizontal: 75),
            itemCount: DummyDb.usersList.length + 1,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisSpacing: 25,
                mainAxisSpacing: 22,
                crossAxisCount: 2,
                mainAxisExtent: 121),
            itemBuilder: (context, index) => index < DummyDb.usersList.length
                ? UserNameCard(
                    name: DummyDb.usersList[index]["name"],
                    image: DummyDb.usersList[index]["imagePath"],
                    onCardTapped: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => BottomNavbarScreen(),
                          ));
                    },
                  )
                : UserNameCard(
                    name: "Add",
                    image: ImageConstants.ADD_BUTTON,
                    onCardTapped: () {
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                          backgroundColor: ColorConstants.red,
                          content: Text("Feature not available")));
                    },
                  )),
      ),
    );
  }
}
