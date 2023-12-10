import 'package:avtoraqam/screens/settings_page.dart';
import 'package:avtoraqam/services/all_packages.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';


class OtherPage extends StatelessWidget {
  const OtherPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 2,
          backgroundColor: KTColors.blue71,
          centerTitle: true,
          title: const Text(
            KTStrings.nastroyki,
            style: TextStyle(fontSize: 28, fontWeight: FontWeight.w400),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.only(left: 15, top: 10),
          child: Column(
            children: [
              TextButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      CupertinoPageRoute(
                          builder: (context) => const SettingPage()));
                },
                style: TextButton.styleFrom(
                  foregroundColor: KTColors.blue71,
                ),
                child: Row(
                  children: [
                     KTIcons.settings,
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      KTStrings.nastroyki.tr(),
                      style: const TextStyle(fontSize: 25, color: Colors.black),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              TextButton(
                style: TextButton.styleFrom(
                  foregroundColor: KTColors.blue71,
                ),
                onPressed: () {},
                child: Row(
                  children: [
                     KTIcons.logout,
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      KTStrings.logout.tr(),
                      style: const TextStyle(fontSize: 25, color: Colors.black),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
    );
  }
}
