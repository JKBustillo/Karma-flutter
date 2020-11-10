import 'package:flutter/material.dart';
import 'package:karma_flutter/widgets/home.dart';

class PhotocopyFavor extends StatefulWidget {
  PhotocopyFavor({Key key}) : super(key: key);

  @override
  _PhotocopyFavorState createState() => _PhotocopyFavorState();
}

class _PhotocopyFavorState extends State<PhotocopyFavor> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text("Karma"),
      ),
      body: new Container(
        margin: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              alignment: Alignment.center,
              margin: const EdgeInsets.all(20.0),
              child: Text(
                "Introduce the photocopy code",
                style: TextStyle(
                    fontSize: 24),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.7,
              margin: const EdgeInsets.all(8.0),
              alignment: Alignment.center,
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Example: 123456",
                ),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.7,
              margin: const EdgeInsets.all(8.0),
              alignment: Alignment.center,
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Where can we find you?",
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 10.0),
              child: 
            MaterialButton(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  "Ask favor",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
                color: Colors.blue,
                textColor: Colors.white,
                onPressed: () {
                  var route = new MaterialPageRoute(
                      builder: (BuildContext context) => new Home());
                  Navigator.of(context).pushReplacement(route);
                }),
            ),
          ],
        ),
      ),
    );
  }
}
