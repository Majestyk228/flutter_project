import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:thefruityshaker/pages/potit_chat_page.dart';
import '../constants.dart' as Constants;
import 'package:flutter_svg/svg.dart';

import '../components/dev_cards.dart';
import 'game_page.dart';

class AboutWidget extends StatelessWidget {
  const AboutWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        alignment: Alignment.center,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 36, bottom: 36),
              child: Text(
                Constants.ABOUT,
                style: Theme.of(context).textTheme.headline3,
                textAlign: TextAlign.center,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 36),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SvgPicture.asset("assets/icons/favorite_fill.svg"),
                  Text(
                    Constants.ABOUT_DESC1,
                    textAlign: TextAlign.center,
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                  SvgPicture.asset("assets/icons/favorite_fill.svg"),
                ],
              ),
            ),
            Text(
              Constants.DEV_TEAM,
              textAlign: TextAlign.center,
              overflow: TextOverflow.ellipsis,
              style: Theme.of(context).textTheme.headline6,
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 36),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  DevCard(
                    image: Image.asset("assets/images/unknown.png"),
                    pseudo: "Théo TORRES\nalias\nEredwen",
                  ),
                  DevCard(
                    image: Image.asset("assets/images/barney.png"),
                    pseudo: "Sarah KOUTA\nalias\nTitan",
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 8),
              child: Text(
                Constants.FUN_RANDOM,
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.headline6,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  style: Theme.of(context).textTheme.bodyMedium,
                  children: const <TextSpan>[
                    TextSpan(text: Constants.EREDWEN_TITAN1),
                    TextSpan(
                        text: Constants.EREDWEN_TITAN2,
                        style: TextStyle(fontWeight: FontWeight.bold)),
                    TextSpan(text: Constants.EREDWEN_TITAN3),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                Constants.ANNOUNCE,
                textAlign: TextAlign.center,
                overflow: TextOverflow.visible,
                style: Theme.of(context).textTheme.bodyMedium,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  style: Theme.of(context).textTheme.bodyMedium,
                  children: const <TextSpan>[
                    TextSpan(text: Constants.ANNOUNCE_KITTY1),
                    TextSpan(
                        text: Constants.ANNOUNCE_KITTY2,
                        style: TextStyle(fontWeight: FontWeight.bold)),
                    TextSpan(text: Constants.ANNOUNCE_KITTY3),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  style: Theme.of(context).textTheme.bodyMedium,
                  children: const <TextSpan>[
                    TextSpan(text: Constants.ANNOUNCE_SURPRISE1),
                    TextSpan(
                      text: Constants.ANNOUNCE_SURPRISE2,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    TextSpan(text: Constants.ANNOUNCE_SURPRISE3),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: const Color(0xffC20114), // Background color
                  onPrimary: Colors.white,
                  fixedSize: const Size(230, 70),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const PotitChat(),
                    ),
                  );
                },
                child: const Text(
                  "GIVE ME THE\nPOTIT CHAT",
                  style: TextStyle(
                    fontSize: 16.0,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.white, // Background color
                  onPrimary: const Color(0xffC20114),
                  fixedSize: const Size(230, 70),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const TheGame()),
                  );
                },
                child: const Text(
                  "SURPRISE ME",
                  style: TextStyle(
                    fontSize: 16.0,
                    color: Color(0xffC20114),
                    fontWeight: FontWeight.bold,
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
