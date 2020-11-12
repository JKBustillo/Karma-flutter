import 'package:flutter/material.dart';
import 'package:karma_flutter/widgets/deliveryFavor.dart';
import 'package:karma_flutter/widgets/km5Favor.dart';
import 'package:karma_flutter/widgets/photocopyFavor.dart';

class FavorsType extends StatelessWidget {
  const FavorsType({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: new AppBar(
          title: new Text("Karma"),
        ),
        body: new Container(
            child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "Select the type of favor",
                style: TextStyle(
                    fontSize: 25),
              ),
              Container(
                margin: const EdgeInsets.only(top: 10.0),
                child: MaterialButton(
                    padding: const EdgeInsets.all(10.0),
                    child: Text(
                      "Photocopies",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    ),
                    color: Colors.blue,
                    textColor: Colors.white,
                    onPressed: () {
                      var route = new MaterialPageRoute(
                          builder: (BuildContext context) => new PhotocopyFavor());
                      Navigator.of(context).push(route);
                    }),
              ),
              Container(
                margin: const EdgeInsets.only(top: 10.0),
                child: MaterialButton(
                    padding: const EdgeInsets.all(10.0),
                    child: Text(
                      "Buy something in KM5",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    ),
                    color: Colors.blue,
                    textColor: Colors.white,
                    onPressed: () {
                      var route = new MaterialPageRoute(
                          builder: (BuildContext context) => new Km5Favor());
                      Navigator.of(context).push(route);
                    }),
              ),
              Container(
                margin: const EdgeInsets.only(top: 10.0),
                child: MaterialButton(
                    padding: const EdgeInsets.all(10.0),
                    child: Text(
                      "Pick up a delivery",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    ),
                    color: Colors.blue,
                    textColor: Colors.white,
                    onPressed: () {
                      var route = new MaterialPageRoute(
                          builder: (BuildContext context) => new DeliveryFavor());
                      Navigator.of(context).push(route);
                    }),
              ),
            ],
          ),
        )));
  }
}
