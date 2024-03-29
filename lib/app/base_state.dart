import 'package:equatable/equatable.dart';

import '../constant/app_constants.dart';

class BaseState extends Equatable {
  final String defaultTheme;
  final String defaultLanguage;

  const BaseState({
    this.defaultTheme = themeTypeLight,
    this.defaultLanguage = appLanguageEn,
  });

  BaseState copyWith({
    String? defaultTheme,
    String? defaultLanguage,
  }) {
    return BaseState(
      defaultTheme: defaultTheme ?? this.defaultTheme,
      defaultLanguage: defaultLanguage ?? this.defaultLanguage,
    );
  }

  @override
  List<Object?> get props => [defaultTheme, defaultLanguage];
}
