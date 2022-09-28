import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../model/buah.dart';

class CardBuah extends StatelessWidget {
  final Buah buah;
  const CardBuah({super.key, required this.buah});

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(right: 8),
        height: 130,
        width: 100,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          image: DecorationImage(
              image: AssetImage(buah.imageAsset!), fit: BoxFit.cover),
        ));
  }
}
