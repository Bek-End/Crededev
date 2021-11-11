import 'package:credo_p2p/core/style/colors.dart';
import 'package:flutter/material.dart';

class ExpandedItem {
  final String value;
  final Object key;
  ExpandedItem({
    required this.value,
    required this.key,
  });
}

class ExpandedListTile extends StatefulWidget {
  final String title;
  final List<ExpandedItem> items;
  final ExpandedItem item;
  final void Function(ExpandedItem item) onTap;
  const ExpandedListTile({
    Key? key,
    required this.title,
    required this.items,
    required this.item,
    required this.onTap,
  }) : super(key: key);

  @override
  State<ExpandedListTile> createState() => _ExpandedListTileState();
}

class _ExpandedListTileState extends State<ExpandedListTile> {
  bool expanded = false;
  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(cardColor: kVioletVeryPale),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(6),
        child: ExpansionPanelList(
          dividerColor: kTrans,
          expansionCallback: (index, isExpanded) {
            setState(() {
              expanded = !expanded;
            });
          },
          elevation: 0,
          children: [
            ExpansionPanel(
              canTapOnHeader: true,
              isExpanded: expanded,
              headerBuilder: (context, isExpanded) {
                return ListTile(
                  contentPadding: const EdgeInsets.only(left: 10),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(6),
                  ),
                  tileColor: kVioletVeryPale,
                  title: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        widget.title,
                        style: const TextStyle(
                          color: kBlack,
                          fontSize: 10,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      const SizedBox(
                        height: 1,
                      ),
                      Text(
                        widget.item.value,
                        style: const TextStyle(
                          color: kBlack,
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                );
              },
              body: ListTile(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(6),
                ),
                contentPadding: EdgeInsets.zero,
                tileColor: kVioletVeryPale,
                title: Column(
                  children: List<Widget>.generate(
                    widget.items.length,
                    (i) => Column(
                      children: [
                        Container(
                          width: double.infinity,
                          height: 1,
                          color: kDarkGrey,
                        ),
                        ListTile(
                          contentPadding: const EdgeInsets.only(left: 10),
                          title: Text(
                            widget.items[i].value,
                            style: const TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 12,
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
                      ],
                    ),
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
