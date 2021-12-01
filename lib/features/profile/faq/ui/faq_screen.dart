import 'package:credo_p2p/core/widgets/app_bar_with_title.dart';
import 'package:credo_p2p/features/profile/faq/ui/widgets/faq_list_tile.dart';
import 'package:flutter/material.dart';

class FaqScreen extends StatefulWidget {
  const FaqScreen({Key? key}) : super(key: key);

  @override
  _FaqScreenState createState() => _FaqScreenState();
}

class _FaqScreenState extends State<FaqScreen> {
  int groupValue = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWithTitle(
        onPressed: () {
          Navigator.pop(context);
        },
        title: 'Вопрос-ответ',
      ),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          FaqListTile(
            title: 'Как начать пользоваться сервисом?',
            body:
                'Все верно, при оформлении займа формируется юридический договор между сторонами, который подтверждает факт совершения займа. При пополнении счета, ваши деньги также находятся в безопасности, т.к. владельцами средств являются сами пользователи, а это значит, что приложение не сможет распорядиться ими без Вашего поручения. Даже если площадка внезапно закроется, денежные средства останутся у вас.',
            value: 1,
            groupValue: groupValue,
            onTap: (i) {
              setState(() {
                groupValue = i;
              });
            },
          ),
          const SizedBox(
            height: 6,
          ),
          FaqListTile(
            title: 'Что я могу сделать в приложении?',
            body:
                'Все верно, при оформлении займа формируется юридический договор между сторонами, который подтверждает факт совершения займа. При пополнении счета, ваши деньги также находятся в безопасности, т.к. владельцами средств являются сами пользователи, а это значит, что приложение не сможет распорядиться ими без Вашего поручения. Даже если площадка внезапно закроется, денежные средства останутся у вас.',
            value: 2,
            groupValue: groupValue,
            onTap: (i) {
              setState(() {
                groupValue = i;
              });
            },
          ),
          const SizedBox(
            height: 6,
          ),
          FaqListTile(
            title: 'Что такое P2P-кредитование?',
            body:
                'Все верно, при оформлении займа формируется юридический договор между сторонами, который подтверждает факт совершения займа. При пополнении счета, ваши деньги также находятся в безопасности, т.к. владельцами средств являются сами пользователи, а это значит, что приложение не сможет распорядиться ими без Вашего поручения. Даже если площадка внезапно закроется, денежные средства останутся у вас.',
            value: 3,
            groupValue: groupValue,
            onTap: (i) {
              setState(() {
                groupValue = i;
              });
            },
          ),
          const SizedBox(
            height: 6,
          ),
          FaqListTile(
            title: 'Мои финансы защищены?',
            body:
                'Все верно, при оформлении займа формируется юридический договор между сторонами, который подтверждает факт совершения займа. При пополнении счета, ваши деньги также находятся в безопасности, т.к. владельцами средств являются сами пользователи, а это значит, что приложение не сможет распорядиться ими без Вашего поручения. Даже если площадка внезапно закроется, денежные средства останутся у вас.',
            value: 4,
            groupValue: groupValue,
            onTap: (i) {
              setState(() {
                groupValue = i;
              });
            },
          ),
        ],
      ),
    );
  }
}
