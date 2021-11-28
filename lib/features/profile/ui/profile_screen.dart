import 'package:credo_p2p/core/style/colors.dart';
import 'package:credo_p2p/features/profile/ui/widgets/avatar_widget.dart';
import 'package:credo_p2p/features/profile/ui/widgets/exit_button.dart';
import 'package:credo_p2p/features/profile/ui/widgets/profile_attribute_button.dart';
import 'package:credo_p2p/features/profile/ui/widgets/profile_segmented_control.dart';
import 'package:credo_p2p/features/profile/ui/widgets/rounded_container.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  PageController pageController = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBlue,
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const AvatarWidget(title: 'Романова Елизавета', rating: 5),
                  ExitButton(onPressed: () {}, title: 'Выход'),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Expanded(
              child: RoundedContainer(
                padding: const EdgeInsets.symmetric(vertical: 26),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 20,
                      ),
                      child: ProfileSegmentedControl(
                        services: 'Сервисы',
                        info: 'Информация',
                        settings: 'Настройки',
                        onValueCnanged: (int? val) {
                          setState(
                            () {
                              pageController.animateToPage(
                                val!,
                                duration: const Duration(
                                  milliseconds: 300,
                                ),
                                curve: Curves.easeIn,
                              );
                            },
                          );
                        },
                      ),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    Expanded(
                      child: PageView(
                        controller: pageController,
                        physics: const NeverScrollableScrollPhysics(),
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 25),
                            child: Column(
                              children: [
                                ProfileAttributeButton(
                                  onPressed: () {},
                                  title: 'Уведомления',
                                  subtitle:
                                      'Уведомления о займах или инвестициях',
                                  assetPath: 'assets/profile/chat.svg',
                                ),
                                const SizedBox(
                                  height: 6,
                                ),
                                ProfileAttributeButton(
                                  onPressed: () {},
                                  title: 'Все заявки',
                                  subtitle:
                                      'Все активные заявки кредитора и заёмщика',
                                  assetPath: 'assets/profile/all_loans.svg',
                                ),
                                const SizedBox(
                                  height: 6,
                                ),
                                ProfileAttributeButton(
                                  onPressed: () {},
                                  title: 'История операций',
                                  subtitle:
                                      'Все контракты кредитора и заёмщика',
                                  assetPath: 'assets/profile/history.svg',
                                ),
                                const SizedBox(
                                  height: 6,
                                ),
                                ProfileAttributeButton(
                                  onPressed: () {},
                                  title: 'Анкета',
                                  subtitle:
                                      'Данные для рейтинга и документации',
                                  assetPath: 'assets/profile/form.svg',
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 25),
                            child: Column(
                              children: [
                                ProfileAttributeButton(
                                  onPressed: () {},
                                  title: 'Мои карты',
                                  subtitle: 'Счет заемщика или инвестора',
                                  assetPath: 'assets/profile/card.svg',
                                ),
                                const SizedBox(
                                  height: 6,
                                ),
                                ProfileAttributeButton(
                                  onPressed: () {},
                                  title: 'Документы',
                                  subtitle: 'Все необходимые документы ',
                                  assetPath: 'assets/profile/document.svg',
                                ),
                                const SizedBox(
                                  height: 6,
                                ),
                                ProfileAttributeButton(
                                  onPressed: () {},
                                  title: 'Активность профиля',
                                  subtitle: 'Все выполненные шаги',
                                  assetPath: 'assets/profile/stonks.svg',
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 25),
                            child: Column(
                              children: [
                                ProfileAttributeButton(
                                  onPressed: () {},
                                  title: 'Сменить PIN-код',
                                  subtitle:
                                      'Сменить пароль для входа в приложение',
                                  assetPath: 'assets/profile/secure.svg',
                                ),
                                const SizedBox(
                                  height: 6,
                                ),
                                ProfileAttributeButton(
                                  onPressed: () {},
                                  title: 'Редактировать профиль',
                                  subtitle: 'Заполнение анкеты',
                                  assetPath: 'assets/profile/edit.svg',
                                ),
                                const SizedBox(
                                  height: 6,
                                ),
                                ProfileAttributeButton(
                                  onPressed: () {},
                                  title: 'Вопрос-ответ',
                                  subtitle:
                                      'Все интересущие вас вопросы и ответы',
                                  assetPath: 'assets/profile/qa.svg',
                                ),
                                const SizedBox(
                                  height: 6,
                                ),
                                ProfileAttributeButton(
                                  onPressed: () {},
                                  title: 'Поддержка',
                                  subtitle: 'Как работает приложение',
                                  assetPath: 'assets/profile/support.svg',
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
