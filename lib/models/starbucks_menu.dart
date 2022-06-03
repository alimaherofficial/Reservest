class StarbucksMenuModel {
  String? imageName;
  int? price;

  StarbucksMenuModel({
    this.imageName,
    this.price,
  });
}


List<StarbucksMenuModel> getStarbucksMenu1 = [
  StarbucksMenuModel(
    imageName: 'assets/images/starbucks/coffee.png',
    price: 25,
  ),
  StarbucksMenuModel(
    imageName: 'assets/images/starbucks/frappuccino.png',
    price: 25,
  ),

  
];
List<StarbucksMenuModel> getStarbucksMenu2 = [
  StarbucksMenuModel(
    imageName: 'assets/images/starbucks/hot_chocolate.png',
    price: 25,
  ),
  StarbucksMenuModel(
    imageName: 'assets/images/starbucks/smoothie.png',
    price: 25,
  ),

];
