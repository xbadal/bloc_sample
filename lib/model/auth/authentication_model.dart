import '../base/base_model.dart';
import '../user/user.dart';

class AuthenticationModel extends BaseModel {
  User? user;

  AuthenticationModel({this.user});

  AuthenticationModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    message = json['message'];
    code = json['code'];
    user = json['data'] != null ? User.fromJson(json['data']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['status'] = status;
    data['message'] = message;
    data['code'] = code;
    if (user != null) {
      data['data'] = user?.toJson();
    }
    return data;
  }
}
