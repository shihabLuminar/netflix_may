import 'package:flutter/material.dart';
import 'package:netflix_may/dummy_db.dart';
import 'package:netflix_may/utils/color_constants.dart';
import 'package:netflix_may/utils/image_constants.dart';

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
                ? Column(
                    children: [
                      Image.asset(
                        DummyDb.usersList[index]["imagePath"],
                        height: 92,
                      ),
                      Text(
                        DummyDb.usersList[index]["name"],
                        style: TextStyle(color: Colors.white, height: 2),
                      )
                    ],
                  )
                : Column(
                    children: [
                      Image.asset(
                        ImageConstants.ADD_BUTTON,
                        height: 92,
                      ),
                      Text(
                        "Add",
                        style: TextStyle(color: Colors.white, height: 2),
                      )
                    ],
                  )),
      ),
    );
  }
}
