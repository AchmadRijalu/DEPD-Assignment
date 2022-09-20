import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:week2dped_assignment/widgets/Card_ListBuah.dart';

class MainContent extends StatefulWidget {
  const MainContent({super.key});

  @override
  State<MainContent> createState() => _MainContentState();
}

class _MainContentState extends State<MainContent> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
        "Buah Segar Kita Semua",
        style: Theme.of(context)!
            .textTheme
            .headline6!
            .copyWith(color: Colors.white, fontWeight: FontWeight.w600),
      )),
      body: Center(
        child:
            Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
          FittedBox(
              child: Stack(
                children: [
                  Container(
                      color: Colors.amber,
                      height: 60,
                      child: ClipRRect(
                        child: Image.asset(
                          "assets/images/Orange.jpg",
                          width: 110,
                          fit: BoxFit.cover,
                        ),
                      )),
                  SafeArea(
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [],
                      ),
                    ),
                  ),
                ],
              ),
              fit: BoxFit.fill),
          // SingleChildScrollView(
          //   scrollDirection: Axis.horizontal,
          //   child: Row(children: [

          //   ]),
          // )
          Container(
            child: Row(children: [CardBuah()]),
          )
        ]),
      ),
    );
  }
}
