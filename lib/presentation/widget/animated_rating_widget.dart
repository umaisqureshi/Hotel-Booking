import 'package:animated_rating_stars/animated_rating_stars.dart';
import 'package:flutter/material.dart';

Widget animatedRatingStars(double initialValue) {
  return AnimatedRatingStars(
    initialRating: initialValue,
    minRating: 0.0,
    maxRating: 5.0,
    filledColor: Colors.black,
    emptyColor: Colors.grey,
    filledIcon: Icons.star,
    halfFilledIcon: Icons.star_half,
    emptyIcon: Icons.star_border,
    onChanged: (double rating) {
      print('Rating: $rating');
    },
    displayRatingValue: true,
    interactiveTooltips: true,
    customFilledIcon: Icons.star,
    customHalfFilledIcon: Icons.star_half,
    customEmptyIcon: Icons.star_border,
    starSize: 10.0,
    readOnly: true,
  );
}
