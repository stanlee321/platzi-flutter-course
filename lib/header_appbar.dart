import 'package:flutter/material.dart';
import 'gradient_back.dart';
import 'card_image_list.dart';

class HeaderAppBar extends StatelessWidget{
  // This class unifies the Gradeint background with the list view
  // of images in one single widget

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Stack(
      children: <Widget>[
        new GradientBack(),
        new CardImageList()
    ],);
  }

}
