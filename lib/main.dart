import 'package:bloc_sample/app/base_cubit.dart';
import 'package:bloc_sample/app/base_state.dart';
import 'package:bloc_sample/ui/pages/splash/splash_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:logger/logger.dart';

import 'constant/app_constants.dart';

final logger = Logger();

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => BaseCubit(),
      child: BlocBuilder<BaseCubit, BaseState>(builder: (context, state) {
        return MaterialApp(
          title: 'Flutter Demo',
          debugShowCheckedModeBanner: false,
          theme: ThemeData.light(),
          darkTheme: ThemeData.dark(),
          locale: Locale(state.defaultLanguage),
          themeMode: state.defaultTheme == themeTypeDark ? ThemeMode.dark : ThemeMode.light,
          // Decides which theme to show, light or dark.
          localizationsDelegates: const [
            AppLocalizations.delegate,
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],
          supportedLocales: const [
            Locale(appLanguageEn),
            Locale(appLanguagePt),
          ],
          home: const SplashView(),
        );
      }),
    );
  }
}
