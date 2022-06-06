class RestaurantMenuModel {
  String? imageName;
  String? name;
  int? price;
  bool isSelected;

  RestaurantMenuModel({
    this.imageName,
    this.price,
    required this.isSelected,
    required this.name,
  });
}

List<RestaurantMenuModel> getRestaurantmenu1 = [
  RestaurantMenuModel(
    imageName: 'assets/images/food/beef.png',
    price: 31,
    isSelected: false,
    name: 'Beef Sandwich',
  ),
  RestaurantMenuModel(
    imageName: 'assets/images/food/chicken.png',
    price: 27,
    isSelected: false,
    name: 'Chicken Sandwich',
  ),
  RestaurantMenuModel(
    imageName: 'assets/images/food/desert.png',
    price: 20,
    isSelected: false,
    name: 'Desert',
  ),
];
List<RestaurantMenuModel> getRestaurantmenu2 = [
  RestaurantMenuModel(
    imageName: 'assets/images/food/drinks.png',
    price: 23,
    isSelected: false,
    name: 'Drinks',
  ),
  RestaurantMenuModel(
    imageName: 'assets/images/food/sauces.png',
    price: 22,
    isSelected: false,
    name: 'Sauces',
  ),
  RestaurantMenuModel(
    imageName: 'assets/images/food/sides.png',
    price: 23,
    isSelected: false,
    name: 'Sides',
  ),
];
