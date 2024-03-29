import 'package:bloc_sample/app/base_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../../../app/base_cubit.dart';
import '../../../constant/app_constants.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => BaseCubit()..init(),
      child: BlocBuilder<BaseCubit, BaseState>(builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            actions: [
              IconButton(
                onPressed: () {
                  BlocProvider.of<BaseCubit>(context).changeLang(appLanguagePt);
                },
                icon: const Icon(Icons.dark_mode),
              )
            ],
          ),
          body: Center(child: Text(AppLocalizations.of(context)!.hello_world)),
        );
      }),
    );
  }
}
