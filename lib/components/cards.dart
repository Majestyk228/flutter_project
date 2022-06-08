import 'package:flutter/material.dart';

import '../pages/cocktail_details_page.dart';

class CardCustom extends StatelessWidget {
  final String title;
  final String urlImage;

  const CardCustom({Key? key, required this.title, required this.urlImage})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        //print("appuie sur "+title);
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => CocktailDetail(
                    title: title,
                    urlImage: urlImage,
                  )),
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
                  child: Image.network(urlImage),
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              Text(
                title,
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
