
import 'package:avtoraqam/services/all_packages.dart';
import 'package:avtoraqam/services/strings.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

sealed class KTIcons{

  static List<BottomNavigationBarItem> buildBottomNavBarItems() {
    return  [
      BottomNavigationBarItem(
          icon: const Icon(Icons.home_outlined),
          label: KTStrings.glavnnaya.tr()),
      BottomNavigationBarItem(
        icon: const Icon(Icons.format_list_bulleted_outlined),
        label: KTStrings.number.tr(),
      ),
      BottomNavigationBarItem(
        icon: const Icon(Icons.more_horiz),
        label: KTStrings.other.tr(),
      ),
    ];
  }
  static const Icon location = Icon(Icons.location_on_outlined,color: Colors.white,size: 30,);
  static const Icon search = Icon(CupertinoIcons.search,size: 28,color: Colors.white,);
  static const Icon downIcon = Icon(CupertinoIcons.arrow_down_left_circle,size: 20,);
  static const Icon upIcon = Icon(CupertinoIcons.arrow_up_right_circle,size: 20,);
  static const Icon star = Icon(CupertinoIcons.star);
  static const Icon trs = Icon(Icons.g_translate_outlined);
  static const Icon gavel = Icon(Icons.gavel_outlined,color: Colors.white,size: 25,);
  static const Icon connect = Icon(Icons.import_export_sharp);
  static const Icon calendar = Icon(Icons.calendar_month_outlined,color: Colors.white,size: 25,);
  static const Icon refresh = Icon(CupertinoIcons.refresh);
  static final Icon circleIcon =   Icon(Icons.circle,color: Colors.black.withOpacity(0.8),size: 10,);
  static const Icon removeIcon =  Icon(Icons.remove,color: Colors.white,);
  static const Icon addIcon =  Icon(Icons.add,color: Colors.white,);
  static const Icon iconAndroid =  Icon(Icons.arrow_back_outlined);
  static const Icon iconIos =  Icon(Icons.arrow_back_ios);

  static const Icon checkIcon =  Icon(Icons.check,color: Colors.red,);
  static const Icon checkIconBlack =  Icon(Icons.check,color: Colors.black,);
  static const Icon checkIconButton =  Icon(CupertinoIcons.checkmark_rectangle_fill,color: KTColors.blue71,);
  static const Icon upCallIcon =  Icon(Icons.call_made_outlined,color: KTColors.blue71,);
  static const Icon callMissedIcon =  Icon(Icons.call_missed_outgoing,color: KTColors.green72,);
  static const Icon cloudUpload =  Icon(Icons.cloud_upload,color: Colors.blue,);
  static const Icon attachMoney =  Icon(Icons.attach_money,color: Colors.red,);
  static const Icon commsiyIcon = Icon(Icons.file_present,color: KTColors.green72,);
  static const Icon cityIcon = Icon(Icons.location_city,color: KTColors.blue71,);
  static const Icon earthIcon = Icon(CupertinoIcons.globe,color: KTColors.blue71,);
  static const Icon calendarBlue = Icon(Icons.calendar_month_outlined,color: KTColors.blue71,);
 static const Icon settings = Icon(CupertinoIcons.settings,color: KTColors.blue71, size: 35,);
 static const Icon logout =Icon(Icons.logout, color: KTColors.blue71,size: 35,);
}