import 'package:flutter/material.dart';

void main() {
  runApp(new myApp());
}

class myApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "my first app",
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "first lake app",
            textDirection: TextDirection.ltr,
          ),
        ),
        body: Container(
          padding: EdgeInsets.all(10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            getAssetImage(),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Expanded(
                  child: Column(
                    children: <Widget>[
                      Text(
                        "Oeschinen Lake Campground",
                        textAlign: TextAlign.left,
                        style: TextStyle(fontSize: 20.0, color: Colors.black),
                      ),
                      Text(
                        "Kanersteg, Switzerland",
                        textAlign: TextAlign.left,
                        style: TextStyle(fontSize: 20.0, color: Colors.grey),
                      )
                    ],
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                  ),
                ),
                Icon(Icons.star,
                  color: Colors.deepOrange,
                  size: 30.0,),
                Text("41",
                style:TextStyle(fontSize: 20.0),)
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Icon(
                        Icons.call,
                      color: Colors.blue,
                      size: 30.0,
                    ),
                    Text(
                        "CALL",
                            style:TextStyle(fontSize: 20.0,color: Colors.blue),
                    )
                  ],
                ),
                Column(
                  children: <Widget>[
                    Icon(Icons.near_me,
                      color: Colors.blue,
                      size: 30.0,),
                    Text(
                      "ROUTE",
                      style:TextStyle(fontSize: 20.0,color: Colors.blue),
                    )
                  ],
                ),
                Column(
                  children: <Widget>[
                    Icon(Icons.share,
                      color: Colors.blue,
                      size: 30.0,),
                    Text(
                      "SHARE",
                      style:TextStyle(fontSize: 20.0,color: Colors.blue),
                    )
                  ],
                ),
              ],

            ),
            Text(
              'Lake Oeschinen lies at the foot of the Blüemlisalp in the Bernese '
                  'Alps. Situated 1,578 meters above sea level, it is one of the '
                  'larger Alpine Lakes. A gondola ride from Kandersteg, followed by a '
                  'half-hour walk through pastures and pine forest, leads you to the '
                  'lake, which warms to 20 degrees Celsius in the summer. Activities '
                  'enjoyed here include rowing, and riding the summer toboggan run.',
              softWrap: true,
              style:TextStyle(fontSize: 16.0,color: Colors.black)
            )
          ],
        )),
      ),
    );
  }

 Widget getAssetImage() {
    AssetImage assetImage=AssetImage('images/lake.jpg');
    Image image=Image(
      image: assetImage,
      width: 125.0,
      height: 125.0,
    );
   return Container(
     child: image,
   );
 }
}
