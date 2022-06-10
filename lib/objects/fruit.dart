class Fruit {
  final String genus;
  final String name;
  final int id;

  final String family;
  final String order;
  final double carbohydrates;
  final double protein;
  final double fat;
  final double calories;
  final double sugar;

  const Fruit({
    required this.genus,
    required this.name,
    required this.id,
    required this.family,
    required this.order,
    required this.carbohydrates,
    required this.protein,
    required this.fat,
    required this.calories,
    required this.sugar,
  });

  factory Fruit.fromJson(Map<String, dynamic> json) {
    return Fruit(
      genus: json['genus'],
      name: json['name'],
      id: json['id'],
      family: json['family'],
      order: json['order'],
      carbohydrates: json['carbohydrates'],
      protein: json['protein'],
      fat: json['fat'],
      calories: json['calories'],
      sugar: json['sugar'],
    );
  }

  @override
  String toString() {
    return 'Fruit{genus: $genus, name: $name, id: $id, family: $family, order: $order, carbohydrates: $carbohydrates, protein: $protein, fat: $fat, calories: $calories, sugar: $sugar}';
  }
}
