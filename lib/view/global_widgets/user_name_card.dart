import 'package:flutter/material.dart';

class UserNameCard extends StatelessWidget {
  const UserNameCard({
    super.key,
    required this.name,
    required this.image,
    this.onCardTapped,
  });
  final String image;
  final String name;
  final void Function()? onCardTapped;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onCardTapped,
      child: Column(
        children: [
          Image.asset(
            image,
            height: 92,
          ),
          Text(
            name,
            style: TextStyle(color: Colors.white, height: 2),
          )
        ],
      ),
    );
  }
}
