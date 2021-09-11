import 'package:flutter/material.dart';
import 'package:manomilan/apis/login.dart';
import 'package:manomilan/models/user.dart';
import 'package:manomilan/screens/login.dart';
import 'package:manomilan/utils/color_file.dart';
import 'package:manomilan/utils/fetured_profile.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late UserModel user;
  var _value = 1;
  var _valueAge = 1;
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
        actions: <Widget>[
          Padding(
              padding: const EdgeInsets.all(8.0),
              child: InkWell(
                onTap: () {
                  // Navigator.push(
                  //     context,
                  //     MaterialPageRoute(
                  //         builder: (context) => const LoginScreen()));
                },
                child: Center(
                    child: RichText(
                  text: const TextSpan(
                    children: [
                      TextSpan(
                          text: "Contact us",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18.0,
                          )),
                      WidgetSpan(
                        child: Icon(Icons.headset_mic_outlined, size: 18),
                      )
                    ],
                  ),
                )),
              )),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: InkWell(
              onTap: () {
                // Future

                // Navigator.push(
                //     context,
                //     MaterialPageRoute(
                //         builder: (context) => const LoginScreen()));
              },
              child: Center(
                  child: RichText(
                text: const TextSpan(
                  children: [
                    TextSpan(
                        text: "My profile",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18.0,
                        )),
                    WidgetSpan(
                      child: Icon(Icons.account_circle_outlined, size: 18),
                    )
                  ],
                ),
              )),
            ),
          ),
        ],
      ),
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/back.jpg"),
                fit: BoxFit.cover)),
        child: Container(
            decoration: const BoxDecoration(
              color: bgColor,
            ),
            height: platformHeight,
            width: platformWidth,
            child: ListView(
              children: [
                Container(
                  padding: const EdgeInsets.all(20.0),
                  height: platformHeight / 2.3,
                  width: platformWidth,
                  child: Image.asset(
                    "assets/images/back.jpg",
                    fit: BoxFit.cover,
                  ),
                ),
                const Divider(
                  color: Colors.blueAccent,
                ),
                Container(
                  margin: const EdgeInsets.symmetric(
                    horizontal: 20.0,
                  ),
                  height: 110.0,
                  width: platformWidth,
                  decoration: const BoxDecoration(
                    color: Colors.blue,
                  ),
                  child: Center(
                    child: Wrap(
                      alignment: WrapAlignment.spaceBetween,
                      direction: Axis.horizontal,
                      crossAxisAlignment: WrapCrossAlignment.center,
                      children: [
                        Container(
                          width: platformWidth / 3.2,
                          child: Wrap(
                            alignment: WrapAlignment.start,
                            direction: Axis.horizontal,
                            crossAxisAlignment: WrapCrossAlignment.center,
                            children: [
                              const Padding(
                                padding: EdgeInsets.symmetric(horizontal: 10.0),
                                child: Text(
                                  "Looking for:",
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 125,
                                height: 50,
                                child: DropdownButton<int>(
                                    dropdownColor: bgColor,
                                    value: _value,
                                    items: const [
                                      DropdownMenuItem(
                                        child: Text("Male",
                                            style: TextStyle(
                                              color: Colors.white,
                                            )),
                                        value: 1,
                                      ),
                                      DropdownMenuItem(
                                        child: Text("Female",
                                            style: TextStyle(
                                              color: Colors.white,
                                            )),
                                        value: 2,
                                      )
                                    ],
                                    onChanged: (val) {
                                      setState(() {
                                        _value = val!;
                                      });
                                    },
                                    hint: const Text("Select Gender",
                                        style: TextStyle(
                                          color: Colors.white,
                                        ))),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: platformWidth / 3.2,
                          child: Wrap(
                            alignment: WrapAlignment.start,
                            direction: Axis.horizontal,
                            crossAxisAlignment: WrapCrossAlignment.center,
                            children: [
                              const Padding(
                                padding: EdgeInsets.symmetric(horizontal: 10.0),
                                child: Text("Age:",
                                    style: TextStyle(
                                      color: Colors.white,
                                    )),
                              ),
                              SizedBox(
                                width: 125,
                                height: 50,
                                child: DropdownButton<int>(
                                    dropdownColor: bgColor,
                                    value: _valueAge,
                                    items: const [
                                      DropdownMenuItem(
                                        child: Text("21-25",
                                            style: TextStyle(
                                              color: Colors.white,
                                            )),
                                        value: 1,
                                      ),
                                      DropdownMenuItem(
                                        child: Text("26-30",
                                            style: TextStyle(
                                              color: Colors.white,
                                            )),
                                        value: 2,
                                      ),
                                      DropdownMenuItem(
                                        child: Text("31-35",
                                            style: TextStyle(
                                              color: Colors.white,
                                            )),
                                        value: 3,
                                      ),
                                      DropdownMenuItem(
                                        child: Text("36-40",
                                            style: TextStyle(
                                              color: Colors.white,
                                            )),
                                        value: 4,
                                      ),
                                    ],
                                    onChanged: (val) {
                                      setState(() {
                                        _valueAge = val!;
                                      });
                                    },
                                    hint: const Text("Select Gender",
                                        style: TextStyle(
                                          color: Colors.white,
                                        ))),
                              ),
                            ],
                          ),
                        ),
                        ElevatedButton.icon(
                            style: ElevatedButton.styleFrom(
                              primary: bgColor,
                            ),
                            label: const Text("Search",
                                style: TextStyle(
                                  color: Colors.white,
                                )),
                            onPressed: () {
                              print("Search");
                            },
                            icon: const Icon(
                              Icons.search_rounded,
                              color: Colors.white,
                            )),
                      ],
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.all(20.0),
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
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: const FeaturedProfile(),
                ),
                const Divider(
                  color: Colors.blue,
                ),
                const Padding(
                  padding: EdgeInsets.all(20.0),
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
