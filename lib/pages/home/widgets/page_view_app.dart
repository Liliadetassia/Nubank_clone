import 'package:flutter/material.dart';
import 'package:nubankclone/pages/home/widgets/card_app.dart';
import 'package:nubankclone/pages/home/widgets/first_card.dart';
import 'package:nubankclone/pages/home/widgets/secont_card.dart';
import 'package:nubankclone/pages/home/widgets/third_card.dart';

class PageViewApp extends StatelessWidget {
  final double top;
  final ValueChanged<int> onChanged;
  final GestureDragUpdateCallback onPanUpdate;
  final bool showMenu;

  const PageViewApp(
      {Key? key,
      required this.top,
      required this.onChanged,
      required this.onPanUpdate,
      required this.showMenu})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return AnimatedPositioned(
      duration: Duration(milliseconds: 250),
      curve: Curves.easeOut,
      top: top,
      height: MediaQuery.of(context).size.height * .45,
      left: 0,
      right: 0,
      child: GestureDetector(
        onPanUpdate: onPanUpdate,
        child: PageView(
          onPageChanged: onChanged,
          physics: showMenu
              ? NeverScrollableScrollPhysics()
              : BouncingScrollPhysics(),
          children: <Widget>[
            CardApp(
              child: FirstCard(),
            ),
            CardApp(
              child: SecontCard(),
            ),
            CardApp(
              child: ThirdCard(),
            ),
          ],
        ),
      ),
    );
  }
}
