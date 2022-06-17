class StarbucksMenuModel {
  String? imageName;
  String? name;
  double? price;
  int quantity;
  bool isSelected;

  StarbucksMenuModel({
    this.imageName,
    this.name,
    this.price,
    required this.isSelected,
    required this.quantity,
  });
}

List<StarbucksMenuModel> getStarbucksMenu1 = [
  StarbucksMenuModel(
    imageName: 'assets/images/starbucks/coffee.png',
    price: 15,
    isSelected: false,
    name: 'coffee',
    quantity: 1,
  ),
  StarbucksMenuModel(
    imageName: 'assets/images/starbucks/frappuccino.png',
    price: 23,
    isSelected: false,
    name: 'frappuccino',
    quantity: 1,
  ),
];
List<StarbucksMenuModel> getStarbucksMenu2 = [
  StarbucksMenuModel(
    imageName: 'assets/images/starbucks/hot_chocolate.png',
    price: 27,
    isSelected: false,
    name: 'hot chocolate',
    quantity: 1,
  ),
  StarbucksMenuModel(
    imageName: 'assets/images/starbucks/smoothie.png',
    price: 33,
    isSelected: false,
    name: 'smoothie',
    quantity: 1,
  ),
];
