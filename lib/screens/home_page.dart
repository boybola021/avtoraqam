import 'package:avtoraqam/services/all_packages.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  void dialogButton(){
    showModalBottomSheet(
        context: context,
        builder: (BuildContext context) {
          return Container(
            height: 220,
            width: double.infinity,
            color: Colors.white,
            alignment: Alignment.center,
            child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 4,
                   crossAxisSpacing: 40,
                   mainAxisExtent: 40,
                    mainAxisSpacing: 10,
                ),
                itemCount: KTStrings.avtoRaqam.length,
                physics: const BouncingScrollPhysics(),
                padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                itemBuilder: (context,i){
                  final data = KTStrings.avtoRaqam[i];
                  return TextButton(
                    onPressed: (){
                      HomePageProvideItem.selectedNumber = data;
                      Navigator.pop(context);
                      setState(() {});
                    },
                    child: Text(data,style: const TextStyle(fontSize: 30,color: Colors.black,fontFamily: KTFonts.roadNumberFonts),),
                  );
                }
            ),
          );
        });
  }
  void personButtonJis() {
    if (HomePageProvideItem.index == 0) {
      HomePageProvideItem.index = 1;
      HomePageProvideItem.controller.clear();
      setState(() {});
    }
  }
  void personButtonYur() {
    debugPrint("Hello");
    if (HomePageProvideItem.index == 1) {
      HomePageProvideItem.index = 0;
      HomePageProvideItem.controller.clear();
      setState(() {});
    }
  }
  void todayButton() {
  if (HomePageProvideItem.index2 == 0) {
  HomePageProvideItem.index2 = 1;
  }
  setState(() {});
  }
  void vstavkuButton() {
  if (HomePageProvideItem.index2 == 1) {
  HomePageProvideItem.index2 = 0;
  }
  setState(() {});
  }

  @override
  void initState() {
    super.initState();
    regionCubit.getSelectedRegion(text: KTStrings.vseRegion);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: KTColors.blue71,
      appBar: AppBar(
        elevation: 2,
        backgroundColor: KTColors.blue71,
        centerTitle: true,
        title: const Text(
          KTStrings.avtoraqam,
          style: TextStyle(fontSize: 28, fontWeight: FontWeight.w400),
        ),
      ),
      body: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          /// #Person selected
           KTPersonSelectButton(
             personButtonJis: () => personButtonJis(),
             personButtonYur:() => personButtonYur(),
           ),
          const SizedBox(
            height: 20,
          ),
          /// #number selected
          KTRegionNumberSelected(dialogButton: dialogButton,),

          const SizedBox(
            height: 20,
          ),
          /// #Deta selected
          KTDetaSelectedWidget(
            todayButton: todayButton,
            vstavkuButton: vstavkuButton,
          ),
          const SizedBox(
            height: 20,
          ),
          /// #Location
          const LocationPageRout(),
          const SizedBox(
            height: 20,
          ),
          /// search button
          const SearchButton(),
        ],
      ),
    );
  }
}




