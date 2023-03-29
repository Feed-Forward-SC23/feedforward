class CategoriesModel {
  CategoriesModel({required this.name, required this.path});
  final String name;
  final String path;
}

List categories = [
  CategoriesModel(name: "Packed Snacks", path: "assets/packed.png"),
  CategoriesModel(name: "Freshly Cooked", path: "assets/freshly.png"),
  CategoriesModel(name: "Beverage", path: "assets/beverage.png"),
  CategoriesModel(name: "Frozen Food", path: "assets/frozen.png"),
  CategoriesModel(name: "Bakery Food", path: "assets/bakery.png"),
  CategoriesModel(name: "Raw Food", path: "assets/raw.png"),
];
