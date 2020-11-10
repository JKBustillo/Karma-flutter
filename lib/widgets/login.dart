import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:karma_flutter/widgets/register.dart';
import 'package:karma_flutter/widgets/home.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _userNameController = TextEditingController();
  final _passwordController = TextEditingController();
  String _userName = "";
  String _password = "";
  @override
  void dispose() {
    _userNameController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

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
                "Log in",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.blueAccent,
                    fontSize: 35),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.7,
              margin: const EdgeInsets.all(8.0),
              alignment: Alignment.center,
              child: TextField(
                controller: _userNameController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Username",
                ),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.7,
              margin: const EdgeInsets.all(8.0),
              alignment: Alignment.center,
              child: TextField(
                obscureText: true,
                controller: _passwordController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Password",
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 10.0),
              child: 
            MaterialButton(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  "Login",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
                color: Colors.blue,
                textColor: Colors.white,
                onPressed: () {
                  setState(() {
                    _userName = _userNameController.text;
                    _password = _passwordController.text;
                    print(_userName);
                  });
                  var route = new MaterialPageRoute(
                      builder: (BuildContext context) => new Home());
                  Navigator.of(context).pushReplacement(route);
                }),
            ),
            Container(
              alignment: Alignment.center,
              margin: const EdgeInsets.all(15.0),
              child: Text(
                "Don't have an account?",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
            ),
            MaterialButton(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  "Register",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
                color: Colors.blue,
                textColor: Colors.white,
                onPressed: () {
                  var route = new MaterialPageRoute(
                      builder: (BuildContext context) => new Register());
                  Navigator.of(context).pushReplacement(route);
                }),
          ],
        ),
      ),
    );
  }
}
