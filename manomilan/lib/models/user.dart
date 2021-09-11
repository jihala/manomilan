class UserModel {
  UserModel({
    required this.userId,
    required this.userName,
    required this.userEmail,
    required this.mobile,
    required this.password,
  });

  String userId;
  String userName;
  String userEmail;
  String mobile;
  String password;

  factory UserModel.fromJson(Map<String, dynamic> json) => UserModel(
        userId: json["user_id"],
        userName: json["user_name"],
        userEmail: json["user_email"],
        mobile: json["mobile"],
        password: json["password"],
      );

  Map<String, dynamic> toJson() => {
        "user_id": userId,
        "user_name": userName,
        "user_email": userEmail,
        "mobile": mobile,
        "password": password,
      };
}
