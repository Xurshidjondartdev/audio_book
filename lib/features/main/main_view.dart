// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'main_logic.dart';

// class MainPage extends StatelessWidget {
//   static const String route = "/main";

//   MainPage({super.key});

//   final logic = Get.find<MainLogic>();
//   final state = Get.find<MainLogic>().state;

//   final pages = [
//     AuthPage()
//     // HomePage(),
//     // HistoryPage(),
//     // ProfilePage(),
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Row(
//           mainAxisSize: MainAxisSize.min,
//           mainAxisAlignment: MainAxisAlignment.start,
//           crossAxisAlignment: CrossAxisAlignment.center,
//           children: [
//             const Text(
//               'Sez',
//               style: TextStyle(fontSize: 40),
//             ),
//             Padding(
//               padding: const EdgeInsets.only(top: 6),
//               child: SizedBox(
//                 height: 40,
//                 width: 100,
//                 child: Lottie.asset("assets/lotties/on_off_switch_2.json"),
//               ),
//             ),
//           ],
//         ),
//         centerTitle: true,
//         backgroundColor: const Color.fromRGBO(248, 250, 251, 1),
//       ),
//       drawer: const Drawer(),
//       body: PageView(
//         pageSnapping: false,
//         allowImplicitScrolling: false,
//         physics: const NeverScrollableScrollPhysics(),
//         controller: logic.bottomNavController,
//         children: pages,
//       ),
//       bottomNavigationBar: Obx(
//         () => BottomNavigationBar(
//           onTap: (value) {
//             // AppHapticManager.heavyImpact();
//             logic.bottomNavController.jumpToPage(value);
//             state.selectedIndex(value);
//           },
//           currentIndex: state.selectedIndex.value,
//           type: BottomNavigationBarType.fixed,
//           showUnselectedLabels: false,
//           selectedItemColor: AppColor.primary60,
//           unselectedIconTheme: const IconThemeData(color: AppColor.basic60),
//           selectedIconTheme: const IconThemeData(color: AppColor.primary60),
//           selectedLabelStyle: AppTypography.footnote2.copyWith(color: AppColor.error30),
//           showSelectedLabels: true,
//           enableFeedback: true,
//           useLegacyColorScheme: true,
//           backgroundColor: const Color.fromRGBO(248, 250, 251, 1),
//           landscapeLayout: BottomNavigationBarLandscapeLayout.linear,
//           items: [
//             const BottomNavigationBarItem(
//               icon: Icon(Icons.sunny),
//               label: 'Home',
//             ),
//             const BottomNavigationBarItem(
//               icon: Icon(Icons.history),
//               label: 'History',
//             ),
//             BottomNavigationBarItem(
//               icon: const Icon(Icons.account_circle_outlined),
//               label: 'profile'.tr,
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';

class MainView extends StatelessWidget {
  static const String route = "/main";

  const MainView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Main Page'),
        backgroundColor: Colors.blue,
      ),
      body:const Center(
        child: Text('Hello, Book'),
      ),
    );
  }
}