import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:week2dped_assignment/common/styles.dart';
import 'package:week2dped_assignment/widgets/Card_ListBuah.dart';
import 'package:scaffold_gradient_background/scaffold_gradient_background.dart';
import 'package:week2dped_assignment/widgets/Favorite_Button.dart';

import '../model/buah.dart';

class MainContent extends StatefulWidget {
  const MainContent({
    super.key,
  });

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
          child: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                primaryColor,
                secondaryColor,
              ],
            )),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Stack(
                    children: [
                      Container(
                          width: double.infinity,
                          height: 220,
                          child: ClipRRect(
                            child: Image.asset(
                              "assets/images/Orange.jpg",
                              fit: BoxFit.cover,
                            ),
                          )),
                      SafeArea(
                          child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8),
                            child: Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                  color: Colors.white70),
                              child: FavoriteButton(),
                            ),
                          )
                        ],
                      ))
                    ],
                  ),
                  Container(
                    padding: const EdgeInsets.all(5),
                    color: Colors.black12,
                    height: 100,
                    child: Flexible(
                      child: ListView.builder(
                        physics: BouncingScrollPhysics(),
                        scrollDirection: Axis.horizontal,
                        shrinkWrap: true,
                        itemBuilder: ((context, index) {
                          final Buah buah = buahList[index];
                          return CardBuah(buah: buah);
                        }),
                        itemCount: buahList.length,
                      ),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(10),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Selamat Datang di Halaman Buah",
                            style: Theme.of(context)!
                                .textTheme
                                .titleLarge!
                                .copyWith(fontWeight: FontWeight.w800),
                          )
                        ]),
                  ),
                  Expanded(
                      child: Container(
                    padding: const EdgeInsets.all(8),
                    child: SingleChildScrollView(
                        physics: BouncingScrollPhysics(),
                        child: Column(
                          children: [
                            Container(
                              child: Text(
                                "Indonesia adalah negara tropis. Sehingga negeri kita menyimpan keanekaragaman jenis tumbuhan tertinggi di dunia. Terdapat 266 jenis buah-buahan yang dianggap asli Indonesia.",
                                style: Theme.of(context)!
                                    .textTheme
                                    .subtitle2!
                                    .copyWith(fontWeight: FontWeight.w100),
                              ),
                            ),
                            SizedBox(
                              height: 4,
                            ),
                            Container(
                              child: Text(
                                " Buah memiliki banyak manfaat bagi tubuh.  Selain dapat mencukupi gizi yang kita butuhkan buah juga dapat mencegah penyakit. Menurut badan kesehatan dunia WHO manusia sebaiknya mengkonsumsi buah dan sayuran setidaknya 400g/hari agar tubuh sehat.",
                                style: Theme.of(context)!
                                    .textTheme
                                    .subtitle2!
                                    .copyWith(fontWeight: FontWeight.w100),
                              ),
                            ),
                            SizedBox(
                              height: 13,
                            ),
                            Container(
                              child: Text(
                                "Terdapat manfaat mengkonsumsi buah secara rutin berikut ini:",
                                style: Theme.of(context)!
                                    .textTheme
                                    .subtitle2!
                                    .copyWith(fontWeight: FontWeight.w100),
                              ),
                            ),
                            SizedBox(
                              height: 12,
                            ),
                            Container(
                              width: double.infinity,
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      margin: const EdgeInsets.only(left: 12),
                                      child: Text(
                                        "1. Sumber Asupan Vitamin dan Mineral",
                                        style: Theme.of(context)!
                                            .textTheme
                                            .subtitle2!
                                            .copyWith(
                                                fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 8,
                                    ),
                                    Container(
                                        child: Text(
                                      "Buah-buahan merupakan asupan vitamin dan mineral yang banyak. Beberapa nutrisi penting dari buah-buahan diantaranya folat, vitamin A, B, B1, B6, C, dan kalium. Kandungan vitamin dan mineral pada buah-buahan berbeda-beda. Namun, semuanya sama-sama memberikan nutrisi yang baik bagi tubuh. Sebagian vitamin dan mineral yang terkandung dalam buah juga mengandung antioksidan. Zat ini penting untuk melawan radikal bebas dan menjaga sistem daya tahan tubuh agar tetap prima. ",
                                      style: Theme.of(context)!
                                          .textTheme
                                          .subtitle2!
                                          .copyWith(
                                              fontWeight: FontWeight.w100),
                                    )),
                                    SizedBox(
                                      height: 12,
                                    ),
                                    Container(
                                      margin: const EdgeInsets.only(left: 12),
                                      child: Text(
                                        "2. Sebagai Asupan Serat Pangan yang Sangat Baik",
                                        style: Theme.of(context)!
                                            .textTheme
                                            .subtitle2!
                                            .copyWith(
                                                fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 8,
                                    ),
                                    Container(
                                      child: Text(
                                        "Buah-buahan adalah salah satu sumber serat makanan yang sangat baik bagi tubuh. Manfaat makan buah setiap hari dapat membantu menjaga kesehatan usus, mencegah sembelit, dan masalah pencernaan lainnya. Kebiasaan makan asupan tinggi serat juga dapat mengurangi risiko kanker usus. Selain menjaga kesehatan pencernaan, makan makanan berserat juga membantu menurunkan kadar kolesterol jahat di dalam tubuh.    ",
                                        style: Theme.of(context)!
                                            .textTheme
                                            .subtitle2!
                                            .copyWith(
                                                fontWeight: FontWeight.w100),
                                      ),
                                    )
                                  ]),
                            )
                          ],
                        )),
                  ))
                ]),
          ),
        ));
  }
}
