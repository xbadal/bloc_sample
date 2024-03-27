import 'dart:ui';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';

class BaseCubit extends Cubit<Locale> {
  BaseCubit() : super(Locale('en'));

  void changeStartLang() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? langCode = prefs.getString('lang');
    if (langCode != null) {
      emit(Locale(langCode, ''));
    }
  }

  void changeLang(context, String data) async {
    emit(Locale(data));
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString('lang', data);
  }
}