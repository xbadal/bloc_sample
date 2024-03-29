import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../constant/app_keys.dart';
import 'base_state.dart';

class BaseCubit extends Cubit<BaseState> {
  BaseCubit() : super(const BaseState());


  init(){
    changeStartLang();
    changeStartTheme();
  }
  void changeStartLang() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? langCode = prefs.getString(kkAppLanguageKey);
    if (langCode != null) {
      emit(state.copyWith(defaultLanguage: langCode));
    }
  }

  void changeStartTheme() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? langCode = prefs.getString(kkAppThemeKey);
    if (langCode != null) {
      emit(state.copyWith(defaultLanguage: langCode));
    }
  }

  void changeLang(String data) async {
    emit(state.copyWith(defaultLanguage: data));
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString(kkAppLanguageKey, data);
  }

  void changeTheme(String data) async {
    emit(state.copyWith(defaultTheme: ''));
    emit(state.copyWith(defaultTheme: data));
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString(kkAppThemeKey, data);
  }

}
