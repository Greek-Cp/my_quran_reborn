import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../component/button.dart';
import '../component/text.dart';
import 'home.dart';

class Intro extends StatelessWidget {
  static String routingName = "/intro";
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        body: Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      mainAxisSize: MainAxisSize.max,
      children: [
        SizedBox(
          height: 130,
        ),
        Expanded(
          child: Column(
            children: [
              Center(child: Image.asset("assets/ic_myquran.png")),
              TextComponent.TextTittle("My Quran"),
              TextComponent.TextDescription("Baca Al-Quran Dengan Mudah"),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: ButtonComponent.MainButton(
                "Baca Sekarang",
                () =>
                    {Navigator.pushNamed(context, Home.routeName.toString())}),
          ),
        )
      ],
    ));
  }
}
