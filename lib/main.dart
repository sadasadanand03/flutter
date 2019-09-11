import 'package:flutter/material.dart';

main() {
  runApp(UIWidget());
}

class UIWidget extends StatefulWidget {
  @override
  _UIWidgetState createState() => _UIWidgetState();
}

class _UIWidgetState extends State<UIWidget> {
  var theme = ThemeData.light();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: theme,
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.arrow_back),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              // Icon(Icons.favorite_border),
              IconButton(
                icon: Icon(Icons.favorite_border),
                onPressed: () {
                  setState(() {
                    if(theme == ThemeData.light()){
                      theme = ThemeData.dark();
                    }else{
                      theme = ThemeData.light();
                    }
                  });
                },
              ),
              Icon(Icons.more_vert)
            ],
          ),
        ),
        body: ListView(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(top: 30.0),
            ),
            Center(
              child: CircleAvatar(
                radius: 60,
                backgroundImage: ExactAssetImage("assets/images/pic.png"),
                child: Align(
                    alignment: Alignment(1, 1),
                    child: Icon(Icons.check_circle, color: Colors.blue,)),
              ),
            ),
            ListTile(
              title: Center(
                  child: Text(
                "sadanand kumar",
                style: TextStyle(fontWeight: FontWeight.w900),
              )),
              subtitle: Center(
                  child: Text(
                "week 2",
                style: TextStyle(fontWeight: FontWeight.w600),
              )),
            ),
            Center(child: Text("sada.sadanand@gmail.com")),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Center(
                  child: CircleAvatar(
                    radius: 10,
                    backgroundImage:
                        ExactAssetImage("assets/images/twitter.png"),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(right: 10.0),
                ),
                Center(
                  child: CircleAvatar(
                    radius: 10,
                    backgroundImage:
                        ExactAssetImage("assets/images/github.png"),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(right: 10.0),
                ),
                Center(
                  child: CircleAvatar(
                    radius: 10,
                    backgroundImage:
                        ExactAssetImage("assets/images/linked.png"),
                  ),
                ),
              ],
            ),
            Center(
              child: RaisedButton(
                color: Colors.blue,
                textColor: Colors.white,
                child: Text(
                  "Click me",
                ),
                onPressed: () {},
              ),
            ),
            Divider(
              height: 40.0,
              indent: 55,
              endIndent: 55,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Center(
                  child: CircleAvatar(
                    radius: 30,
                    backgroundImage: ExactAssetImage("assets/images/like.png"),
                  ),
                ),
                Center(
                  child: CircleAvatar(
                    radius: 30,
                    backgroundImage: ExactAssetImage("assets/images/love.jpeg"),
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(top: 10.0),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Center(
                  child: Text(
                    "1.3K",
                    style: TextStyle(fontWeight: FontWeight.w900),
                  ),
                ),
                Center(
                    child: Text(
                  "1.5K",
                  style: TextStyle(fontWeight: FontWeight.w900),
                )),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Center(
                    child: Text(
                  "Like",
                )),
                Center(
                  child: Text(
                    "Love",
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
