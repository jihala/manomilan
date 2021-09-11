// api
// import 'dart:convert';

// import 'package:manomilan/models/user.dart';

// import 'package:http/http.dart' as http;

// Future<UserModel> login(email, password) async {
//   var url = "https://613c7c60270b96001798b160.mockapi.io/jiwhala/api/login";
//   var response = await http
//       .post(Uri.parse(url), body: {"user_email": email, "password": "123456"});

//   if (response.statusCode == 201) {
//     var body = jsonDecode(response.body);

//     print(body);

//     var userList = UserModel.fromJson(body);

//     return userList;
//   } else {
//     print(response.statusCode);
//   }
//   throw Exception("Error on server");
// }

// 
// 
// model
// 
//class UserModel {
//   UserModel({
//     required this.userId,
//     required this.userName,
//     required this.userEmail,
//     required this.mobile,
//     required this.password,
//   });

//   String userId;
//   String userName;
//   String userEmail;
//   String mobile;
//   String password;

//   factory UserModel.fromJson(Map<String, dynamic> json) => UserModel(
//         userId: json["user_id"],
//         userName: json["user_name"],
//         userEmail: json["user_email"],
//         mobile: json["mobile"],
//         password: json["password"],
//       );

//   Map<String, dynamic> toJson() => {
//         "user_id": userId,
//         "user_name": userName,
//         "user_email": userEmail,
//         "mobile": mobile,
//         "password": password,
//       };
// }

// 
// 
// body:
// FutureBuilder(
//             builder: (BuildContext context, AsyncSnapshot<UserModel> snapshot) {
//               if (snapshot.hasData) {
//                 var user = snapshot.data!;

//                 return InkWell(
//                   onTap: () {
//                     print(user.userId);
//                   },
//                   child: Padding(
//                     padding:
//                         const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
//                     child: Container(
//                         height: 150, width: 310, child: Text(user.userEmail)),
//                   ),
//                 );
//               }
//               return Center(child: CircularProgressIndicator());
//             },
//             future: login(email, password),
//           ),