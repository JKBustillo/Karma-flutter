import 'package:flutter/material.dart';
import 'package:karma_flutter/widgets/chat.dart';

class ProductDetails extends StatefulWidget {
  ProductDetails({Key key}) : super(key: key);

  @override
  _ProductDetailsState createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: new AppBar(
          title: new Text("Karma"),
        ),
        body: new Container(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Product details",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 35),
              ),
              Container(
                margin: const EdgeInsets.only(top: 5.0, bottom: 10.0),
                child: Text(
                  "Favor ID: Favor ID",
                  style: TextStyle(fontSize: 20),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(bottom: 10.0),
                child: Text(
                  "Asked by: Name",
                  style: TextStyle(fontSize: 20),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(bottom: 10.0),
                child: Text(
                  "Type: Type",
                  style: TextStyle(fontSize: 20),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(bottom: 10.0),
                child: Text(
                  "Code: Code",
                  style: TextStyle(fontSize: 20),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(bottom: 10.0),
                child: Text(
                  "Place: Place",
                  style: TextStyle(fontSize: 20),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(bottom: 10.0),
                child: Text(
                  "State: State",
                  style: TextStyle(fontSize: 20),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(bottom: 5.0),
                child: Text(
                  "Accepted by: Name",
                  style: TextStyle(fontSize: 20),
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width * 1,
                margin: const EdgeInsets.only(top: 10.0),
                child: MaterialButton(
                    padding: const EdgeInsets.all(10.0),
                    child: Text(
                      "Assign this favor to me",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    ),
                    color: Colors.blue,
                    textColor: Colors.white,
                    onPressed: () {}),
              ),
              Container(
                width: MediaQuery.of(context).size.width * 1,
                margin: const EdgeInsets.only(top: 10.0),
                child: MaterialButton(
                    padding: const EdgeInsets.all(10.0),
                    child: Text(
                      "Chat",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    ),
                    color: Colors.blue,
                    textColor: Colors.white,
                    onPressed: () {
                      var route = new MaterialPageRoute(
                          builder: (BuildContext context) => new Chat());
                      Navigator.of(context).push(route);
                    }),
              )
            ],
          ),
        ));
  }
}
