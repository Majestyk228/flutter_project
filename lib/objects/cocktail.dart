class Cocktail {
  String? idDrink;
  String? strDrink;
  String? strDrinkThumb;
  String? strIngredient1;
  String? strIngredient2;
  String? strIngredient3;
  String? strIngredient4;
  String? strIngredient5;
  String? strIngredient6;
  String? strIngredient7;
  String? strMeasure1;
  String? strMeasure2;
  String? strMeasure3;
  String? strMeasure4;
  String? strMeasure5;
  String? strMeasure6;
  String? strMeasure7;

  Cocktail(
      {this.idDrink,
      this.strDrink,
      this.strDrinkThumb,
      this.strIngredient1,
      this.strIngredient2,
      this.strIngredient3,
      this.strIngredient4,
      this.strIngredient5,
      this.strIngredient6,
      this.strIngredient7,
      this.strMeasure1,
      this.strMeasure2,
      this.strMeasure3,
      this.strMeasure4,
      this.strMeasure5,
      this.strMeasure6,
      this.strMeasure7});

  factory Cocktail.fromJson(Map<String, dynamic> json) {
    return Cocktail(
      idDrink: json['idDrink'],
      strDrink: json['strDrink'],
      strDrinkThumb: json['strDrinkThumb'],
      strIngredient1: json['strIngredient1'],
      strIngredient2: json['strIngredient2'],
      strIngredient3: json['strIngredient3'],
      strIngredient4: json['strIngredient4'],
      strIngredient5: json['strIngredient5'],
      strIngredient6: json['strIngredient6'],
      strIngredient7: json['strIngredient7'],
      strMeasure1: json['strMeasure1'],
      strMeasure2: json['strMeasure2'],
      strMeasure3: json['strMeasure3'],
      strMeasure4: json['strMeasure4'],
      strMeasure5: json['strMeasure5'],
      strMeasure6: json['strMeasure6'],
      strMeasure7: json['strMeasure7'],
    );
  }
}
