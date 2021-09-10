import 'package:flutter/material.dart';
import 'package:manomilan/screens/home_screen.dart';
import 'package:manomilan/utils/color_file.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: bgColor,
        leadingWidth: 80.0,
        leading: Padding(
          padding: const EdgeInsets.only(left: 10.0),
          child: Image.asset("assets/images/logo.jpg"),
        ),
        title: const Text("Login"),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const HomeScreen()));
                },
                child: const Center(child: Text("Home"))),
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Center(child: Text("Contact us")),
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Center(child: Text("My profie")),
          ),
        ],
      ),
    );
  }
}
