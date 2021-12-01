import 'package:credo_p2p/core/expansion_panel_list_modidifed/expansion_panel_list_modified.dart';
import 'package:credo_p2p/core/style/colors.dart';
import 'package:flutter/material.dart';

class FaqListTile extends StatefulWidget {
  final String title;
  final String body;
  final int value;
  final int groupValue;
  final Function(int value) onTap;
  const FaqListTile({
    Key? key,
    required this.title,
    required this.body,
    required this.value,
    required this.groupValue,
    required this.onTap,
  }) : super(key: key);

  @override
  _FaqListTileState createState() => _FaqListTileState();
}

class _FaqListTileState extends State<FaqListTile> {
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(6),
      child: ExpansionPanelListCustom(
        elevation: 0,
        expansionCallback: (i, isExpanded) {
          if (widget.value == widget.groupValue) {
            widget.onTap(0);
          } else {
            widget.onTap(widget.value);
          }
        },
        children: [
          ExpansionPanelCustom(
            canTapOnHeader: true,
            headerBuilder: (context, isExpanded) => ListTile(
              title: Text(
                widget.title,
                style: const TextStyle(
                  color: kBlack,
                  fontWeight: FontWeight.w600,
                  fontSize: 12,
                ),
              ),
            ),
            body: ListTile(
              title: Text(
                widget.body,
                style: const TextStyle(
                  color: kBlack,
                  fontWeight: FontWeight.w500,
                  fontSize: 10,
                ),
              ),
            ),
            isExpanded: widget.value == widget.groupValue,
          )
        ],
      ),
    );
  }
}
