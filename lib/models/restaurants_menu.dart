class RestaurantMenuModel {
  String? imageName;
  int? price;
  bool isSelected;

  RestaurantMenuModel({
    this.imageName,
    this.price,
    required this.isSelected,
  });
}

List<RestaurantMenuModel> getRestaurantmenu1 = [
  RestaurantMenuModel(
    imageName: 'assets/images/food/beef.png',
    price: 25,
    isSelected: false,
  ),
  RestaurantMenuModel(
    imageName: 'assets/images/food/chicken.png',
    price: 25,
    isSelected: false,
  ),
  RestaurantMenuModel(
    imageName: 'assets/images/food/desert.png',
    price: 25,
    isSelected: false,
  ),
];
List<RestaurantMenuModel> getRestaurantmenu2 = [
  RestaurantMenuModel(
    imageName: 'assets/images/food/drinks.png',
    price: 25,
    isSelected: false,
  ),
  RestaurantMenuModel(
    imageName: 'assets/images/food/sauces.png',
    price: 25,
    isSelected: false,
  ),
  RestaurantMenuModel(
    imageName: 'assets/images/food/sides.png',
    price: 25,
    isSelected: false,
  ),
];
