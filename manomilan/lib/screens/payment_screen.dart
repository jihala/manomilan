import 'dart:async';
import 'dart:html';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
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
  final int? price = 100000;
  String name;
  String email;
  String mobile;

  _WebpaymentState(this.email, this.name, this.mobile);

  IFrameElement _element = IFrameElement();
  var _test_element = null;

  @override
  Widget build(BuildContext context) {
    if (_test_element == null) {
      ui.platformViewRegistry.registerViewFactory("rzp-html", (int viewId) {
        window.onMessage.forEach((element) {
          print('window callback: ${window.onMessage}');
          setState(() {
            _test_element = element;
          });
          print('Event Received in callback: ${element.data}');
          print('test callback: ${_test_element.data}');
          if (element.data == 'MODAL_CLOSED') {
            Fluttertoast.showToast(
                msg: "PAYMENT MODAL CLOSED",
                toastLength: Toast.LENGTH_SHORT,
                gravity: ToastGravity.CENTER,
                timeInSecForIosWeb: 1,
                backgroundColor: Colors.red,
                textColor: Colors.white,
                fontSize: 16.0);

            Navigator.pop(context);
          } else if (element.data == 'SUCCESS') {
            print('PAYMENT SUCCESSFULL!!!!!!!');
            Fluttertoast.showToast(
                msg: "PAYMENT SUCCESSFULL",
                toastLength: Toast.LENGTH_SHORT,
                gravity: ToastGravity.CENTER,
                timeInSecForIosWeb: 1,
                backgroundColor: Colors.red,
                textColor: Colors.white,
                fontSize: 16.0);
          }
          //  FirebaseFirestore.instance.collection('Products').doc('iphone12').update({
          //     'payment':"Done"
          //  });
        });

        _element.src =
            'assets/payments.html?name=$name&price=$price&email=$email&mobile=$mobile';
        _element.style.border = 'none';

        return _element;
      });
    } else if (_test_element.data == 'SUCCESS') {
      print('change screen!');
      pushScreen(context);
    }

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
                decoration: const BoxDecoration(
                  color: bgColor,
                ),
                child: const HtmlElementView(viewType: 'rzp-html')),
          );
        }));
  }
}

Widget pushScreen(BuildContext context) {
  Timer(const Duration(seconds: 3), () {
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(builder: (context) => const ProfileScreen()),
    );
  });
  return const Center(
    child: CircularProgressIndicator(
      color: Colors.blue,
    ),
  );
}



       

//  



    
  