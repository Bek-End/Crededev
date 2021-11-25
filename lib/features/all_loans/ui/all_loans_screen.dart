import 'package:credo_p2p/core/style/colors.dart';
import 'package:credo_p2p/core/widgets/control_segment_widget.dart';
import 'package:credo_p2p/features/all_loans/give_loan/ui/all_loans_give_loan_screen.dart';
import 'package:credo_p2p/features/all_loans/receive_loan/ui/all_loans_receive_loan_screen.dart';
import 'package:flutter/material.dart';

class AllLoansScreen extends StatefulWidget {
  const AllLoansScreen({Key? key}) : super(key: key);

  @override
  _AllLoansScreenState createState() => _AllLoansScreenState();
}

class _AllLoansScreenState extends State<AllLoansScreen> {
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
                AllLoansReceiveLoanScreen(),
                AllLoansGiveLoanScreen(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
