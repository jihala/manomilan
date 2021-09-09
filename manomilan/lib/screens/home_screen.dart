import 'dart:html';

import 'package:flutter/material.dart';
import 'package:manomilan/utils/color_file.dart';
import 'package:manomilan/utils/fetured_profile.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    var platformHeight = MediaQuery.of(context).size.height;
    var platformWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: bgColor,
        leadingWidth: 80.0,
        leading: Padding(
          padding: const EdgeInsets.only(left: 10.0),
          child: Image.asset("assets/images/logo.jpg"),
        ),
        title: const Text("Home"),
        actions: const <Widget>[
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Center(child: Text("Login")),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Center(child: Text("Register")),
          )
        ],
      ),
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/back.jpg"),
                fit: BoxFit.fitWidth)),
        child: Container(
            decoration: const BoxDecoration(
              color: bgColor,
            ),
            height: platformHeight,
            width: platformWidth,
            child: ListView(
              children: [
                Container(
                  padding: const EdgeInsets.all(10.0),
                  height: platformHeight / 2.3,
                  width: platformWidth,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      Container(
                        padding: const EdgeInsets.all(5.0),
                        height: platformHeight / 2.3,
                        width: platformWidth / 2,
                        child: Image.asset("assets/images/logo.jpg",
                            fit: BoxFit.cover),
                      ),
                      Container(
                        padding: const EdgeInsets.all(5.0),
                        height: platformHeight / 2.3,
                        width: platformWidth / 2,
                        child: Image.asset("assets/images/logo.jpg",
                            fit: BoxFit.cover),
                      ),
                      Container(
                        padding: const EdgeInsets.all(5.0),
                        height: platformHeight / 2.3,
                        width: platformWidth / 2,
                        child: Image.asset("assets/images/logo.jpg",
                            fit: BoxFit.cover),
                      ),
                      Container(
                        padding: const EdgeInsets.all(5.0),
                        height: platformHeight / 2.3,
                        width: platformWidth / 2,
                        child: Image.asset("assets/images/logo.jpg",
                            fit: BoxFit.cover),
                      ),
                    ],
                  ),
                ),
                const Divider(
                  color: Colors.blue,
                ),
                const Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Text(
                    "Featured Users",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24.0,
                    ),
                  ),
                ),
                Container(
                  height: 210.0,
                  width: platformWidth,
                  child: const FeaturedProfile(),
                ),
                const Divider(
                  color: Colors.blue,
                ),
                const Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Text(
                    "New Users",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24.0,
                    ),
                  ),
                ),
                Container(
                  height: 210.0,
                  width: platformWidth,
                  child: const FeaturedProfile(),
                ),
              ],
            )),
      ),
    );
  }
}
