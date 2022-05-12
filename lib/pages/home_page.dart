import 'package:flutter/material.dart';

import '../components/cards.dart';
import '../constants.dart' as Constants;

class HomeWidget extends StatelessWidget {
  const HomeWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(25.0),
            child: Text(
              Constants.WELCOME_MESSAGE,
              style: Theme.of(context).textTheme.headline4,
              textAlign: TextAlign.center,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(26.0),
            child: Text(
              Constants.SECONDARY_WELCOME,
              style: Theme.of(context).textTheme.headline6,
              textAlign: TextAlign.center,
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Wrap(
              children: const <Widget>[
//répétion pour tester le wrap
                CardCustom(title: "Captain America"),
                CardCustom(title: "Thor"),
                CardCustom(title: "Iron Man"),
                CardCustom(title: "Le Caillou"),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
