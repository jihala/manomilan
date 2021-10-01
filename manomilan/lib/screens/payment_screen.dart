import 'dart:async';
import 'dart:html';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:manomilan/screens/home_screen.dart';
import 'package:manomilan/screens/profile_screen.dart';

import 'package:manomilan/screens/ui_fake.dart' if (dart.library.html) 'dart:ui'
    as ui;
import 'package:manomilan/utils/color_file.dart';

class Webpayment extends StatefulWidget {
  final String name;
  final String email;
  final String mobile;

  const Webpayment(
      {Key? key, required this.email, required this.mobile, required this.name})
      : super(key: key);

  @override
  _WebpaymentState createState() => _WebpaymentState(email, name, mobile);
}

class _WebpaymentState extends State<Webpayment> {
  @override
  void initState() {
    try {
      loadWebView();
      print("loading view");
      const HtmlElementView(
        viewType: 'rzp-html',
      );
      print(" view called");
    } catch (e) {
      print("error>>>> " + e.toString());
    }
    super.initState();
  }

  final int? price = 100000;
  String name;
  String email;
  String mobile;

  _WebpaymentState(this.email, this.name, this.mobile);

  IFrameElement _element = IFrameElement();
  var _test_element;

  bool isLoading = false;
  @override
  Widget build(BuildContext context) {
    Timer(const Duration(seconds: 5), () {
      print("time up");
      setState(() {
        isLoading = true;
      });
    });

    return Scaffold(
      appBar: AppBar(
        backgroundColor: bgColor,
        leadingWidth: 80.0,
        leading: Padding(
          padding: const EdgeInsets.only(left: 10.0),
          child: Image.asset("assets/images/logo.jpg"),
        ),
        title: const Text("Payment"),
      ),
      body: Builder(builder: (BuildContext context) {
        return Container(
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/back.jpg"),
                  fit: BoxFit.cover)),
          child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              decoration: const BoxDecoration(
                color: bgColor,
              ),
              child: Center(
                child: Container(
                    width: MediaQuery.of(context).size.width / 1.1,
                    height: MediaQuery.of(context).size.height / 1.1,
                    child: isLoading
                        ? const htmlView()
                        : const Center(
                            child: CircularProgressIndicator(
                              color: Colors.blue,
                            ),
                          )),
              )),
        );
      }),
      floatingActionButton: FloatingButtonAction(context),
    );
  }

  Widget FloatingButtonAction(BuildContext context) {
    return FloatingActionButton.extended(
      onPressed: () {
        loadWebView();
        Fluttertoast.showToast(
            msg: "Email have been sent to your email address",
            toastLength: Toast.LENGTH_SHORT,
            gravity: ToastGravity.CENTER,
            timeInSecForIosWeb: 1,
            backgroundColor: Colors.red,
            textColor: Colors.white,
            fontSize: 16.0);
        Navigator.push(
            context, MaterialPageRoute(builder: (_) => const HomeScreen()));
      },
      label: const Text('Next'),
      icon: const Icon(Icons.double_arrow_rounded),
      backgroundColor: Colors.pink,
    );
  }

  void loadWebView() {
    try {
      ui.platformViewRegistry.registerViewFactory("rzp-html", (int viewId) {
        window.onMessage.forEach((element) {
          print('Event Received in callback: ${element.data}');
          if (element.data == 'MODAL_CLOSED') {
            Navigator.pop(context);
          } else if (element.data == 'SUCCESS') {
            print('PAYMENT SUCCESSFULL!!!!!!!');
          }
          //  FirebaseFirestore.instance.collection('Products').doc('iphone12').update({
          //     'payment':"Done"
          //  });
        });

        _element.height = '4000';
        _element.width = '700';

        _element.src =
            // 'assets/payments.html?name=$name&price=$price&email=$email&mobile=$mobile';
            "https://rzp.io/l/yXo0p7HtW?name=$name&price=$price&email=$email&mobile=$mobile";

        _element.style.border = 'none';

        return _element;
      });
    } catch (error) {
      print("error>>>> " + error.toString());
    }
  }
}

class htmlView extends StatelessWidget {
  const htmlView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width / 1.2,
      height: MediaQuery.of(context).size.height / 1.2,
      child: const HtmlElementView(
        viewType: 'rzp-html',
      ),
    );
  }
}


       

//  if (element.data == 'MODAL_CLOSED') {
        //   Navigator.pop(context);
        // } else if (element.data == 'SUCCESS') {
        //   print('PAYMENT SUCCESSFULL!!!!!!!');
        // }




    
  