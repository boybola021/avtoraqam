import 'package:avtoraqam/services/all_packages.dart';
import 'package:easy_localization/easy_localization.dart';

class KTNumberListWidget extends StatelessWidget {
  final CarNumberModel mockData;
  final int i;
  final bool checkText;
  const KTNumberListWidget({super.key,required this.mockData,required this.i,required this.checkText});

  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.only(left: 20,right: 20,top: 10),
        child: Row(
          children: [
            SizedBox(
              height: 155,
              width: 80,
              child: DecoratedBox(
                decoration: const BoxDecoration(
                  color: KTColors.blue71,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    bottomLeft: Radius.circular(10),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          KTIcons.gavel,
                          const SizedBox(height: 5,),
                          Text(mockData.id.toString(),style: const TextStyle(color: Colors.white,fontSize: 15),),
                        ],
                      ),
                      Column(
                        children: [
                          KTIcons.calendar,
                          const SizedBox(height: 5,),
                          Text(
                            mockData.time.toString().substring(0,19),
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              height: 155,
              width: MediaQuery.sizeOf(context).width / 1.5,
              decoration:  BoxDecoration(
                borderRadius: const BorderRadius.only(
                  topRight: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                ),
                border: Border.all(color: KTColors.blue71,width: 1.5),
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 5,left: 25),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset(mockData.image,height: 50,width: 180,),
                        const SizedBox(height: 5,),
                        Row(
                          children: [
                            KTIcons.downIcon,
                            const SizedBox(width: 15,),
                            Text(mockData.nextMoney.toString(),style: const TextStyle(fontSize: 18,fontWeight: FontWeight.w500),),
                          ],
                        ),
                        const SizedBox(height: 8,),
                         Row(
                          children: [
                            KTIcons.upIcon,
                            const SizedBox(width: 15,),
                            Text(KTStrings.nePodano.tr(),style: const TextStyle(fontSize: 18,fontWeight: FontWeight.w500),),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 10,top: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(checkText? KTStrings.allRegion[i].tr() : "no region",style: const TextStyle(fontSize: 17),),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
