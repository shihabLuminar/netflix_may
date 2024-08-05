import 'package:flutter/material.dart';
import 'package:netflix_may/dummy_db.dart';
import 'package:netflix_may/utils/color_constants.dart';
import 'package:netflix_may/view/comming_soon_screen/widget/comming_soon_movie_card.dart';
import 'package:netflix_may/view/comming_soon_screen/widget/new_arrival_card.dart';

class CommingSoonScreen extends StatelessWidget {
  const CommingSoonScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.mainBlack,
      appBar: AppBar(
        titleSpacing: 0.0,
        leadingWidth: 60,
        backgroundColor: ColorConstants.mainBlack,
        leading: Padding(
          padding: const EdgeInsets.all(12.0),
          child: CircleAvatar(
            backgroundColor: ColorConstants.red,
            child: Icon(
              size: 20,
              Icons.notifications,
              color: ColorConstants.mainWhite,
            ),
          ),
        ),
        title: Text(
          "Notificaitons",
          style: TextStyle(
              color: ColorConstants.mainWhite,
              fontWeight: FontWeight.bold,
              fontSize: 17),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Column(
              children: List.generate(
                DummyDb.newArrivalList.length,
                (index) => NewArrivalCard(
                  title: DummyDb.newArrivalList[index]["title"],
                  url: DummyDb.newArrivalList[index]["url"],
                  date: DummyDb.newArrivalList[index]["date"],
                ),
              ),
            ),
            ListView.separated(
                padding: EdgeInsets.symmetric(vertical: 25),
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) => CommingSoonMovieCard(
                      title: DummyDb.commingSoonMovieList[index]["title"],
                      url: DummyDb.commingSoonMovieList[index]["url"],
                      des: DummyDb.commingSoonMovieList[index]["description"],
                    ),
                separatorBuilder: (context, index) => SizedBox(height: 17),
                itemCount: DummyDb.commingSoonMovieList.length)
          ],
        ),
      ),
    );
  }
}
