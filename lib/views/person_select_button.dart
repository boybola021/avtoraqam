
import 'package:easy_localization/easy_localization.dart';
import 'package:avtoraqam/services/all_packages.dart';

class KTPersonSelectButton extends StatelessWidget {
  final VoidCallback personButtonJis;
  final VoidCallback personButtonYur;
  const KTPersonSelectButton({super.key,required this.personButtonJis,required this.personButtonYur});
  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        GestureDetector(
          onTap: personButtonJis,
          child: SizedBox(
            height: 30,
            width: 150,
            child: DecoratedBox(
              decoration: BoxDecoration(
                color: HomePageProvideItem.index == 0 ? Colors.transparent : Colors.white,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(5),
                  bottomLeft: Radius.circular(5),
                ),
                border: HomePageProvideItem.index == 0
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
                    KTStrings.fizLiso.tr(),
                    style: const TextStyle(fontSize: 18, color: Colors.black),
                  )),
            ),
          ),
        ),
        GestureDetector(
          onTap: personButtonYur,
          child: SizedBox(
            height: 30,
            width: 150,
            child: DecoratedBox(
              decoration: BoxDecoration(
                color: HomePageProvideItem.index == 1 ? Colors.transparent : Colors.white,
                borderRadius: const BorderRadius.only(
                  topRight: Radius.circular(5),
                  bottomRight: Radius.circular(5),
                ),
                border: HomePageProvideItem.index == 1
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
                    KTStrings.urLiso.tr(),
                    style: const TextStyle(fontSize: 18, color: Colors.black),
                  )),
            ),
          ),
        ),
      ],
    );
  }
}
