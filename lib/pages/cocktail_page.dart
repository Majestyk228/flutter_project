import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:thefruityshaker/components/cards.dart';
import 'package:thefruityshaker/components/fruit_cards.dart';

import '../objects/cocktail.dart';
class CocktailWidget extends StatefulWidget {
  const CocktailWidget({Key? key}) : super(key: key);


  @override
  State<CocktailWidget> createState() => _CocktailWidgetState();
}


class _CocktailWidgetState extends State<CocktailWidget> {
  var cocktails=[];
  @override
  void initState() {
    refreshCocktails();
    super.initState();
  }
  //fonction effectuant la requete vers l'API
  Future refreshCocktails() async {
    //endpoint
    Uri uri = Uri.parse("https://www.thecocktaildb.com/api/json/v1/1/search.php?s=");

    //methode get du package HTTP
    final response = await http.get(uri);

    //parsing du JSON de la réponse
    var data = json.decode(response.body);
    var drink = data["drinks"];
    this.cocktails = [];
    setState(() {
      for (var i = 0; i < drink.length; i++) {
        Cocktail unCocktail = Cocktail(
          idDrink: drink[i]['idDrink'],
          strDrink: drink[i]['strDrink'],
          strDrinkThumb: drink[i]['strDrinkThumb'],
          strIngredient1: drink[i]['strIngredient1'],
          strIngredient2: drink[i]['strIngredient2'],
          strIngredient3: drink[i]['strIngredient3'],
          strIngredient4: drink[i]['strIngredient4'],
          strIngredient5: drink[i]['strIngredient5'],
          strIngredient6: drink[i]['strIngredient6'],
          strIngredient7: drink[i]['strIngredient7'],
          strMeasure1: drink[i]['strMeasure1'],
          strMeasure2: drink[i]['strMeasure2'],
          strMeasure3: drink[i]['strMeasure3'],
          strMeasure4: drink[i]['strMeasure4'],
          strMeasure5: drink[i]['strMeasure5'],
          strMeasure6: drink[i]['strMeasure6'],
          strMeasure7: drink[i]['strMeasure7'],
        );
        cocktails.add(unCocktail);

      }

    });
    print(cocktails[0]);
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
                            Align(
                              child: Text(
                                "Cocktails",
                                style: Theme.of(context).textTheme.headline2,
                              ),
                              alignment: Alignment.centerLeft,
                            ),
                            SizedBox(
                              //height: MediaQuery.of(context).size.width,
                              height: 650,
                              //width: 150,
                              child: RefreshIndicator(
                                onRefresh: refreshCocktails,
                                child: GridView.builder(
                                  itemCount: cocktails.length,
                                  itemBuilder: (context, index) {
                                    return CardCustom(
                                      cocktail: cocktails[index]??Cocktail(strDrink: "Loading",strDrinkThumb:"https://upload.wikimedia.org/wikipedia/commons/b/b1/Loading_icon.gif?20151024034921"),
                                    );
                                    //return ListTile(title: Text(fruits[index]),);
                                  },
                                  gridDelegate:
                                  const SliverGridDelegateWithMaxCrossAxisExtent(
                                    maxCrossAxisExtent: 200,
                                  ),
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
