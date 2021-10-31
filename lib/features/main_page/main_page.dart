import 'package:credo_p2p/core/style/colors.dart';
import 'package:credo_p2p/features/main_page/core/widgets/control_segment_widget.dart';
import 'package:credo_p2p/features/main_page/give_loan/give_loan_screen.dart';
import 'package:credo_p2p/features/main_page/receive_loan/receive_loan_screen.dart';
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
      body: SafeArea(
        child: Center(
          child: NestedScrollView(
            headerSliverBuilder: (context, e) => [
              SliverAppBar(
                backgroundColor: Colors.transparent,
                title: ControlSegmentWidget(
                  receiveLoan: 'Получить займ',
                  giveLoan: 'Выдать займ',
                  onValueCnanged: (int? val) {
                    if (val == 1) {
                      setState(
                        () {
                          pageController.nextPage(
                            duration: const Duration(
                              milliseconds: 300,
                            ),
                            curve: Curves.easeIn,
                          );
                        },
                      );
                    } else {
                      setState(
                        () {
                          pageController.previousPage(
                            duration: const Duration(
                              milliseconds: 500,
                            ),
                            curve: Curves.easeIn,
                          );
                        },
                      );
                    }
                  },
                ),
              ),
            ],
            body: PageView(
              controller: pageController,
              physics: const NeverScrollableScrollPhysics(),
              children: const [
                ReceiveLoanScreen(),
                GiveLoanScreen(),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: CupertinoTabBar(
        currentIndex: activeIndex,
        activeColor: kViolet,
        inactiveColor: kLightGrey,
        backgroundColor: kWhite,
        onTap: (i) {
          setState(
            () {
              activeIndex = i;
            },
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
