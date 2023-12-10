

import 'dart:math';

import 'package:avtoraqam/services/all_packages.dart';

class CarNumberModel{
  int id;
  String image;
  String regionName;
  bool notSubmitted;
  DateTime time;
  DateTime endDate;
  String startMoney;
  String nextMoney;
  String commisyMoney;
  String depozidMoney;
  String allMoney;

  CarNumberModel({
    required this.id,
    required this.image,
    required this.regionName,
    required this.notSubmitted,
    required this.time,
    required this.endDate,
    required this.startMoney,
    required this.nextMoney,
    required this.commisyMoney,
    required this.depozidMoney,
    required this.allMoney
  });
  factory CarNumberModel.fromJson(Map<String,Object>json){
    return CarNumberModel(
        id: json["id"] as int,
        image: json["image"] as String,
        regionName: json["regionName"] as String,
        notSubmitted: json["notSubmitted"] as bool,
        time: DateTime.parse(json["time"] as String),
        endDate: DateTime.parse(json["endDate"] as String),
        nextMoney: json["nextMoney"] as String,
        startMoney: json["startMoney"] as String,
        commisyMoney: json["commisyMoney"] as String,
        depozidMoney: json["depozidMoney"] as String,
        allMoney: json["allMoney"] as String,
    );
  }
  static List<CarNumberModel> mockData = [
    CarNumberModel(
        id: 1234567,
        image: "assets/images/toshkent_sh.webp",
        regionName: KTStrings.gTashkent,
        notSubmitted: false,
        time: DateTime.now(),
        endDate: DateTime.now().add(const Duration(days: 5)),
        startMoney: "1 700 000",
        nextMoney: "1 717 000",
        commisyMoney: "85 850",
        depozidMoney: "170 000",
        allMoney: "225 850",
    ),
     CarNumberModel(
        id: 2234567,
        image: "assets/images/toshkent_sh.webp",
        regionName: KTStrings.gTashkent,
        notSubmitted: false,
        time: DateTime.now(),
        endDate:  DateTime.now().add(const Duration(days: 5)),
        startMoney: "1 700 000",
        nextMoney: "1 717 000",
        commisyMoney: "85 850",
        depozidMoney: "170 000",
        allMoney: "225 850",
    ),
    CarNumberModel(
        id: 4234567,
        image: "assets/images/toshkent_sh.webp",
        regionName: KTStrings.gTashkent,
        notSubmitted: false,
        time: DateTime.now(),
        endDate:  DateTime.now().add(const Duration(days: 5)),
        startMoney: "1 700 000",
        nextMoney: "1 717 000",
        commisyMoney: "85 850",
        depozidMoney: "170 000",
        allMoney: "225 850",
    ),
     CarNumberModel(
        id: 3234567,
        image: "assets/images/toshkent_sh.webp",
        regionName: KTStrings.gTashkent,
        notSubmitted: false,
        time: DateTime.now(),
        endDate:  DateTime.now().add(const Duration(days: 5)),
        startMoney: "1 700 000",
        nextMoney: "1 717 000",
        commisyMoney: "85 850",
        depozidMoney: "170 000",
        allMoney: "225 850",
    ),
  ];
}


