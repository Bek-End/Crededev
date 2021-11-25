import 'package:credo_p2p/core/style/colors.dart';
import 'package:credo_p2p/core/widgets/expanded_list_custom.dart';
import 'package:credo_p2p/features/home/core/widgets/expanded_list_tile.dart';
import 'package:flutter/material.dart';

class ExpandedList extends StatefulWidget {
  final List<ExpandedItem> items;
  final ExpandedItem item;
  final void Function(ExpandedItem item) onTap;
  const ExpandedList({
    Key? key,
    required this.items,
    required this.item,
    required this.onTap,
  }) : super(key: key);

  @override
  State<ExpandedList> createState() => _ExpandedListState();
}

class _ExpandedListState extends State<ExpandedList> {
  bool expanded = false;
  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(
        cardColor: kWhite,
        cardTheme: const CardTheme(
          margin: EdgeInsets.zero,
        ),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10.5),
        child: CustomExpansionPanelList(
          dividerColor: kTrans,
          expandedHeaderPadding: EdgeInsets.zero,
          expansionCallback: (index, isExpanded) {
            setState(() {
              expanded = !expanded;
            });
          },
          elevation: 0,
          children: [
            CustomExpansionPanel(
              canTapOnHeader: true,
              isExpanded: expanded,
              headerBuilder: (context, isExpanded) {
                return Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Text(
                    widget.item.value,
                    style: const TextStyle(
                      color: kBlack,
                      fontSize: 10,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                );
              },
              body: Column(
                mainAxisSize: MainAxisSize.min,
                children: List<Widget>.generate(
                  widget.items.length,
                  (i) => ListTile(
                    visualDensity: const VisualDensity(vertical: -4),
                    contentPadding: const EdgeInsets.only(left: 10),
                    title: Text(
                      widget.items[i].value,
                      style: const TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 10,
                        color: kBlack,
                      ),
                    ),
                    onTap: () {
                      setState(() {
                        expanded = false;
                      });
                      widget.onTap(
                        widget.items[i],
                      );
                    },
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
