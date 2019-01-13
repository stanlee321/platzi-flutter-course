import "package:flutter/material.dart";
import "review.dart";

class ReviewList extends StatelessWidget{
  final review_1 = new Review("assets/img/people.jpg", "Ban Bam", "1 review and 5 Photos", " There is a some place in the earth");
  final review_2 = new Review("assets/img/people.jpg", "Ban Bam", "1 review and 5 Photos", " There is a some place in the earth");

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        review_1,
        review_2
    ],);
  }

}