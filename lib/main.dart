import 'package:avtoraqam/cubit/navigation_cubit/navigation_cubit.dart';
import 'package:avtoraqam/cubit/region_cubit/region_cubit.dart';
import 'package:avtoraqam/services/strings.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import 'app/app.dart';
import 'domain/model.dart';
/// fonts
/// localization

final regionCubit = RegionCubit();
final navigationCubit = NavigationCubit();
void main()async{
  WidgetsFlutterBinding.ensureInitialized();
  await  EasyLocalization.ensureInitialized();
  runApp(
    EasyLocalization(
      supportedLocales: const [
        Locale('ru', 'RU'),
        Locale('uz', 'UZ'),
      ],
      path: 'assets/localization',
      fallbackLocale: const Locale('ru', 'RU'),
      child: const App(),
    ),
  );
}