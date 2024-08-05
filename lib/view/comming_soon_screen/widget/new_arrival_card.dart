import 'package:flutter/material.dart';
import 'package:netflix_may/utils/color_constants.dart';

class NewArrivalCard extends StatelessWidget {
  const NewArrivalCard({
    super.key,
    required this.title,
    required this.date,
    required this.url,
  });
  final String title;
  final String date;
  final String url;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 5, horizontal: 12),
      color: ColorConstants.dartkGrey,
      child: Row(
        children: [
          Image.network(
            fit: BoxFit.cover,
            url,
            height: 55,
            width: 113,
          ),
          SizedBox(width: 30),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "New Arival",
                style: TextStyle(
                    color: ColorConstants.mainWhite,
                    fontSize: 14,
                    fontWeight: FontWeight.w500),
              ),
              Text(
                title,
                style: TextStyle(
                    color: ColorConstants.mainWhite.withOpacity(.83),
                    fontSize: 14,
                    fontWeight: FontWeight.w500),
              ),
              Text(
                date,
                style: TextStyle(
                    color: ColorConstants.mainWhite.withOpacity(.48),
                    fontSize: 11,
                    fontWeight: FontWeight.w500),
              ),
            ],
          )
        ],
      ),
    );
  }
}
