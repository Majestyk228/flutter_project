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
  var fruit;

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

    setState(() {
      //récupération du fruit
      fruit = Fruit(genus: data["genus"], name: data["name"], id: data["id"]);
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
                          this.fruit.name,
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
                    Text(
                      Constants.NUTRIMENT_TEXT,
                      style: Theme.of(context).textTheme.headline4,
                    ),
                    Row(
                      children: [
                        Text("Mes fesses 1"),
                        Spacer(),
                        Text("Mes fesses 2"),
                      ],
                    ),
                    Row(
                      children: [
                        Text("Mes fesses 3"),
                        Spacer(),
                        Text("Mes fesses 4"),
                      ],
                    ),
                    Row(
                      children: [
                        Text("Mes fesses 5"),
                        Spacer(),
                        Text("Mes fesses 6"),
                      ],
                    ),
                    Row(
                      children: [
                        Text("Mes fesses 7"),
                        Spacer(),
                        Text("Mes fesses 8"),
                      ],
                    ),
                    Row(
                      children: [
                        Text("Mes fesses 9"),
                        Spacer(),
                        Text("Mes fesses 10"),
                      ],
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
