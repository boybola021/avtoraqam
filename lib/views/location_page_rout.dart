import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:avtoraqam/services/all_packages.dart';

class LocationPageRout extends StatelessWidget {
  const LocationPageRout({super.key});

  @override
  Widget build(BuildContext context) {
    return    SizedBox(
      height: 50,
      width: 300,
      child: BlocBuilder<RegionCubit, RegionState>(
        builder: (context, state) {
          if (state is RegionsSelectedState) {
            return InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  CupertinoPageRoute(
                    builder: (context) => RegionPage(
                      text: state.currentRegion,
                    ),
                  ),
                );
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  KTIcons.location,
                  const SizedBox(
                    width: 5,
                  ),
                  Text(
                    state.currentRegion.tr(),
                    style: const TextStyle(
                        fontSize: 25, color: Colors.white),
                  ),
                ],
              ),
            );
          } else {
            return const Center(
              child: Text(
                "No Data",
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
            );
          }
        },
      ),
    );
  }
}
