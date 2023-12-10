
import 'package:flutter/material.dart';
import '../services/fonts.dart';
import '../services/icons.dart';
import 'home_page_idenficators.dart';

class KTRegionNumberSelected extends StatelessWidget {
  final VoidCallback dialogButton;
  const KTRegionNumberSelected({super.key,required this.dialogButton});

  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      height: 65,
      width: 300,
      child: Row(
        children: [
          /// #Region number
          GestureDetector(
            onTap: dialogButton,
            child: SizedBox(
              height: 65,
              width: 65,
              child: DecoratedBox(
                decoration:  BoxDecoration(
                  color:  Colors.white,
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(10),
                    bottomLeft: Radius.circular(10),
                  ),
                  border: Border(
                    left: BorderSide(color: Colors.black.withOpacity(0.8),width: 4),
                    top: BorderSide(color: Colors.black.withOpacity(0.8),width: 4),
                    right: BorderSide(color: Colors.black.withOpacity(0.8),width: 0),
                    bottom: BorderSide(color: Colors.black.withOpacity(0.8),width: 4),
                  ),
                ),
                child:  Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  child: Row(
                    children: [
                      KTIcons.circleIcon,
                      const Spacer(),
                      Text(
                        HomePageProvideItem.selectedNumber,
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                        fontSize: 40,
                        fontFamily: KTFonts.roadNumberFonts,
                      ),
                      ),
                      const Spacer(),
                    ],
                  ),
                ),
              ),
            ),
          ),
          /// #TextField
          Container(
            width: 230,
            padding: const EdgeInsets.only(right: 3,),
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color:  Colors.white,
              borderRadius: const BorderRadius.only(
                topRight: Radius.circular(10),
                bottomRight: Radius.circular(10),
              ),
              border: Border.all(color: Colors.black,width: 4),
            ),
            child: Stack(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset("assets/images/flag_uzb.png",height: 20,width: 20,),
                        KTIcons.circleIcon,
                        Text("UZ",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600,color: Colors.blue.shade300),),
                      ],
                    )
                  ],
                ),
                Container(
                  width: 195,
                  alignment: Alignment.center,
                  child: TextField(
                    controller: HomePageProvideItem.controller,
                    textAlignVertical: TextAlignVertical.bottom,
                    textCapitalization: TextCapitalization.words,
                    style:  const TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.w600,
                    ),
                    onChanged: (value) {
                      HomePageProvideItem.controller.text = value.toUpperCase();
                    },
                    inputFormatters: [
                      HomePageProvideItem.index == 1? HomePageProvideItem.maskFormatterFiz : HomePageProvideItem.maskFormatterYur,
                    ],
                    decoration:  InputDecoration(
                      focusedBorder: const OutlineInputBorder(
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(10),
                            bottomRight: Radius.circular(10),
                          ),
                          borderSide: BorderSide.none
                      ),
                      enabledBorder: const OutlineInputBorder(
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(10),
                          bottomRight: Radius.circular(10),
                        ),
                        borderSide: BorderSide.none,
                      ),
                      // prefixText: prefixText,
                      hintText: HomePageProvideItem.index == 1? "A 555 AA" : "555 AAA",
                      hintStyle: TextStyle(fontSize: 40,color: Colors.grey.shade500),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
