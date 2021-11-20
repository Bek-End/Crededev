import 'package:credo_p2p/core/style/colors.dart';
import 'package:credo_p2p/features/all_loans/all_loans_screen.dart';
import 'package:credo_p2p/features/analytics/ui/analytics_screen.dart';
import 'package:credo_p2p/features/home/home_page_screen.dart';
import 'package:credo_p2p/features/profile/profile_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int activeIndex = 0;
  PageController pageController = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhite,
      body: PageView(
        controller: pageController,
        physics: const NeverScrollableScrollPhysics(),
        children: const [
          HomePageScreen(),
          AnalyticsScreen(),
          AllLoansScreen(),
          ProfileScreen(),
        ],
      ),
      bottomNavigationBar: CupertinoTabBar(
        currentIndex: activeIndex,
        activeColor: kViolet,
        inactiveColor: kLightGrey,
        backgroundColor: kWhite,
        onTap: (i) async {
          setState(
            () {
              activeIndex = i;
            },
          );
          await pageController.animateToPage(
            activeIndex,
            duration: const Duration(
              milliseconds: 300,
            ),
            curve: Curves.easeIn,
          );
        },
        items: [
          BottomNavigationBarItem(
            label: 'Главная',
            icon: SvgPicture.asset(
              'assets/bottom_nav_bar/inactive_home.svg',
            ),
            activeIcon: SvgPicture.asset(
              'assets/bottom_nav_bar/active_home.svg',
            ),
          ),
          BottomNavigationBarItem(
            label: 'Аналитика',
            icon: SvgPicture.asset(
              'assets/bottom_nav_bar/pie-chart.svg',
            ),
            activeIcon: SvgPicture.asset(
              'assets/bottom_nav_bar/active-pie-chart.svg',
            ),
          ),
          BottomNavigationBarItem(
            label: 'Все займы',
            icon: SvgPicture.asset(
              'assets/bottom_nav_bar/ruble.svg',
            ),
            activeIcon: SvgPicture.asset(
              'assets/bottom_nav_bar/active_ruble.svg',
            ),
          ),
          BottomNavigationBarItem(
            label: 'Профиль',
            icon: SvgPicture.asset(
              'assets/bottom_nav_bar/user.svg',
            ),
            activeIcon: SvgPicture.asset(
              'assets/bottom_nav_bar/active_user.svg',
            ),
          ),
        ],
      ),
    );
  }
}
