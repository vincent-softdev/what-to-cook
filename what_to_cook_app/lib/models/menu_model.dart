class MenuModel {
  final String name;
  final String imageUrl;
  final String description;
  final int cookingTime;
  final double estimatedPrice;
  final List<String> ingredients;

  MenuModel({
    required this.name,
    required this.imageUrl,
    required this.description,
    required this.cookingTime,
    required this.estimatedPrice,
    required this.ingredients,
  });
}
