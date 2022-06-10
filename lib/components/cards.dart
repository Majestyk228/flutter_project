import 'package:flutter/material.dart';
import 'package:thefruityshaker/objects/cocktail.dart';

import '../pages/cocktail_details_page.dart';

class CardCustom extends StatelessWidget {
  final Cocktail cocktail;

  const CardCustom({Key? key, required this.cocktail}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => CocktailDetail(
              cocktail: cocktail,
            ),
          ),
        );
      },
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Container(
          child: Column(
            children: [
              Padding(
                //padding: const EdgeInsets.all(8.0),
                padding: const EdgeInsets.only(top: 17),
                child: Container(
                  height: 85,
                  width: 93,
                  child: Image.network(
                    cocktail.strDrinkThumb ??
                        "https://upload.wikimedia.org/wikipedia/commons/thumb/a/a2/Nuvola_apps_error.svg/1024px-Nuvola_apps_error.svg.png",
                  ),
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              Text(
                cocktail.strDrink ?? "LoadingFailed",
                textAlign: TextAlign.center,
                overflow: TextOverflow.ellipsis,
              ),
            ],
          ),
          width: 131,
          height: 148,
          decoration: const BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.grey,
                spreadRadius: 5,
                blurRadius: 7,
                offset: Offset(0, 3),
              ),
            ],
            color: Color(0xffF6F5F4),
            borderRadius: BorderRadius.all(Radius.circular(15)),
          ),
        ),
      ),
    );
  }
}
