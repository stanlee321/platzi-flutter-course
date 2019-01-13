import "package:flutter/material.dart";

class PyTorchHello extends StatelessWidget {
  static String assetName = 'images/bg/pytorch.png';
  @override
  Widget build(BuildContext context){
    return Stack(
          children: <Widget>[
            new Container(
              decoration: new BoxDecoration( 
                image: new DecorationImage( 
                  image: new AssetImage(assetName), 
                  fit: BoxFit.cover,
                  ),
                  //shape:BoxShape.circle,
                ),
            ),
            new Center(
                child: Container(
                  height: 80.0,
                  decoration: BoxDecoration(
                    color: Colors.black45,
                  ),
                  child: Center(child:               
                         Text("I love PyTorch",
                                style: TextStyle(fontSize: 20.0, color: Colors.white ),
                              ),
                        )
                )
            ),
          ],
        );
    }
  }