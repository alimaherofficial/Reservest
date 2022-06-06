class StarbucksMenuModel {
  String? imageName;
  String? name;
  double? price;
  bool isSelected;

  StarbucksMenuModel({
    this.imageName,
    this.name,
    this.price,
    required this.isSelected,
  });
}

List<StarbucksMenuModel> getStarbucksMenu1 = [
  StarbucksMenuModel(
    imageName: 'assets/images/starbucks/coffee.png',
    price: 15,
    isSelected: false,
    name: 'coffee',
  ),
  StarbucksMenuModel(
    imageName: 'assets/images/starbucks/frappuccino.png',
    price: 23,
    isSelected: false,
    name: 'frappuccino',
  ),
];
List<StarbucksMenuModel> getStarbucksMenu2 = [
  StarbucksMenuModel(
    imageName: 'assets/images/starbucks/hot_chocolate.png',
    price: 27,
    isSelected: false,
    name: 'hot chocolate',
  ),
  StarbucksMenuModel(
    imageName: 'assets/images/starbucks/smoothie.png',
    price: 33,
    isSelected: false,
    name: 'smoothie',
  ),
];
