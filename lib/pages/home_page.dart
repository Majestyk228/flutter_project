import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:thefruityshaker/objects/cocktail.dart';

import '../components/cards.dart';

import 'package:http/http.dart' as http;

import '../constants.dart' as Constants;

class HomeWidget extends StatefulWidget {
  const HomeWidget({Key? key}) : super(key: key);

  @override
  State<HomeWidget> createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget> {
  var cocktail = [];
  var compt = 0;

  @override
  void initState() {
    for (var i = 0; i < 4; i++) {
      refreshCocktails();
    }
    super.initState();
  }

  //fonction effectuant la requete vers l'API
  Future refreshCocktails() async {
    //endpoint
    Uri uri =
        Uri.parse("http://www.thecocktaildb.com/api/json/v1/1/random.php");

    //methode get du package HTTP
    final response = await http.get(uri);

    //parsing du JSON de la réponse
    var data = json.decode(response.body);
    var drink = data['drinks'];

    setState(() {
      Cocktail unCocktail = Cocktail(
        idDrink: drink[0]['idDrink'],
        strDrink: drink[0]['strDrink'],
        strDrinkThumb: drink[0]['strDrinkThumb'],
        strIngredient1: drink[0]['strIngredient1'],
        strIngredient2: drink[0]['strIngredient2'],
        strIngredient3: drink[0]['strIngredient3'],
        strIngredient4: drink[0]['strIngredient4'],
        strIngredient5: drink[0]['strIngredient5'],
        strIngredient6: drink[0]['strIngredient6'],
        strIngredient7: drink[0]['strIngredient7'],
        strMeasure1: drink[0]['strMeasure1'],
        strMeasure2: drink[0]['strMeasure2'],
        strMeasure3: drink[0]['strMeasure3'],
        strMeasure4: drink[0]['strMeasure4'],
        strMeasure5: drink[0]['strMeasure5'],
        strMeasure6: drink[0]['strMeasure6'],
        strMeasure7: drink[0]['strMeasure7'],
      );
      cocktail.add(unCocktail);
      compt++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(25.0),
            child: Text(
              Constants.WELCOME_MESSAGE,
              style: Theme.of(context).textTheme.headline4,
              textAlign: TextAlign.center,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(26.0),
            child: Text(
              Constants.SECONDARY_WELCOME,
              style: Theme.of(context).textTheme.headline6,
              textAlign: TextAlign.center,
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Wrap(
              children: <Widget>[
//répétion pour tester le wrap
                if (compt < 1)
                   CardCustom(
                    cocktail: Cocktail(strDrink: "Loading",strDrinkThumb:"https://upload.wikimedia.org/wikipedia/commons/b/b1/Loading_icon.gif?20151024034921"),
                  )
                else
                  CardCustom(
                    cocktail: cocktail[0],
                  ),
                if (compt < 2)
                   CardCustom(
                    cocktail: Cocktail(strDrink: "Loading",strDrinkThumb:"https://upload.wikimedia.org/wikipedia/commons/b/b1/Loading_icon.gif?20151024034921"),
                  )
                else
                  CardCustom(
                    cocktail: cocktail[1],
                  ),
                if (compt < 3)
                   CardCustom(
                     cocktail: Cocktail(strDrink: "Loading",strDrinkThumb:"https://upload.wikimedia.org/wikipedia/commons/b/b1/Loading_icon.gif?20151024034921"),
                  )
                else
                  CardCustom(
                    cocktail: cocktail[2],
                  ),
                if (compt < 4)
                   CardCustom(
                    cocktail: Cocktail(strDrink: "Loading",strDrinkThumb:"https://upload.wikimedia.org/wikipedia/commons/b/b1/Loading_icon.gif?20151024034921"),
                  )
                else
                  CardCustom(
                    cocktail: cocktail[3],
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
