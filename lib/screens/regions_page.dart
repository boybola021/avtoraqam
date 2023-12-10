import 'dart:io';
import 'package:easy_localization/easy_localization.dart';

import 'loading_page.dart';
import 'package:avtoraqam/services/all_packages.dart';

class RegionPage extends StatefulWidget {
  final String text;
  const RegionPage({super.key,required this.text});

  @override
  State<RegionPage> createState() => _RegionPageState();
}

class _RegionPageState extends State<RegionPage> with AutomaticKeepAliveClientMixin{
  int index = 0;
  int currentIndex = 0;
 String text = KTStrings.vseRegion;
 bool check = false;
  @override
  void initState() {
    super.initState();
    regionCubit.getRegion();
  }
  @override
  Widget build(BuildContext context) {
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
      ),
      body: BlocBuilder<RegionCubit, RegionState>(
        builder: (context, state) {
          if(state is RegionGetState){
            return ListView.builder(
              physics: const BouncingScrollPhysics(),
              itemCount: state.region.length,
              itemBuilder: (context, i) {
                final data = state.region[i];
                return Column(
                  children: [
                    InkWell(
                      onTap: () {
                        index = i;
                        check = true;
                        regionCubit.selectedRegion(text: state.region[i]);
                        Navigator.pop(context);
                      },
                      child: SizedBox(
                        height: 40,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(data.tr(),style: const TextStyle(fontSize: 20,),),
                               state.region.indexOf(widget.text) == i? const Icon(Icons.check) : const SizedBox.shrink(),
                            ],
                          ),
                        ),
                      ),
                    ),
                    const Divider(thickness: 1.5,),
                  ],
                );
              },
            );
          }
          else if(state is RegionLoadingState || state is RegionInitialState){
            return const LoadingPage();
          }else{
            return const Center(
              child: Text("No Data",style: TextStyle(fontSize: 25),),
            );
          }
        },
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}
