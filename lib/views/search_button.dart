
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import '../screens/search_page.dart';
import 'package:avtoraqam/services/all_packages.dart';

class SearchButton extends StatelessWidget {
  const SearchButton({super.key});

  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      height: 50,
      width: 300,
      child: ColoredBox(
        color: Colors.white.withOpacity(0.2),
        child: InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  CupertinoPageRoute(
                      builder: (context) => const SearchPage()));
            },
            child:  Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                KTIcons.search,
                const SizedBox(
                  width: 10,
                ),
                Text(
                  KTStrings.search.tr(),
                  style: const TextStyle(
                      fontSize: 30,
                      color: Colors.white,
                      fontWeight: FontWeight.w400),
                ),
              ],
            )),
      ),
    );
  }
}
