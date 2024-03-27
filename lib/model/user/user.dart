import 'package:json_annotation/json_annotation.dart';

part 'user.g.dart';

@JsonSerializable()
class User {
  String? userid;
  String? fullname;
  String? email;
  String? phonenumber;
  String? userlogo;
  String? sessionKey;
  int? isLoggedIn;

  User({this.userid, this.fullname, this.email, this.phonenumber, this.userlogo, this.sessionKey, this.isLoggedIn});

  User.fromJson(Map<String, dynamic> json) {
    userid = json['userid'];
    fullname = json['fullname'];
    email = json['email'];
    phonenumber = json['phonenumber'];
    userlogo = json['userlogo'];
    sessionKey = json['session_key'];
    isLoggedIn = json['is_logged_in'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['userid'] = this.userid;
    data['fullname'] = this.fullname;
    data['email'] = this.email;
    data['phonenumber'] = this.phonenumber;
    data['userlogo'] = this.userlogo;
    data['session_key'] = this.sessionKey;
    data['is_logged_in'] = this.isLoggedIn;
    return data;
  }
}
