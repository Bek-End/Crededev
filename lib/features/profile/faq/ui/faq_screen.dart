import 'package:credo_p2p/core/widgets/app_bar_with_title.dart';
import 'package:credo_p2p/core/widgets/snackbars.dart';
import 'package:credo_p2p/features/auth_local/presentation/ui/widgets/snack_widget.dart';
import 'package:credo_p2p/features/profile/faq/application/faq_bloc.dart';
import 'package:credo_p2p/features/profile/faq/ui/widgets/faq_list_tile.dart';
import 'package:credo_p2p/injection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FaqScreen extends StatefulWidget {
  const FaqScreen({Key? key}) : super(key: key);

  @override
  _FaqScreenState createState() => _FaqScreenState();
}

class _FaqScreenState extends State<FaqScreen> {
  int groupValue = 0;
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<FaqBloc>()
        ..add(
          const FaqEvent.initial(),
        ),
      child: Scaffold(
        appBar: AppBarWithTitle(
          onPressed: () {
            Navigator.pop(context);
          },
          title: 'Вопрос-ответ',
        ),
        body: BlocConsumer<FaqBloc, FaqState>(
          listener: (context, state) {
            if (state.noInternet) {
              ScaffoldMessenger.of(context).showSnackBar(
                noInternetSnackbar,
              );
            }
            if (state.serverError) {
              ScaffoldMessenger.of(context).showSnackBar(
                snackWidget(
                  content: 'Server failure',
                  label: 'HIDE',
                  onPressed: () {},
                ),
              );
            }
          },
          builder: (context, state) {
            return ListView.builder(
              itemCount: state.faqs.length,
              padding: const EdgeInsets.only(left: 20,right: 20),
              itemBuilder: (context, i) {
                final data = state.faqs[i];
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 3),
                  child: FaqListTile(
                    title: data.question,
                    body: data.answer,
                    value: i + 1,
                    groupValue: groupValue,
                    onTap: (e) {
                      setState(() {
                        groupValue = e;
                      });
                    },
                  ),
                );
              },
            );
          },
        ),
      ),
    );
  }
}
