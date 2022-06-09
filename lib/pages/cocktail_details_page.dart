import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:thefruityshaker/objects/cocktail.dart';
import '../constants.dart' as Constants;

class CocktailDetail extends StatefulWidget {
  final Cocktail cocktail;

  const CocktailDetail({Key? key, required this.cocktail}) : super(key: key);

  @override
  State<CocktailDetail> createState() => _CocktailDetailState();
}

class _CocktailDetailState extends State<CocktailDetail> {
  var listofingredients = [];
  void initState() {

    if(widget.cocktail.strIngredient1!=null){
      listofingredients.add(widget.cocktail.strIngredient1);
    }
    if(widget.cocktail.strIngredient2!=null){
      listofingredients.add(widget.cocktail.strIngredient2);
    }
    if(widget.cocktail.strIngredient3!=null){
      listofingredients.add(widget.cocktail.strIngredient3);
    }
    if(widget.cocktail.strIngredient4!=null){
      listofingredients.add(widget.cocktail.strIngredient4);
    }
    if(widget.cocktail.strIngredient5!=null){
      listofingredients.add(widget.cocktail.strIngredient5);
    }
    if(widget.cocktail.strIngredient6!=null){
      listofingredients.add(widget.cocktail.strIngredient6);
    }
    if(widget.cocktail.strIngredient7!=null){
      listofingredients.add(widget.cocktail.strIngredient7);
    }
    print(listofingredients);

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
          widget.cocktail.strDrink ?? "LoadingFailed",
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
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 100,
                        width: 100,
                        child: Image.network(widget.cocktail.strDrinkThumb ??
                            "https://upload.wikimedia.org/wikipedia/commons/thumb/a/a2/Nuvola_apps_error.svg/1024px-Nuvola_apps_error.svg.png"),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Text(
                          widget.cocktail.strDrink ?? "LoadingFailed",
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
                      Constants.INGREDIENT_TEXT,
                      style: Theme.of(context).textTheme.headline4,
                    ),
                    ListView.builder(
                      shrinkWrap: true,
                      addRepaintBoundaries: false,
                      itemCount: listofingredients.length,
                      itemBuilder: (context, index) {
                        return Text(listofingredients[index]);
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
