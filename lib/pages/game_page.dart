import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../constants.dart' as Constants;

class TheGame extends StatelessWidget {
  const TheGame({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffD3D0CB),
      appBar: AppBar(
        leading: IconButton(
          icon: SvgPicture.asset("assets/icons/back_arrow.svg"),
          onPressed: () {
            //pop view
            Navigator.pop(context);
          },
        ),
        title: const Text(
          Constants.THE_GAME,
          textAlign: TextAlign.center,
          overflow: TextOverflow.ellipsis,
        ),
        titleTextStyle: Theme.of(context).textTheme.headline6,
        centerTitle: false,
        backgroundColor: const Color(0xffF6F5F4),
      ),
      body: Center(
        child: Text(
          Constants.THE_GAME_MESSAGE,
          style: Theme.of(context).textTheme.headline3,
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
