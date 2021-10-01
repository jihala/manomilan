import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
import 'package:manomilan/screens/payment_screen.dart';
import 'package:manomilan/utils/color_file.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final nameController = TextEditingController();
  final mobileController = TextEditingController();
  final emailController = TextEditingController();
  final passController = TextEditingController();

  String _date = "Date of birth";
  String _time = "Time of birth";

  // Default Radio Button Selected Item When App Starts.
  String radioButtonItem = 'Male';

  // Group Value for Radio Button.
  int id = 1;

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    nameController.dispose();
    super.dispose();
  }

  late String name, email, password, mobile;

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
        title: const Text("Register"),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: InkWell(
                onTap: () {
                  // Navigator.push(
                  //     context,
                  //     MaterialPageRoute(
                  //         builder: (context) => const HomeScreen()));
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
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 15, bottom: 0),
                    child: Container(
                      height: 50,
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.1),
                        border:
                            Border.all(color: Colors.white.withOpacity(0.1)),
                        borderRadius: const BorderRadius.all(Radius.circular(
                                10.0) //                 <--- border radius here
                            ),
                      ),
                      width: platformWidth / 2,
                      child: TextFormField(
                        controller: nameController,
                        style: const TextStyle(color: Colors.white),
                        decoration: const InputDecoration(
                            icon: Icon(
                              Icons.account_box_rounded,
                              color: Colors.blue,
                            ),
                            border: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.white)),
                            labelText: 'Name',
                            labelStyle: TextStyle(color: Colors.blue),
                            hintText: 'Enter your full name'),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 15, bottom: 0),
                    child: Container(
                      height: 50,
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.1),
                        border:
                            Border.all(color: Colors.white.withOpacity(0.1)),
                        borderRadius: const BorderRadius.all(Radius.circular(
                                10.0) //                 <--- border radius here
                            ),
                      ),
                      width: platformWidth / 2,
                      child: TextFormField(
                        controller: mobileController,
                        style: const TextStyle(color: Colors.white),
                        decoration: const InputDecoration(
                            icon: Icon(
                              Icons.call_outlined,
                              color: Colors.blue,
                            ),
                            border: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.white)),
                            labelText: 'Mobile',
                            labelStyle: TextStyle(color: Colors.blue),
                            hintText: 'Enter your mobile number'),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 15, bottom: 0),
                    child: Container(
                      height: 50,
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.1),
                        border:
                            Border.all(color: Colors.white.withOpacity(0.1)),
                        borderRadius: const BorderRadius.all(Radius.circular(
                                10.0) //                 <--- border radius here
                            ),
                      ),
                      width: platformWidth / 2,
                      child: TextFormField(
                        controller: emailController,
                        style: const TextStyle(color: Colors.white),
                        decoration: const InputDecoration(
                            icon: Icon(
                              Icons.email_outlined,
                              color: Colors.blue,
                            ),
                            border: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.white)),
                            labelText: 'Email',
                            labelStyle: TextStyle(color: Colors.blue),
                            hintText: 'Enter valid email id as abc@gmail.com'),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 15, bottom: 0),
                    //padding: EdgeInsets.symmetric(horizontal: 15),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.1),
                        border:
                            Border.all(color: Colors.white.withOpacity(0.1)),
                        borderRadius: const BorderRadius.all(Radius.circular(
                                10.0) //                 <--- border radius here
                            ),
                      ),
                      height: 50,
                      width: platformWidth / 2,
                      child: TextFormField(
                        controller: passController,
                        style: const TextStyle(color: Colors.white),
                        obscureText: true,
                        decoration: const InputDecoration(
                            icon: Icon(
                              Icons.password_sharp,
                              color: Colors.blue,
                            ),
                            border: OutlineInputBorder(),
                            labelText: 'Password',
                            labelStyle: TextStyle(color: Colors.blue),
                            hintText: 'Enter secure password'),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 10, bottom: 0),
                    //padding: EdgeInsets.symmetric(horizontal: 15),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.1),
                        border:
                            Border.all(color: Colors.white.withOpacity(0.1)),
                        borderRadius: const BorderRadius.all(Radius.circular(
                                10.0) //                 <--- border radius here
                            ),
                      ),
                      height: 155,
                      width: platformWidth / 2,
                      child: dateTime(context),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 15, bottom: 0),
                    //padding: EdgeInsets.symmetric(horizontal: 15),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.1),
                        border:
                            Border.all(color: Colors.white.withOpacity(0.1)),
                        borderRadius: const BorderRadius.all(Radius.circular(
                                10.0) //                 <--- border radius here
                            ),
                      ),
                      height: 100,
                      width: platformWidth / 2,
                      child: RadioGroup(context),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 15),
                    child: Container(
                      height: 50,
                      width: platformWidth / 2,
                      decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(20)),
                      child: FlatButton(
                        onPressed: () {
                          setState(() {
                            name = nameController.text;
                            mobile = "+91-" + mobileController.text;
                            email = emailController.text;
                            password = passController.text;
                          });

                          // saveData();
                          // Navigator.push(
                          //     context,
                          //     MaterialPageRoute(
                          //         builder: (_) => Webpayment(
                          //             name: name,
                          //             email: email,
                          //             mobile: mobile)));
                        },
                        child: const Text(
                          'Register',
                          style: TextStyle(color: Colors.white, fontSize: 25),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: const Text('Existing User? Get to Login',
                        style: TextStyle(color: Colors.white, fontSize: 20)),
                  )
                ],
              ),
            )),
      ),
    );
  }

// Date and time
  Widget dateTime(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Container(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              RaisedButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.0)),
                elevation: 4.0,
                onPressed: () {
                  DatePicker.showDatePicker(context,
                      theme: const DatePickerTheme(
                        containerHeight: 125.0,
                      ),
                      showTitleActions: true,
                      minTime: DateTime(1980, 1, 1),
                      maxTime: DateTime(2020, 12, 31), onConfirm: (date) {
                    print('confirm $date');

                    setState(() {
                      _date = '${date.year} - ${date.month} - ${date.day}';
                    });
                    print('date selected $_date');
                  }, currentTime: DateTime.now(), locale: LocaleType.en);
                },
                child: Container(
                  alignment: Alignment.center,
                  height: 50.0,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Container(
                            child: Row(
                              children: <Widget>[
                                const Icon(
                                  Icons.date_range,
                                  size: 18.0,
                                  color: Colors.teal,
                                ),
                                Text(
                                  " $_date",
                                  style: const TextStyle(
                                      color: Colors.teal,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15.0),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                      const Text(
                        "  Change",
                        style: TextStyle(
                            color: Colors.teal,
                            fontWeight: FontWeight.bold,
                            fontSize: 15.0),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              RaisedButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.0)),
                elevation: 4.0,
                onPressed: () {
                  DatePicker.showTimePicker(context,
                      theme: const DatePickerTheme(
                        containerHeight: 125.0,
                      ),
                      showTitleActions: true, onConfirm: (time) {
                    print('confirm $time');

                    setState(() {
                      _time = '${time.hour} : ${time.minute} : ${time.second}';
                    });
                    print('time selected: $_time');
                  }, currentTime: DateTime.now(), locale: LocaleType.en);
                  setState(() {});
                },
                child: Container(
                  alignment: Alignment.center,
                  height: 50.0,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Container(
                            child: Row(
                              children: <Widget>[
                                const Icon(
                                  Icons.access_time,
                                  size: 15.0,
                                  color: Colors.teal,
                                ),
                                Text(
                                  " $_time",
                                  style: const TextStyle(
                                      color: Colors.teal,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15.0),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                      const Text(
                        "  Change",
                        style: TextStyle(
                            color: Colors.teal,
                            fontWeight: FontWeight.bold,
                            fontSize: 18.0),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  // Radio button
  Widget RadioGroup(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              'Selected Gender Item = ' + radioButtonItem,
              style: const TextStyle(fontSize: 18, color: Colors.blue),
            )),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Radio(
              value: 1,
              groupValue: id,
              onChanged: (val) {
                setState(() {
                  radioButtonItem = 'Male';
                  id = 1;
                });
              },
            ),
            const Text(
              'Male',
              style: TextStyle(fontSize: 15.0, color: Colors.white),
            ),
            Radio(
              value: 2,
              groupValue: id,
              onChanged: (val) {
                setState(() {
                  radioButtonItem = 'Female';
                  id = 2;
                });
              },
            ),
            const Text(
              'Female',
              style: TextStyle(fontSize: 15.0, color: Colors.white),
            ),
          ],
        ),
      ],
    );
  }
}
