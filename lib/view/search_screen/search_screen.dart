import 'package:flutter/material.dart';
import 'package:netflix_may/dummy_db.dart';
import 'package:netflix_may/utils/color_constants.dart';
import 'package:netflix_may/view/search_screen/widgets/search_screen_card.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstants.mainBlack,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextField(
              decoration: InputDecoration(
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.symmetric(vertical: 10),
                  filled: true,
                  fillColor: ColorConstants.dartkGrey,
                  hintText: "Search for a show, movie, genre, e.t.c.",
                  hintStyle: TextStyle(
                    color: ColorConstants.lightGrey,
                    fontSize: 15,
                  ),
                  prefixIcon: Icon(
                    Icons.search,
                    color: ColorConstants.lightGrey,
                  ),
                  suffixIcon: Icon(
                    Icons.mic,
                    color: ColorConstants.lightGrey,
                  )),
            ),
            SizedBox(height: 21),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Text(
                "Top Searches",
                style: TextStyle(
                    color: ColorConstants.mainWhite,
                    fontSize: 27,
                    fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 21),
            Expanded(
              child: ListView.separated(
                  itemBuilder: (context, index) => SearchScreenCard(
                        title: DummyDb.searchScreenData[index]['title'],
                        url: DummyDb.searchScreenData[index]['url'],
                      ),
                  separatorBuilder: (context, index) => SizedBox(height: 3),
                  itemCount: 10),
            ),
          ],
        ),
      ),
    );
  }
}
