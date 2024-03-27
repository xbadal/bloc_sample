// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

User _$UserFromJson(Map<String, dynamic> json) => User(
      userid: json['userid'] as String?,
      fullname: json['fullname'] as String?,
      email: json['email'] as String?,
      phonenumber: json['phonenumber'] as String?,
      userlogo: json['userlogo'] as String?,
      sessionKey: json['sessionKey'] as String?,
      isLoggedIn: json['isLoggedIn'] as int?,
    );

Map<String, dynamic> _$UserToJson(User instance) => <String, dynamic>{
      'userid': instance.userid,
      'fullname': instance.fullname,
      'email': instance.email,
      'phonenumber': instance.phonenumber,
      'userlogo': instance.userlogo,
      'sessionKey': instance.sessionKey,
      'isLoggedIn': instance.isLoggedIn,
    };
