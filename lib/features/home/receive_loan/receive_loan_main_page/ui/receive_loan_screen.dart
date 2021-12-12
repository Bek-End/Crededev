import 'package:credo_p2p/core/style/colors.dart';
import 'package:credo_p2p/core/widgets/hide_widget.dart';
import 'package:credo_p2p/core/widgets/round_button.dart';
import 'package:credo_p2p/core/widgets/snackbars.dart';
import 'package:credo_p2p/features/auth_local/presentation/ui/widgets/snack_widget.dart';
import 'package:credo_p2p/features/home/core/data/models/filter_model.dart';
import 'package:credo_p2p/features/home/core/widgets/loan_button_widget.dart';
import 'package:credo_p2p/features/home/core/widgets/loan_console.dart';
import 'package:credo_p2p/features/home/receive_loan/create_loan/ui/create_loan_screen.dart';
import 'package:credo_p2p/features/home/receive_loan/quick_loan/ui/quick_loan_screen.dart';
import 'package:credo_p2p/features/home/receive_loan/receive_loan_main_page/application/receiveloanmainpage_bloc.dart';
import 'package:credo_p2p/features/home/receive_loan/receive_loan_main_page/ui/widgets/filter_bottom_sheet/filter_bottom_sheet_widget.dart';
import 'package:credo_p2p/features/home/receive_loan/receive_loan_main_page/ui/widgets/sort_bottom_sheet/bottom_sheet_button.dart';
import 'package:credo_p2p/features/home/receive_loan/receive_loan_main_page/ui/widgets/sort_bottom_sheet/sort_bottom_sheet_widget.dart';
import 'package:credo_p2p/injection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../core/widgets/receive_loan_card_widget.dart';

class ReceiveLoanScreen extends StatefulWidget {
  const ReceiveLoanScreen({Key? key}) : super(key: key);

  @override
  _ReceiveLoanScreenState createState() => _ReceiveLoanScreenState();
}

class _ReceiveLoanScreenState extends State<ReceiveLoanScreen>
    with AutomaticKeepAliveClientMixin {
  bool showConsole = true;
  bool isSubmitting = false;
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return BlocProvider(
      create: (context) => getIt<ReceiveloanmainpageBloc>()
        ..add(
          const ReceiveloanmainpageEvent.initial(),
        ),
      child: BlocConsumer<ReceiveloanmainpageBloc, ReceiveloanmainpageState>(
        listener: (context, state) {
          if (state.noInternet) {
            ScaffoldMessenger.of(context).showSnackBar(
              noInternetSnackbar,
            );
          }
          if (state.hasServerError) {
            ScaffoldMessenger.of(context).showSnackBar(
              snackWidget(
                content: 'Server failure',
                label: 'HIDE',
                onPressed: () {},
              ),
            );
          }
          if (state.isSubmitting) {
            isSubmitting = true;
          } else {
            isSubmitting = false;
          }
        },
        builder: (context, state) {
          return ListView(
            padding: const EdgeInsets.only(
              top: 5,
              left: 20,
              right: 20,
            ),
            children: <Widget>[
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Мои займы',
                        style: TextStyle(
                          color: kBlack,
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      AnimatedTextHideButton(
                        title: 'Свернуть',
                        mini: true,
                        toogle: (e) {
                          setState(() {
                            showConsole = e;
                          });
                        },
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  LoanConsole(
                    data: [
                      {'Получено': '${state.loanMainInfo.totalAmount}р'},
                      {
                        'Будущий платёж':
                            '${state.loanMainInfo.nextPaymentAmount}р'
                      },
                      {'Погашено': '${state.loanMainInfo.paidOutAmount}р'},
                      {'Просрочено': '${state.loanMainInfo.amountOfOverdue}р'},
                    ],
                    show: showConsole,
                    isLoading: isSubmitting,
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: RoundButtonWidget(
                      title: 'Создать заявку',
                      enabled: true,
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => const CreateLoanScreen(),
                          ),
                        );
                      },
                    ),
                  ),
                  const SizedBox(
                    height: 26,
                  ),
                  const Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Список инвестиций',
                      style: TextStyle(
                        color: kBlack,
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: LoanButtonWidget(
                          title: 'Сортировка',
                          iconAssetPath: 'assets/sort.svg',
                          onPressed: () async {
                            final sort =
                                await showModalBottomSheet<ReceiveSortEnum>(
                              context: context,
                              backgroundColor: kWhite,
                              shape: const RoundedRectangleBorder(
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(15),
                                  topRight: Radius.circular(15),
                                ),
                              ),
                              builder: (context) =>
                                  const ReceiveSortBottomSheetWidget(),
                            );
                          },
                        ),
                      ),
                      const SizedBox(
                        width: 6,
                      ),
                      Expanded(
                        child: LoanButtonWidget(
                          title: 'Фильтры',
                          iconAssetPath: 'assets/filter.svg',
                          onPressed: () async {
                            final filter =
                                await showModalBottomSheet<FilterModel>(
                              context: context,
                              backgroundColor: kWhite,
                              isScrollControlled: true,
                              shape: const RoundedRectangleBorder(
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(15),
                                  topRight: Radius.circular(15),
                                ),
                              ),
                              builder: (context) => Wrap(
                                children: const [
                                  FilterBottomSheetWidget(),
                                ],
                              ),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 11,
                  ),
                ] +
                List.generate(
                  10,
                  (i) => Container(
                    width: double.infinity,
                    margin: const EdgeInsets.only(bottom: 4),
                    child: ReceiveLoanCardWidget(
                      title: 'Займ от 12.02.21',
                      money: '5000р',
                      percent: '2% в день',
                      durationInDays: 'на 14 дней',
                      deadline: 'погашение 21.05.21',
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => const QuickLoanScreen(),
                          ),
                        );
                      },
                    ),
                  ),
                ),
          );
        },
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}
