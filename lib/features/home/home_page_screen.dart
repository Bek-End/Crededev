import 'package:credo_p2p/core/style/colors.dart';
import 'package:credo_p2p/core/widgets/control_segment_widget.dart';
import 'package:flutter/material.dart';

import 'give_loan/give_loan_main_page/give_loan_screen.dart';
import 'receive_loan/receive_loan_main_page/receive_loan_screen.dart';

class HomePageScreen extends StatefulWidget {
  const HomePageScreen({Key? key}) : super(key: key);

  @override
  _HomePageScreenState createState() => _HomePageScreenState();
}

class _HomePageScreenState extends State<HomePageScreen> {
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
                automaticallyImplyLeading: false,
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
                              milliseconds: 300,
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
    );
  }
}
