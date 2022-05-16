import 'package:flutter/material.dart';

import '../components/fruit_cards.dart';

class FruitWidget extends StatelessWidget {
  const FruitWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        //backgroundColor: Color.fromHex('#d4d1cc'),
        backgroundColor: const Color.fromRGBO(212, 209, 204, 100),
        body: Center(
          child: Column(children: [
            Expanded(
                child: Container(
                    decoration: const BoxDecoration(
                        color: Color.fromRGBO(212, 209, 204, 100)),
                    child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Expanded(
                              child: SingleChildScrollView(
                                  scrollDirection: Axis.vertical,
                                  child: Wrap(children: const [
                                    FruitCardCustom(
                                      title: 'BARK',
                                    ),
                                    FruitCardCustom(
                                      title: 'BARK',
                                    ),
                                    FruitCardCustom(
                                      title: 'BARK',
                                    ),
                                    FruitCardCustom(
                                      title: 'BARK',
                                    ),
                                    FruitCardCustom(
                                      title: 'BARK',
                                    ),
                                    FruitCardCustom(
                                      title: 'BARK',
                                    ),
                                    FruitCardCustom(
                                      title: 'BARK',
                                    ),
                                    FruitCardCustom(
                                      title: 'BARK',
                                    ),
                                    FruitCardCustom(
                                      title: 'BARK',
                                    ),
                                    FruitCardCustom(
                                      title: 'BARK',
                                    ),
                                  ])))
                        ]))),
          ]),
        ));
  }
}
