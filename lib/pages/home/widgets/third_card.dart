import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ThirdCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(30),
      child: Column(
        children: <Widget>[
          SvgPicture.asset('assets/icons/gift-open-outline.svg',
              color: Colors.grey, semanticsLabel: 'eye'),
          Text('Nubank Rewards')
        ],
      ),
    );
  }
}
