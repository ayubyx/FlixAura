import 'package:flutter/material.dart';

import '../resource/colors.dart';

class CarouselTile extends StatelessWidget {
  final String image;
  final String title;

  const CarouselTile({
    super.key,
    required this.image,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 363,
      height: 175,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        image: DecorationImage(image: AssetImage(image), fit: BoxFit.cover),
      ),
      child: Stack(
        children: [
          Align(
            alignment: Alignment.bottomRight,
            child: Padding(
              padding: const EdgeInsets.all(9),
              child: Text(title,
                  style: TextStyle(
                      fontFamily: 'GeneralSans',
                      color: Clrs.whit,
                      fontSize: 18,
                      fontWeight: FontWeight.w600)),
            ),
          )
        ],
      ),
    );
  }
}
