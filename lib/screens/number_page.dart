import 'package:avtoraqam/services/all_packages.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'detail_page.dart';


class NumberPage extends StatefulWidget {
  const NumberPage({super.key});

  @override
  State<NumberPage> createState() => _NumberPageState();
}

class _NumberPageState extends State<NumberPage> {
  bool check = false;
  int index = 0;
  List<bool> checkText = List.generate(KTStrings.allRegion.length, (index) => false);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 2,
        backgroundColor: KTColors.blue71,
        centerTitle: true,
        title:  const Text(
          KTStrings.avtoraqam,
          style: TextStyle(fontSize: 28, fontWeight: FontWeight.w300,color: CupertinoColors.white),
        ),
      ),
      body: ListView.builder(
        itemCount: KTStrings.allRegion.length,
          physics: const BouncingScrollPhysics(),
          padding: const EdgeInsets.only(bottom: 20),
          itemBuilder: (context,i){
          final data = KTStrings.allRegion[i];
            return Padding(
              padding: const EdgeInsets.only(top: 15),
              child: GestureDetector(
                onTap: (){
                  checkText[i] = !checkText[i];
                  setState(() {});
                },
                child: Column(
                  children: [
                    SizedBox(
                      width: double.infinity,
                      child: SizedBox(
                        height: 45,
                        width: double.infinity,
                        child: ColoredBox(
                            color: KTColors.blue71,
                            child: Padding(
                              padding: const EdgeInsets.only(left: 20),
                              child: Row(
                                children: [
                                  checkText[i]?
                                  KTIcons.removeIcon : KTIcons.addIcon,
                                  const SizedBox(width: 20,),
                                  Text(data.tr(),style: const TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.w300),),
                                ],
                              ),
                            )
                        ),
                      ),
                    ),
                    if(checkText[i])
                      checkText[i] ?
                    Column(
                      children: [
                        for(int item = 0;item < CarNumberModel.mockData.length;item++)
                        GestureDetector(
                          onTap: (){
                            Navigator.push(context, CupertinoPageRoute(builder: (context) =>  DetailPage(numberModel: CarNumberModel.mockData[item],)));
                          },
                          child: KTNumberListWidget(
                            mockData: CarNumberModel.mockData[item],
                            i: i,
                            checkText: checkText[i],
                          ),
                        ),
                      ],
                    ) : const SizedBox.shrink(),
                  ],
                ),
              ),
            );
          }
      ),
    );
  }
}


