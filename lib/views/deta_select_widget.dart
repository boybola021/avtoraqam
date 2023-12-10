

import 'package:easy_localization/easy_localization.dart';
import 'package:avtoraqam/services/all_packages.dart';

class KTDetaSelectedWidget extends StatelessWidget {
  final VoidCallback todayButton;
  final VoidCallback vstavkuButton;
  const KTDetaSelectedWidget({super.key,
    required this.todayButton,
    required this.vstavkuButton,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        GestureDetector(
          onTap:todayButton,
          child: SizedBox(
            height: 30,
            width: 150,
            child: DecoratedBox(
              decoration: BoxDecoration(
                color: HomePageProvideItem.index2 == 0 ? Colors.transparent : Colors.white,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(5),
                  bottomLeft: Radius.circular(5),
                ),
                border: HomePageProvideItem.index2 == 0
                    ? const Border(
                  left: BorderSide(
                    color: Colors.white,
                  ),
                  top: BorderSide(color: Colors.white),
                  right: BorderSide(color: Colors.white, width: 0),
                  bottom: BorderSide(color: Colors.white),
                )
                    : const Border(),
              ),
              child: Center(
                  child: Text(
                    KTStrings.segodnya.tr(),
                    style: const TextStyle(fontSize: 18, color: Colors.black),
                  )),
            ),
          ),
        ),
        GestureDetector(
          onTap: vstavkuButton,
          child: SizedBox(
            height: 30,
            width: 150,
            child: DecoratedBox(
              decoration: BoxDecoration(
                color: HomePageProvideItem.index2 == 1 ? Colors.transparent : Colors.white,
                borderRadius: const BorderRadius.only(
                  topRight: Radius.circular(5),
                  bottomRight: Radius.circular(5),
                ),
                border: HomePageProvideItem.index2 == 1
                    ? const Border(
                  left: BorderSide(color: Colors.white, width: 0),
                  top: BorderSide(color: Colors.white),
                  right: BorderSide(color: Colors.white),
                  bottom: BorderSide(color: Colors.white),
                )
                    : const Border(),
              ),
              child: Center(
                  child: Text(
                    KTStrings.vistav.tr(),
                    style: const TextStyle(fontSize: 18, color: Colors.black),
                  )),
            ),
          ),
        ),
      ],
    );
  }
}
