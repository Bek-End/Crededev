import 'package:credo_p2p/core/expanded_list_tile_modified/expanded_list_tile_modified.dart';
import 'package:credo_p2p/core/style/colors.dart';
import 'package:flutter/material.dart';

class AllLoansExpandedtile extends StatefulWidget {
  final List<Map<String, String>> infoList;
  final String title;
  const AllLoansExpandedtile({
    Key? key,
    required this.infoList,
    required this.title,
  }) : super(key: key);

  @override
  State<AllLoansExpandedtile> createState() => _AllLoansExpandedtileState();
}

class _AllLoansExpandedtileState extends State<AllLoansExpandedtile> {
  late final ExpandedTileController _controller;

  @override
  void initState() {
    _controller = ExpandedTileController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ExpandedTile(
      theme: const ExpandedTileThemeData(
        headerColor: kTrans,
        headerPadding: EdgeInsets.zero,
        leadingPadding: EdgeInsets.zero,
        trailingPadding: EdgeInsets.zero,
        contentPadding: EdgeInsets.zero,
      ),
      title: Text(
        widget.title,
        style: const TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.w600,
        ),
      ),
      onTap: () {},
      content: Column(
        children: List.generate(
          widget.infoList.length,
          (i) => Container(
            margin: const EdgeInsets.only(bottom: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  widget.infoList[i].keys.toList()[0],
                  style: const TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Text(
                  widget.infoList[i].values.toList()[0],
                  style: const TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      controller: _controller,
    );
  }
}
