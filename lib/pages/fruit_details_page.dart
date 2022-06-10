import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../constants.dart' as Constants;
import '../objects/fruit.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class FruitDetail extends StatefulWidget {
  final String title;

  const FruitDetail({Key? key, required this.title}) : super(key: key);

  @override
  State<FruitDetail> createState() => _FruitDetailState();
}

class _FruitDetailState extends State<FruitDetail> {
  Fruit? fruit;

  @override
  void initState() {
    getFruit();
    super.initState();
  }

  Future getFruit() async {
    //endpoint
    Uri uri = Uri.parse("https://www.fruityvice.com/api/fruit/" + widget.title);

    //methode get du package HTTP
    final response = await http.get(uri);

    //parsing du JSON de la réponse
    var data = json.decode(response.body);
    print(data["nutritions"]["carbohydrates"]);

    setState(() {
      //récupération du fruit
      fruit = Fruit(
        genus: data["genus"] ?? "N/C",
        name: data["name"]?? "N/C",
        id: data["id"]?? "N/C",
        family: data["family"]?? "N/C",
        order: data["order"]?? "N/C",
        carbohydrates: data["nutritions"]["carbohydrates"] + 0.0 ?? 0.0,
        protein: data["nutritions"]["protein"] + 0.0 ?? 0.0,
        fat: data["nutritions"]["fat"] + 0.0 ?? 0,
        calories: data["nutritions"]["calories"] + 0.0 ?? 0,
        sugar: data["nutritions"]["sugar"] + 0.0 ?? 0,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: SvgPicture.asset("assets/icons/back_arrow.svg"),
          onPressed: () {
            //pop view
            Navigator.pop(context);
          },
        ),
        title: Text(
          widget.title,
          textAlign: TextAlign.center,
          overflow: TextOverflow.ellipsis,
        ),
        titleTextStyle: Theme.of(context).textTheme.headline6,
        centerTitle: false,
        backgroundColor: const Color(0xffF6F5F4),
      ),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Text(
                          //fruit.carbohydrates!=null ? fruit.carbohydrates.toString() + "g/100g" : "N/A",
                          fruit?.name ?? widget.title,
                          style: Theme.of(context).textTheme.headline3,
                          textAlign: TextAlign.center,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 32, left: 16),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 32),
                      child: Text(
                        Constants.NUTRIMENT_TEXT,
                        style: Theme.of(context).textTheme.headline4,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8,left: 8, bottom: 8, right: 16),
                      child: Row(
                        children: [
                          Text(
                            Constants.GENUS,
                            style: Theme.of(context).textTheme.headline6,
                          ),
                          const Spacer(),
                          Text(
                            fruit?.genus ?? "N/A",
                            style: Theme.of(context).textTheme.headline6,
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8,left: 8, bottom: 8, right: 16),
                      child: Row(
                        children: [
                          Text(
                            Constants.NAME,
                            style: Theme.of(context).textTheme.headline6,
                          ),
                          const Spacer(),
                          Text(
                            fruit?.name ?? "N/A",
                            style: Theme.of(context).textTheme.headline6,
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8,left: 8, bottom: 8, right: 16),
                      child: Row(
                        children: [
                          Text(
                            Constants.ID,
                            style: Theme.of(context).textTheme.headline6,
                          ),
                          const Spacer(),
                          Text(
                            fruit?.id!=null ? fruit!.id.toString() : "N/A",
                            style: Theme.of(context).textTheme.headline6,
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8,left: 8, bottom: 8, right: 16),
                      child: Row(
                        children: [
                          Text(
                            Constants.FAMILY,
                            style: Theme.of(context).textTheme.headline6,
                          ),
                          const Spacer(),
                          Text(
                            fruit?.family ?? "N/A",
                            style: Theme.of(context).textTheme.headline6,
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8,left: 8, bottom: 8, right: 16),
                      child: Row(
                        children: [
                          Text(
                            Constants.ORDER,
                            style: Theme.of(context).textTheme.headline6,
                          ),
                          const Spacer(),
                          Text(
                            fruit?.order ?? "N/A",
                            style: Theme.of(context).textTheme.headline6,
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8,left: 8, bottom: 8, right: 16),
                      child: Row(
                        children: [
                          Text(
                            Constants.CARBO,
                            style: Theme.of(context).textTheme.headline6,
                          ),
                          const Spacer(),
                          Text(
                              fruit?.carbohydrates!=null ? fruit!.carbohydrates.toString()+"g/100g" : "N/A g/100g",
                            style: Theme.of(context).textTheme.headline6,
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8,left: 8, bottom: 8, right: 16),
                      child: Row(
                        children: [
                          Text(
                            Constants.PROTEINS,
                            style: Theme.of(context).textTheme.headline6,
                          ),
                          const Spacer(),
                          Text(
                            fruit?.protein!=null ? fruit!.protein.toString() + "g/100g" : "N/A g/100g",
                            style: Theme.of(context).textTheme.headline6,
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8,left: 8, bottom: 8, right: 16),
                      child: Row(
                        children: [
                          Text(
                            Constants.FAT,
                            style: Theme.of(context).textTheme.headline6,
                          ),
                          const Spacer(),
                          Text(
                            //fruit.carbohydrates!=null ? fruit.carbohydrates.toString() + "g/100g" : "N/A",
                            fruit?.fat!=null ? fruit!.fat.toString() + "g/100g" : "N/A g/100g",
                            style: Theme.of(context).textTheme.headline6,
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8,left: 8, bottom: 8, right: 16),
                      child: Row(
                        children: [
                          Text(
                            Constants.CALORIES,
                            style: Theme.of(context).textTheme.headline6,
                          ),
                          const Spacer(),
                          Text(
                            //fruit.carbohydrates!=null ? fruit.carbohydrates.toString() + "g/100g" : "N/A",
                            fruit?.calories!=null ? fruit!.calories.toString() + "g/100g" : "N/A g/100g",
                            style: Theme.of(context).textTheme.headline6,
                          ),
                        ],
                      ),
                    ),Padding(
                      padding: const EdgeInsets.only(top: 8,left: 8, bottom: 8, right: 16),
                      child: Row(
                        children: [
                          Text(
                            Constants.SUGAR,
                            style: Theme.of(context).textTheme.headline6,
                          ),
                          const Spacer(),
                          Text(
                            //fruit.carbohydrates!=null ? fruit.carbohydrates.toString() + "g/100g" : "N/A",
                            fruit?.sugar!=null ? fruit!.sugar.toString() + "g/100g":"N/A g/100g",
                            style: Theme.of(context).textTheme.headline6,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
