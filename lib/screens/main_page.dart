import 'package:avtoraqam/screens/other_page.dart';
import 'home_page.dart';
import 'number_page.dart';
import 'package:avtoraqam/services/all_packages.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int currentIndex = 0;
  late final PageController controller;
  @override
  void initState() {
    super.initState();
    controller = PageController(initialPage: 0);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        elevation: 20,
        selectedItemColor: KTColors.blue65,
        unselectedItemColor: Colors.grey,
        currentIndex: currentIndex,
        type: BottomNavigationBarType.fixed,
        iconSize: 30,
        onTap: (index) {
          currentIndex = index;
          controller.jumpToPage(currentIndex);
          setState(() {});
        },
        items: KTIcons.buildBottomNavBarItems(),
      ),
      body: PageView(
        physics: const NeverScrollableScrollPhysics(),
        controller: controller,
        children: const [
          HomePage(),
          NumberPage(),
          OtherPage(),
        ],
      ),
    );
  }
}
