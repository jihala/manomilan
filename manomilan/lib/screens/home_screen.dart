import 'package:flutter/material.dart';
import 'package:manomilan/screens/login.dart';
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
        actions: <Widget>[
          Padding(
              padding: const EdgeInsets.all(8.0),
              child: InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const LoginScreen()));
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
                        child: Image.network(
                            "https://thumbs.dreamstime.com/b/close-up-shot-kankan-halkund-close-up-shot-kankan-halkund-thread-wrist-bride-groom-performing-118556966.jpg",
                            fit: BoxFit.cover),
                      ),
                      Container(
                        padding: const EdgeInsets.all(5.0),
                        height: platformHeight / 2.3,
                        width: platformWidth / 2,
                        child: Image.network(
                            "https://thumbs.dreamstime.com/b/hindu-traditional-wedding-ceremony-india-hindu-traditional-wedding-ceremony-india-marathi-wedding-vidhi-maharashtra-182428316.jpg",
                            fit: BoxFit.cover),
                      ),
                      Container(
                        padding: const EdgeInsets.all(5.0),
                        height: platformHeight / 2.3,
                        width: platformWidth / 2,
                        child: Image.network(
                            "https://media.weddingz.in/images/57d8fd1fbee7364a31f287f20e821041/A-Simple-Guide-to-Decode-Maharashtrian-Weddings-8.jpg",
                            fit: BoxFit.cover),
                      ),
                      Container(
                        padding: const EdgeInsets.all(5.0),
                        height: platformHeight / 2.3,
                        width: platformWidth / 2,
                        child: Image.network(
                            "http://1.bp.blogspot.com/-lMPcYLOo_ag/VH1mKzyTj2I/AAAAAAAAAAY/4qrCB4v80pE/s1600/2887027_medium.JPG",
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
