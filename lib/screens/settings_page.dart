import 'dart:io';
import 'package:avtoraqam/services/all_packages.dart';
import 'package:easy_localization/easy_localization.dart';

class SettingPage extends StatelessWidget {
  const SettingPage({super.key});

  static List<String> list = ["Русский", "Узбекиский"];
  static bool check = false;
  static int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: KTColors.blue71,
        centerTitle: true,
        title:  Text(
          KTStrings.nastroyki.tr(),
          style: const TextStyle(fontSize: 28, fontWeight: FontWeight.w400),
        ),
        leading: IconButton(
          onPressed: (){
            Navigator.pop(context);
          },
          icon: Platform.isIOS ? KTIcons.iconIos : KTIcons.iconAndroid,
        ),
      ),
      body: Column(
        children: [
          for(var i = 0;i < list.length;i++)
            Column(
              children: [
                TextButton(
                  style: TextButton.styleFrom(
                    foregroundColor: KTColors.blue71,
                  ),
                  onPressed: () {
                    if (context.locale == const Locale("ru", "RU")) {
                      context.setLocale(const Locale("uz", "UZ"));
                      index = 1;
                    } else if (context.locale == const Locale("uz", "UZ")) {
                      index = 0;
                      context.setLocale(const Locale("ru", "RU"));
                    }
                  },
                  child: SizedBox(
                    height: 40,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            list[i].tr(),
                            style: const TextStyle(
                                fontSize: 20,
                                color: Colors.black
                            ),
                          ),
                          index == list.indexOf(list[i])? KTIcons.checkIconBlack : const SizedBox.shrink(),
                        ],
                      ),
                    ),
                  ),
                ),
                if(i == 0)const Divider(color: Colors.grey,thickness: 0.5,),
              ],
            ),
          const Divider(color: Colors.grey,thickness: 0.5,),
        ],
      ),
    );
  }
}
