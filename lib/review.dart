import 'package:flutter/material.dart';

class Review extends StatelessWidget {
  String imgPath = "assets/img/people.jpg";
  String name = "Ban Bam";
  String details = "1 review and 5 Photos";
  String comment = " There is a some place in the earth";
  Review(this.imgPath, this.name, this.details, this.comment);

  @override
  Widget build(BuildContext context) {

    // User Comment
    final userComment = Container(
      margin: EdgeInsets.only(
        left: 20.0,
      ),
      child: Text(
        comment,
        textAlign: TextAlign.left,
        style: TextStyle(
          fontSize: 9.0,
          fontFamily: "Lato",
          fontWeight: FontWeight.w900
        ),
      ),
    );

    // User Info
    final userInfo = Container(
      margin: EdgeInsets.only(
        left: 20.0,
      ),
      child: Text(
        details,
        textAlign: TextAlign.left,
        style: TextStyle(
          fontSize: 13.0,
          fontFamily: "Lato",
          color: Color(0xFFa3a5a7)
        ),
      ),
    );

    // User Name
    final userName = Container(
      margin: EdgeInsets.only(
        left: 20.0,
      ),
      child: Text(
        name,
        textAlign: TextAlign.left,
        style: TextStyle(
          fontSize: 17.0,
          fontFamily: "Lato"
        ),
      ),
    );

    // User Details as column
    final userDetails = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        userName,
        userInfo,
        userComment,
    ],);

    // User Photo
    final photo = Container(
      margin: EdgeInsets.only(
        top: 20.0,
        left: 20.0
      ),
      width: 80.0,
      height: 80.0,

      decoration: BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(
          fit: BoxFit.cover,
          image:  AssetImage(imgPath)
        )
      ),
    );
    // Stack in a row
    return Row(
      children: <Widget>[
        photo,
        userDetails
      ],
    );
  }

}