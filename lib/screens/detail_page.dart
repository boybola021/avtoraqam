import 'dart:async';
import 'dart:io';
import 'package:avtoraqam/services/all_packages.dart';
import 'package:avtoraqam/views/timer_view.dart';
import 'package:easy_localization/easy_localization.dart';
import '../views/car_number_info.dart';

class DetailPage extends StatefulWidget {
  final CarNumberModel numberModel;
  const DetailPage({super.key,required this.numberModel});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  Duration _currentTime = const Duration();

  @override
  void initState() {
    super.initState();
    _startTimer();
  }

  void _startTimer() {
    int hour = widget.numberModel.time.hour;
    int minutes = widget.numberModel.time.minute;
    _currentTime = Duration(days: widget.numberModel.endDate.day,hours: hour, minutes: minutes, seconds: 0);
    Timer.periodic(const Duration(seconds: 1), (timer) {
      if(_currentTime > const Duration()) {
        setState(() {
          _currentTime -= const Duration(seconds: 1);
        });
      } else {
        timer.cancel();
      }
    });
  }


  @override
  Widget build(BuildContext context) {
    String days = _currentTime.inDays.toString() ?? '0';
    String hours = (_currentTime.inHours % 24).toString().padLeft(2, '0');
    String minutes = (_currentTime.inMinutes % 60).toString().padLeft(2, '0');
    String seconds = (_currentTime.inSeconds % 60).toString().padLeft(2, '0');
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: KTColors.blue71,
        leading: IconButton(
          onPressed: (){
            Navigator.pop(context);
          },
         icon: Platform.isIOS ? KTIcons.iconIos : KTIcons.iconAndroid,
        ),
        centerTitle: true,
        title: Text(widget.numberModel.id.toString(),style: const TextStyle(color: Colors.white,fontSize: 20),),
      ),
      body: ListView(
        physics: const BouncingScrollPhysics(),
        children: [
          /// #image
          Center(
            child: Image.asset(widget.numberModel.image,height: 100,width: 300,),),
          /// duration
          KTTimerViewWidget(
              days: days,
              hours: hours,
              minutes: minutes,
              seconds: seconds,
          ),
         /// #info container
         SizedBox(
           height: 40,
           width: MediaQuery.sizeOf(context).width,
           child: ColoredBox(
             color: KTColors.blue71,
             child: Center(
                 child:  Text("Информация".tr(),style: const TextStyle(fontSize: 20,color: Colors.white),)),
           ),
         ),
          /// #info custom widget
          KTInfoCarNumberWidget(numberModel: widget.numberModel),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
               ElevatedButton(
                   onPressed: (){},
                 style: ElevatedButton.styleFrom(
                   backgroundColor: KTColors.blue71,
                   alignment: Alignment.center,
                   maximumSize: const Size(165, 40),
                   minimumSize: const Size(165, 40),
                 ),
                   child:  Text(KTStrings.podatiZayavku.tr(),style: const TextStyle(fontSize: 17,fontWeight: FontWeight.w300,color: Colors.white),),
               ),
                ElevatedButton(
                  onPressed: (){},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: KTColors.green114,
                    alignment: Alignment.center,
                    maximumSize: const Size(165, 40),
                    minimumSize: const Size(165, 40),
                  ),
                  child:  Text(KTStrings.podrobnee.tr(),style: const TextStyle(fontSize: 17,fontWeight: FontWeight.w300,color: Colors.white),),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
