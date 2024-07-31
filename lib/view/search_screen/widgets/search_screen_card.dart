import 'package:flutter/material.dart';
import 'package:netflix_may/utils/color_constants.dart';

class SearchScreenCard extends StatelessWidget {
  const SearchScreenCard({
    super.key,
    required this.url,
    required this.title,
  });
  final String url;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: ColorConstants.dartkGrey,
      child: Row(
        children: [
          Image.network(
            url,
            height: 76,
            width: 146,
            fit: BoxFit.cover,
          ),
          SizedBox(
            width: 20,
          ),
          Text(
            title,
            style: TextStyle(color: ColorConstants.mainWhite, fontSize: 15),
          ),
          Spacer(),
          Icon(
            Icons.play_circle_outlined,
            color: ColorConstants.mainWhite,
            size: 28,
          )
        ],
      ),
    );
  }
}
