class RestaurantMenuModel {
  String? imageName;
  String? name;
  int? price;
  int? quantity ;
  bool isSelected;

  RestaurantMenuModel({
    this.imageName,
    this.price,
    required this.isSelected,
    required this.name,
    required this.quantity,
  });
}

List<RestaurantMenuModel> getRestaurantmenu1 = [
  RestaurantMenuModel(
    imageName: 'assets/images/food/beef.png',
    price: 31,
    isSelected: false,
    name: 'Beef Sandwich',
    quantity: 1,
  ),
  RestaurantMenuModel(
    imageName: 'assets/images/food/chicken.png',
    price: 27,
    isSelected: false,
    name: 'Chicken Sandwich',
    quantity: 1,
  ),
  RestaurantMenuModel(
    imageName: 'assets/images/food/desert.png',
    price: 20,
    isSelected: false,
    name: 'Desert',
    quantity: 1,
  ),
];
List<RestaurantMenuModel> getRestaurantmenu2 = [
  RestaurantMenuModel(
    imageName: 'assets/images/food/drinks.png',
    price: 23,
    isSelected: false,
    name: 'Drinks',
    quantity: 1,
  ),
  RestaurantMenuModel(
    imageName: 'assets/images/food/sauces.png',
    price: 22,
    isSelected: false,
    name: 'Sauces',
    quantity: 1,
  ),
  RestaurantMenuModel(
    imageName: 'assets/images/food/sides.png',
    price: 23,
    isSelected: false,
    name: 'Sides',
    quantity: 1,
  ),
];
