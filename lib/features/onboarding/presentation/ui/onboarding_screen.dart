import 'package:credo_p2p/core/style/colors.dart';
import 'package:flutter/material.dart';
import 'widgets/bottom_bar.dart';
import 'widgets/dots_indicator.dart';
import 'widgets/onboarding_headline_widget.dart';

class OnboardingScreen extends StatefulWidget {
  static const route = '/';
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  _OnboardingScreenState createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final pageController = PageController();
  double currentPosition = 0;
  bool canSckip = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhite,
      body: SafeArea(
        bottom: false,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: PageView(
                controller: pageController,
                onPageChanged: (e) {
                  setState(
                    () {
                      currentPosition = e.toDouble();
                      if (currentPosition != 0) canSckip = true;
                    },
                  );
                },
                children: const [
                  OnboardingHeadline(
                    svgPicPath: 'assets/onboarding/first_screen.svg',
                    title: 'Добро пожаловать',
                    info:
                        'Р2Р – это удобный сервис кредитования, где кредитор может предложить свои средства заёмщику под выгодный процент и заработать на этом, а заёмщик моментально получить их на карту без лишних проблем с оформлением.',
                  ),
                  OnboardingHeadline(
                    svgPicPath: 'assets/onboarding/second_screen.svg',
                    title: 'Стань кредитором!',
                    info:
                        'Ваши свободные средства могут работать не только на бирже или в банке. Зарабатывайте, выдавая кредиты и получая гораздо более высокие проценты на вашу банковскую карту.',
                  ),
                  OnboardingHeadline(
                    svgPicPath: 'assets/onboarding/third_screen.svg',
                    title: 'Получи займ!',
                    info:
                        'Получить кредит никогда не было так легко и быстро, как в нашем приложении! Разместите заявку и получите предложения от кредиторов с процентами, гораздо ниже рыночных.',
                  ),
                  OnboardingHeadline(
                    svgPicPath: 'assets/onboarding/fourth_screen.svg',
                    title: 'P2P - всё в одном!',
                    info:
                        'Здесь вы сможете зарабатывать на собственном кредитном бизнесе, получать займы на самых выгодных условиях, переводить и получать средства на банковскую карту, вести аналитику своей кредитной истории, иметь полный комплект документов по каждому займу.',
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: DotsIndicatorWidget(
                dotsCount: 4,
                controller: pageController,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            BottomBar(
              title: canSckip ? 'Пропустить' : 'Начать',
            ),
          ],
        ),
      ),
    );
  }
}
