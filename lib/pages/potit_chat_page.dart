import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../constants.dart' as Constants;
import 'dart:math';

class PotitChat extends StatefulWidget {
  const PotitChat({Key? key}) : super(key: key);

  @override
  State<PotitChat> createState() => _PotitChatState();
}

class _PotitChatState extends State<PotitChat> {
  var randomInt = 1;

  @override
  void initState() {
    getRandomInt();
    super.initState();
  }

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
          Constants.POTIT_CHAT,
          textAlign: TextAlign.center,
          overflow: TextOverflow.ellipsis,
        ),
        titleTextStyle: Theme.of(context).textTheme.headline6,
        centerTitle: false,
        backgroundColor: const Color(0xffF6F5F4),
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Text(
              Constants.POTIT_TITLE,
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
              textAlign: TextAlign.center,
            ),
            Padding(
              padding: const EdgeInsets.all(36.0),
              child: FadeInImage(
                image: NetworkImage('https://http.cat/' +
                    Constants.HTTP_CODES[randomInt].toString()),
                placeholder: AssetImage("assets/images/reload-cat.gif"),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void getRandomInt() {
    Random random = new Random();
    randomInt =
        random.nextInt(Constants.HTTP_CODES.length);
  }
}
