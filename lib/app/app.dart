import 'package:avtoraqam/screens/main_page.dart';
import 'package:avtoraqam/screens/number_page.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:avtoraqam/services/all_packages.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
     providers: [
       BlocProvider(create: (context) => regionCubit),
       BlocProvider(create: (context) => navigationCubit),
     ],
      child: MaterialApp(
        localizationsDelegates: context.localizationDelegates,
        supportedLocales: context.supportedLocales,
        locale: context.locale,
        debugShowCheckedModeBanner: false,
        home: const MainPage(),
      ),
    );
  }
}
