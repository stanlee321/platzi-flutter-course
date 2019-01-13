import 'package:flutter/material.dart';
import 'review_list.dart';
import 'description_place.dart';
import 'card_image.dart';
import 'header_appbar.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FlutterApp',
      theme: ThemeData(
        primarySwatch: Colors.purple ,
      ),
      home: TestWidget("My Funny App xD"),//MyHomePage(title: 'My Flutter App'),
    );
  }
}

class TestWidget extends StatelessWidget {
  String pageName;
  final String dummicomment = "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.";
  TestWidget(this.pageName);

  // TODO make column apperance with the comments and the revieweres list
  @override
  Widget build(BuildContext context) {
    {
      return Scaffold (
        /*appBar: AppBar(
          title:Text(pageName),
          leading: BackButton(
            color: Colors.white
          ),
        ),*/
        //body: new HomeWidget(),
        //body: ReviewList() ,
        body: Stack(
          children: <Widget>[
            ListView(
              children: <Widget>[
                new DescriptionPlace("Las Vegas", dummicomment, 5),
                new ReviewList()
              ],
              ),
              HeaderAppBar()
          ],
        ),
      );
    }
  }
}
