import 'dart:convert';

import 'package:flutter/material.dart';

import '../components/fruit_cards.dart';

import 'package:http/http.dart' as http;

class FruitWidget extends StatefulWidget {
  const FruitWidget({Key? key}) : super(key: key);

  @override
  State<FruitWidget> createState() => _FruitWidgetState();
}

class _FruitWidgetState extends State<FruitWidget> {
  //liste dynamique des fruits données par l'API
  var fruits = [];

  @override
  void initState() {
    refreshFruits();
    super.initState();
  }

  //fonction effectuant la requete vers l'API
  Future refreshFruits() async {
    //endpoint
    Uri uri = Uri.parse("https://www.fruityvice.com/api/fruit/all");

    //methode get du package HTTP
    final response = await http.get(uri);

    //parsing du JSON de la réponse
    var data = json.decode(response.body);
    this.fruits = [];
    setState(() {
      for (var i = 0; i < data.length; i++) {
        fruits.add(data[i]);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Color.fromHex('#d4d1cc'),
      backgroundColor: const Color.fromRGBO(212, 209, 204, 100),
      body: Center(
        child: Column(
          children: [
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
                        child: Wrap(
                          children: [
                            SizedBox(
                              //height: MediaQuery.of(context).size.width,
                              height: 650,
                              //width: 150,
                              child: RefreshIndicator(
                                onRefresh: refreshFruits,
                                child: ListView.builder(
                                  shrinkWrap: true,
                                  addRepaintBoundaries: false,
                                  itemCount: fruits.length,
                                  itemBuilder: (context, index) {
                                    return FruitCardCustom(
                                      title: fruits[index]["name"],
                                    );
                                    //return ListTile(title: Text(fruits[index]),);
                                  },
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
