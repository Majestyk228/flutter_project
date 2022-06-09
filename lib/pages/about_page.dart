import 'dart:ui';

import 'package:flutter/material.dart';
import '../constants.dart' as Constants;
import 'package:flutter_svg/svg.dart';

import '../components/dev_cards.dart';

class AboutWidget extends StatelessWidget {
  const AboutWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            Constants.ABOUT,
            style: Theme.of(context).textTheme.headline3,
            textAlign: TextAlign.center,
          ),
          Row(
            children: [
              SvgPicture.asset("assets/icons/favorite_fill.svg"),
              Spacer(),
              Text(
                Constants.ABOUT_DESC1,
                textAlign: TextAlign.center,
                overflow: TextOverflow.ellipsis,
              ),
              Spacer(),
              SvgPicture.asset("assets/icons/favorite_fill.svg"),
            ],
          ),
          Text(Constants.DEV_TEAM),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              DevCard(
                image: Image.asset("assets/images/unknown.png"),
                pseudo: "Théo TORRES\nalias\nEreddwen",
              ),
              DevCard(
                image: Image.asset("assets/images/barney.png"),
                pseudo: "Sarah KOUTA\nalias\nTitan",
              ),
            ],
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: const Color(0xffC20114), // Background color
              onPrimary: Colors.white,
              fixedSize: const Size(230, 70),
            ),
            onPressed: () {
              print("SUUUUUU");
            },
            child: Text("GIVE ME THE\nPOTIT CHAT"),
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
            primary: Colors.white, // Background color
            onPrimary: const Color(0xffC20114),
              fixedSize: const Size(230, 70),
          ),
            onPressed: () {
              print("SUUUUUU");
            },
            child: Text("SURPRISE ME"),
          ),
        ],
      ),
    );
  }
}
