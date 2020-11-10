import 'package:flutter/material.dart';

class Favors extends StatefulWidget {
  Favors({Key key}) : super(key: key);

  @override
  _FavorsState createState() => _FavorsState();
}

class _FavorsState extends State<Favors> {
  // Default Radio Button Selected Item When App Starts.
  String radioButtonItem = 'ONE';

  // Group Value for Radio Button.
  int id = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: new AppBar(
          title: new Text("Karma"),
        ),
        body: Container(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width * 0.95,
                  margin: const EdgeInsets.only(bottom: 10.0),
                  child: MaterialButton(
                      padding: const EdgeInsets.all(10.0),
                      child: Text(
                        "Ask a favor",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18),
                      ),
                      color: Colors.blue,
                      textColor: Colors.white,
                      onPressed: () {
                        var route = new MaterialPageRoute(
                            builder: (BuildContext context) => new Favors());
                        Navigator.of(context).pushReplacement(route);
                      }),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Radio(
                      value: 1,
                      groupValue: id,
                      onChanged: (val) {
                        setState(() {
                          radioButtonItem = 'All';
                          id = 1;
                        });
                      },
                    ),
                    Text(
                      'All',
                      style: new TextStyle(fontSize: 14.0),
                    ),
                    Radio(
                      value: 2,
                      groupValue: id,
                      onChanged: (val) {
                        setState(() {
                          radioButtonItem = 'Photocopy';
                          id = 2;
                        });
                      },
                    ),
                    Text(
                      'Photocopy',
                      style: new TextStyle(
                        fontSize: 14.0,
                      ),
                    ),
                    Radio(
                      value: 3,
                      groupValue: id,
                      onChanged: (val) {
                        setState(() {
                          radioButtonItem = 'Km5';
                          id = 3;
                        });
                      },
                    ),
                    Text(
                      'Km5',
                      style: new TextStyle(fontSize: 14.0),
                    ),
                    Radio(
                      value: 4,
                      groupValue: id,
                      onChanged: (val) {
                        setState(() {
                          radioButtonItem = 'Delivery';
                          id = 4;
                        });
                      },
                    ),
                    Text(
                      'Delivery',
                      style: new TextStyle(fontSize: 14.0),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Radio(
                      value: 1,
                      groupValue: id,
                      onChanged: (val) {
                        setState(() {
                          radioButtonItem = 'All';
                          id = 1;
                        });
                      },
                    ),
                    Text(
                      'All',
                      style: new TextStyle(fontSize: 14.0),
                    ),
                    Radio(
                      value: 2,
                      groupValue: id,
                      onChanged: (val) {
                        setState(() {
                          radioButtonItem = 'My Favors';
                          id = 2;
                        });
                      },
                    ),
                    Text(
                      'My Favors',
                      style: new TextStyle(
                        fontSize: 14.0,
                      ),
                    ),
                  ],
                ),
                Container(
                  child: Text(
                    "Favors here",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
