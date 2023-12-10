import 'package:easy_localization/easy_localization.dart';
import '../services/all_packages.dart';

class KTInfoCarNumberWidget extends StatelessWidget {
  final CarNumberModel numberModel;
  const KTInfoCarNumberWidget({super.key,required this.numberModel});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15,right: 15,top: 10),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Divider(color: KTColors.blue71,),
          /// #start money
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  KTIcons.checkIcon,
                  const SizedBox(width: 10,),
                  Text(KTStrings.startMoney.tr(),style: const TextStyle(fontSize: 20,),),
                ],
              ),
              Text("${numberModel.startMoney} uzs",style: const TextStyle(fontSize: 20,color: Colors.red,fontWeight: FontWeight.w600),),
            ],
          ),
          const SizedBox(height: 8,),
          /// #rise narx
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  KTIcons.callMissedIcon,
                  const SizedBox(width: 10,),
                  Text(KTStrings.tekushayaSena.tr(),style: const TextStyle(fontSize: 20,),),
                ],
              ),
              const Text("0 uzs",style: TextStyle(fontSize: 20,color: KTColors.green72,fontWeight: FontWeight.w600),),
            ],
          ),
          const SizedBox(height: 8,),
          /// #next money
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  KTIcons.upCallIcon,
                  const SizedBox(width: 10,),
                  Text(KTStrings.sledushiSena.tr(),style: const TextStyle(fontSize: 20,),),
                ],
              ),
              Text("${numberModel.nextMoney} uzs",style: const TextStyle(fontSize: 20,color: KTColors.green114,fontWeight: FontWeight.w600),),
            ],
          ),
          const SizedBox(height: 8,),
          const Divider(
            color: KTColors.blue71,
            height: 0.5,
          ),
          const SizedBox(height: 3,),
          const Divider(
            color: KTColors.blue71,
            height: 0.5,
          ),
          const SizedBox(height: 3,),
          const Divider(
            color: KTColors.blue71,
            height: 0.5,
          ),
          const SizedBox(height: 8,),
          /// #commsy sbor
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  KTIcons.commsiyIcon,
                  const SizedBox(width: 10,),
                  Text(KTStrings.komissionniSbor.tr(),style: const TextStyle(fontSize: 20,),),
                ],
              ),
              Text("${numberModel.commisyMoney} uzs",style: const TextStyle(fontSize: 20,color: KTColors.green72,fontWeight: FontWeight.w600),),
            ],
          ),
          const SizedBox(height: 8,),
          /// #depozit summa
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  KTIcons.cloudUpload,
                  const  SizedBox(width: 10,),
                  Text(KTStrings.zalogovayaSumma.tr(),style: const TextStyle(fontSize: 20,),),
                ],
              ),
              Text("${numberModel.commisyMoney} uzs",style: const TextStyle(fontSize: 20,color: KTColors.green114,fontWeight: FontWeight.w600),),
            ],
          ),
          const SizedBox(height: 8,),
          /// #all summa
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  KTIcons.attachMoney,
                  const  SizedBox(width: 10,),
                  Text(KTStrings.vsego.tr(),style: const TextStyle(fontSize: 20,),),
                ],
              ),
              Text("${numberModel.allMoney} uzs",style: const TextStyle(fontSize: 20,color: Colors.red,fontWeight: FontWeight.w600),),
            ],
          ),
          const Divider(color: KTColors.blue71,),
          /// #region
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  KTIcons.earthIcon,
                  const  SizedBox(width: 10,),
                  Text(numberModel.regionName.tr(),style: const TextStyle(fontSize: 18,),),
                ],
              ),
              Row(
                children: [
                  KTIcons.cityIcon,
                  const  SizedBox(width: 10,),
                  Text(numberModel.regionName.tr(),style: const TextStyle(fontSize: 18,),),
                ],
              ),
            ],
          ),
          const SizedBox(height: 5,),
          /// #deta
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  KTIcons.calendarBlue,
                  const  SizedBox(width: 10,),
                  Text(numberModel.time.toString().substring(0,16),style: const TextStyle(fontSize: 16,),),
                ],
              ),
              Row(
                children: [
                  KTIcons.calendarBlue,
                  const  SizedBox(width: 10,),
                  Text(numberModel.time.toString().substring(0,16),style: const TextStyle(fontSize: 16,),),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
