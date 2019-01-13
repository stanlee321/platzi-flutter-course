import 'package:flutter/material.dart';

class ImageCard extends StatelessWidget {
  String imagePath = "assets/img/land1.jpg";
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    final card = Container(
      height: 180.0,
      width: 280.0,
      margin: EdgeInsets.only(
        top: 90.0,
        left: 20.0,

      ),
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(imagePath)
        ),
        borderRadius: BorderRadius.all(Radius.circular(10.0)),
        shape: BoxShape.rectangle,
        boxShadow: <BoxShadow> [
          BoxShadow(
          color: Colors.black,
          blurRadius: 15.0,
          offset: Offset(0.0, 0.7)
          )
        ]
      ),
    );
    return card;
  }

}