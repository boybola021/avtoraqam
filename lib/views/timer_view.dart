

import 'package:avtoraqam/services/all_packages.dart';

class KTTimerViewWidget extends StatelessWidget {
  final String days;
  final String hours;
  final String minutes;
  final String seconds;
  const KTTimerViewWidget({super.key,
    required this.days,
    required this.hours,
    required this.minutes,
    required this.seconds,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(days,style: const TextStyle(fontSize: 62,fontWeight: FontWeight.w500),),
        const Column(
          children: [
            Text(":",style: TextStyle(fontSize: 70,fontWeight: FontWeight.w500),),
            SizedBox(height: 5,),
          ],
        ),
        /// # hour
        Text(hours,style: const TextStyle(fontSize: 62,fontWeight: FontWeight.w500),),
        const Column(
          children: [
            Text(":",style: TextStyle(fontSize: 70,fontWeight: FontWeight.w500),),
            SizedBox(height: 5,),
          ],
        ),
        /// #minuts
        Text(minutes,style: const TextStyle(fontSize: 62,fontWeight: FontWeight.w500),),
        const Column(
          children: [
            Text(":",style: TextStyle(fontSize: 70,fontWeight: FontWeight.w500),),
            SizedBox(height: 5,),
          ],
        ),
        /// second
        Text(seconds,style: const TextStyle(fontSize: 62,fontWeight: FontWeight.w500),),
      ],
    );
  }
}
