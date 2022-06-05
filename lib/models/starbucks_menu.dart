class StarbucksMenuModel {
  String? imageName;
  int? price;
    bool isSelected;

  StarbucksMenuModel({
    this.imageName,
    this.price,
    required this.isSelected,

  });
}


List<StarbucksMenuModel> getStarbucksMenu1 = [
  StarbucksMenuModel(
    imageName: 'assets/images/starbucks/coffee.png',
    price: 25,    isSelected: false,

  ),
  StarbucksMenuModel(
    imageName: 'assets/images/starbucks/frappuccino.png',
    price: 25,    isSelected: false,

  ),

  
];
List<StarbucksMenuModel> getStarbucksMenu2 = [
  StarbucksMenuModel(
    imageName: 'assets/images/starbucks/hot_chocolate.png',
    price: 25,    isSelected: false,

  ),
  StarbucksMenuModel(
    imageName: 'assets/images/starbucks/smoothie.png',
    price: 25,    isSelected: false,

  ),

];
