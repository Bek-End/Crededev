import 'package:credo_p2p/core/style/colors.dart';
import 'package:credo_p2p/core/widgets/info_list.dart';
import 'package:credo_p2p/core/widgets/round_button.dart';
import 'package:credo_p2p/features/analytics/all_loans/ui/analytics_all_loans_screen.dart';
import 'package:credo_p2p/features/analytics/core/widgets/analytics_text_button.dart';
import 'package:credo_p2p/features/analytics/core/widgets/circular_analytical_indicator.dart';
import 'package:credo_p2p/features/analytics/core/widgets/rounded_info_toast.dart';
import 'package:credo_p2p/features/analytics/pay_loan/ui/pay_loan_screen.dart';
import 'package:flutter/material.dart';

class AnalyticsReceiveLoanScreen extends StatefulWidget {
  const AnalyticsReceiveLoanScreen({Key? key}) : super(key: key);

  @override
  _AnalyticsReceiveLoanScreenState createState() =>
      _AnalyticsReceiveLoanScreenState();
}

class _AnalyticsReceiveLoanScreenState
    extends State<AnalyticsReceiveLoanScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhite,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                ),
                decoration: const BoxDecoration(
                  color: kVioletVeryPale,
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(20),
                    bottomLeft: Radius.circular(20),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 19,
                    ),
                    const Center(
                      child: CircularAnalyticalChart(
                        greyPercent: 25,
                        violetPercent: 50,
                        bluePercent: 25,
                        title: '?????????????? ??????????????',
                        money: '5 200??',
                        date: '23 ?????? 2021 ??',
                      ),
                    ),
                    const SizedBox(
                      height: 11,
                    ),
                    Wrap(
                      spacing: 6,
                      runSpacing: 6,
                      children: const [
                        RoundedInfoToast(
                          color: kDarkBlue,
                          leading: '???????????????? ????????????',
                          trailing: '5 200??',
                          textColor: kWhite,
                        ),
                        RoundedInfoToast(
                          color: kViolet,
                          leading: '?????????????????? ????????????',
                          trailing: '10 400??',
                          textColor: kWhite,
                        ),
                        RoundedInfoToast(
                          color: kChartBlue,
                          leading: '????????????????????',
                          trailing: '4 500??',
                          textColor: kBlack,
                        ),
                        RoundedInfoToast(
                          color: kBlueLight,
                          leading: '????. ???????????? ???? ???????????? / ??????',
                          trailing: '10 %',
                          textColor: kBlack,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 20,
                ),
                child: InfoList(
                  title: '?????????????????? ????????????????????',
                  data: [
                    {'?????????? ???????????? ???? ??????????': '33 000??'},
                    {'?????????????? ?????????? ??????????': '5 000??'},
                    {'?????????????? ???????? ??????????': '6 ??????????????'},
                    {'?????????????? ?????????? ???????????? ?? ??????????': '5 200??'},
                  ],
                ),
              ),
              AnalyticsTextButton(
                title: '?????? ??????????',
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const AnalyticsAllLoansScreen(),
                    ),
                  );
                },
              ),
            ],
          ),
          Container(
            padding: const EdgeInsets.only(
              left: 20,
              right: 20,
              bottom: 15,
            ),
            width: double.infinity,
            child: RoundButtonWidget(
              title: '???????????????? 5 200??',
              enabled: true,
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const PayLoanScreen(),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
