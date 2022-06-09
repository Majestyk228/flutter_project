import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:thefruityshaker/components/cards.dart';
import '../constants.dart' as Constants;
import '../globals.dart';
class FavoriteWidget extends StatefulWidget {

  const FavoriteWidget({Key? key}) : super(key: key);

  @override
  State<FavoriteWidget> createState() => _FavoriteWidgetState();
}

class _FavoriteWidgetState extends State<FavoriteWidget> {


  void initState() {

    super.initState();
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
           "Favoris",
          textAlign: TextAlign.center,
          overflow: TextOverflow.ellipsis,
        ),
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
                padding: const EdgeInsets.only(top: 32, left: 16),
                child: Column(
                  children: [
                    Text(
                      "Vos Cocktails Favoris !",
                      style: Theme.of(context).textTheme.headline4,
                    ),

                    ListView.builder(
                      shrinkWrap: true,
                      addRepaintBoundaries: false,
                      itemCount: favCocktails.length,
                      itemBuilder: (context, index) {
                        return CardCustom(cocktail: favCocktails[index]);
                      },
                    )

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
