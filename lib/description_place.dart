import "package:flutter/material.dart";
import "button_purple.dart";

class DescriptionPlace extends StatelessWidget{
  
  // Attributes
  String namePlace;
  String descriptionField;
  int starsNumber;

  // Constructor
  DescriptionPlace(this.namePlace, this.descriptionField, this.starsNumber);
  
  // Requiered overrride for build the Widget
  @override
  Widget build(BuildContext context){
    // Create Starts full
    final star = Container(
      margin: EdgeInsets.only(
        top: 323.0,
        right:1.0
      ),
      child: Icon(
        Icons.star,
        color: Colors.red,
      ),
    );  

    // Create Star Border
    final star_border = Container(
      margin: EdgeInsets.only(
        top: 323.0,
        right:1.0
      ),
      child: Icon(
        Icons.star_border,
        color: Colors.red,
      ),
    );  

    final description = Container(
          margin : EdgeInsets.only(
            top: 20.0,
            left: 20.0,
            right: 20.0,
          ),
          child: Text(
            descriptionField,
            style: TextStyle(
              fontFamily: "Lato",
              fontSize:9,
              fontWeight: FontWeight.bold,
              color: Colors.black38,
            ),
            textAlign: TextAlign.left,
          )
    );

    final titleAndStars = Row(
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(
            top:320.0,
            left: 20.0,
            right: 20.0,
          ),
          child: Text(
            namePlace,
            style: TextStyle(
              fontFamily: "Lato",
              fontSize: 28.0,
              fontWeight: FontWeight.w900
            ),
            textAlign: TextAlign.left,
          ),
        ),
        Row(
          children: <Widget>[
            star,
            star,
            star,
            star,
            star_border, 
          ],),
      ]//.reversed.toList(),
    );
    
    // Return column of Title and Stars, description and PurbleButton
    final titleAndStartsAndComments = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        titleAndStars,
        description,
        new ButtonPurple()

    ],);
    return titleAndStartsAndComments;
  }
}