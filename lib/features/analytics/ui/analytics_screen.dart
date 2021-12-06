import 'package:credo_p2p/core/style/colors.dart';
import 'package:credo_p2p/core/widgets/control_segment_widget.dart';
import 'package:credo_p2p/features/analytics/give_loan/ui/analytics_give_loan_screen.dart';
import 'package:credo_p2p/features/analytics/receive_loan/ui/analytics_receive_loan_screen.dart';
import 'package:flutter/material.dart';

class AnalyticsScreen extends StatefulWidget {
  const AnalyticsScreen({Key? key}) : super(key: key);

  @override
  _AnalyticsScreenState createState() => _AnalyticsScreenState();
}

class _AnalyticsScreenState extends State<AnalyticsScreen> {
  PageController pageController = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kVioletVeryPale,
      body: SafeArea(
        child: Center(
          child: NestedScrollView(
            headerSliverBuilder: (context, e) => [
              SliverAppBar(
                backgroundColor: kTrans,
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
                AnalyticsReceiveLoanScreen(),
                AnalyticsGiveLoanScreen(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
