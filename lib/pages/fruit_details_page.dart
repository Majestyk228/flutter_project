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
    Uri uri = Uri.parse("https://www.fruityvice.com/api/fruit/"+widget.title);

    //methode get du package HTTP
    final response = await http.get(uri);

    //parsing du JSON de la réponse
    var data = json.decode(response.body);
    //this.fruits = [];
    setState(() {
      //for (var i = 0; i < data.length; i++) {
        //fruits.add(data[i]);
      //}
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
        title: Text(widget.title),
        titleTextStyle: Theme.of(context).textTheme.headline6,
        centerTitle: false,
        backgroundColor: const Color(0xffF6F5F4),
        actions: <Widget>[
          IconButton(
            icon: SvgPicture.asset("assets/icons/star_light.svg"),
            onPressed: () {
              // do something
            },
          )
        ],
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
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        color: Colors.red,
                        height: 100,
                        width: 100,
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Text(
                          widget.title,
                          style: Theme.of(context).textTheme.headline3,
                          overflow: TextOverflow.clip,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 32, left: 16),
                child: Text(
                  Constants.NUTRIMENT_TEXT,
                  style: Theme.of(context).textTheme.headline4,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
