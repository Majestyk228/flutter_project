import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../constants.dart' as Constants;

class CocktailDetail extends StatefulWidget {
  final String title;

  const CocktailDetail({Key? key, required this.title}) : super(key: key);

  @override
  State<CocktailDetail> createState() => _CocktailDetailState();
}

class _CocktailDetailState extends State<CocktailDetail> {
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
                  Constants.INGREDIENT_TEXT,
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
