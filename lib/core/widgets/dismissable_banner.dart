import 'package:credo_p2p/core/style/colors.dart';
import 'package:flutter/material.dart';

class DismissableBanner extends StatefulWidget {
  final String text;
  const DismissableBanner({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  _DismissableBannerState createState() => _DismissableBannerState();
}

class _DismissableBannerState extends State<DismissableBanner> {
  bool show = true;
  bool showContainer = false;
  @override
  Widget build(BuildContext context) {
    return AnimatedOpacity(
      duration: const Duration(
        milliseconds: 500,
      ),
      opacity: show ? 1 : 0,
      child: showContainer
          ? Container()
          : Container(
              margin: const EdgeInsets.only(
                bottom: 20,
              ),
              child: Material(
                color: kVioletVeryPale,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(6),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(12),
                  child: Stack(
                    alignment: Alignment.topRight,
                    children: [
                      Text(
                        widget.text,
                        style: const TextStyle(
                          color: kBlack,
                          fontWeight: FontWeight.w500,
                          fontSize: 10,
                        ),
                      ),
                      Positioned(
                        top: -17,
                        right: -17,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: kDarkBlueOpacity,
                            padding: const EdgeInsets.all(1),
                            minimumSize: Size.zero,
                            shape: const CircleBorder(),
                            elevation: 0,
                          ),
                          onPressed: () {
                            setState(() {
                              show = false;
                            });
                            Stream.periodic(
                              const Duration(
                                milliseconds: 600,
                              ),
                            ).take(1).listen(
                              (event) {
                                setState(() {
                                  showContainer = true;
                                });
                              },
                            );
                          },
                          child: const Icon(
                            Icons.close_outlined,
                            color: kVioletVeryPale,
                            size: 12,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
    );
  }
}
