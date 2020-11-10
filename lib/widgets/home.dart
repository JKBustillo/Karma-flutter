import 'package:flutter/material.dart';
import 'package:karma_flutter/widgets/login.dart';
import 'package:karma_flutter/widgets/favors.dart';

class Home extends StatelessWidget {
  const Home({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: new AppBar(
          title: new Text("Karma"),
        ),
        body: new Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "Jose",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.blueAccent,
                    fontSize: 35),
              ),
              Container(
                alignment: Alignment.center,
                margin: const EdgeInsets.all(10.0),
                child: RichText(
                  text: TextSpan(
                      text: "Karma: ",
                      style: TextStyle(color: Colors.black, fontSize: 35),
                      children: <TextSpan>[
                        TextSpan(
                          text: "222",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 35),
                        ),
                      ]),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(bottom: 10.0),
                child: MaterialButton(
                    padding: const EdgeInsets.all(10.0),
                    child: Text(
                      "Favors",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    ),
                    color: Colors.blue,
                    textColor: Colors.white,
                    onPressed: () {
                      var route = new MaterialPageRoute(
                          builder: (BuildContext context) => new Favors());
                      Navigator.of(context).pushReplacement(route);
                    }),
              ),
              MaterialButton(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(
                    "Log out",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                  color: Colors.blue,
                  textColor: Colors.white,
                  onPressed: () {
                    var route = new MaterialPageRoute(
                        builder: (BuildContext context) => new Login());
                    Navigator.of(context).pushReplacement(route);
                  }),
              Container(
                margin: const EdgeInsets.only(top: 10.0),
                child: Text(
                  "Last movements",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                ),
              ),
            ],
          ),
        ));
  }
}
