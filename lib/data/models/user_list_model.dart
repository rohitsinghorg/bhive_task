import 'dart:convert';

List<User> userModelFromJson(String str) =>
    List<User>.from(json.decode(str).map((x) => User.fromJson(x)));

String userModelToJson(List<User> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class User {
  User({
    this.userId,
    this.referredBy,
  });

  String? userId;
  String? referredBy;

  factory User.fromJson(Map<String, dynamic> json) => User(
        userId: json["user_id"] == null ? null : json["user_id"],
        referredBy: json["referred_by"] == null ? null : json["referred_by"],
      );

  Map<String, dynamic> toJson() => {
        "user_id": userId == null ? null : userId,
        "referred_by": referredBy == null ? null : referredBy,
      };
}
