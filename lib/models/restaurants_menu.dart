class RestaurantMenuModel {
  String? imageName;
  int? price;

  RestaurantMenuModel({
    this.imageName,
    this.price,
  });
}

List<RestaurantMenuModel> getRestaurantmenu1 = [
  RestaurantMenuModel(
    imageName: 'assets/images/food/beef.png',
    price: 25,
  ),
  RestaurantMenuModel(
    imageName: 'assets/images/food/chicken.png',
    price: 25,
  ),
  RestaurantMenuModel(
    imageName: 'assets/images/food/desert.png',
    price: 25,
  ),
  
];
List<RestaurantMenuModel> getRestaurantmenu2 = [
  RestaurantMenuModel(
    imageName: 'assets/images/food/drinks.png',
    price: 25,
  ),
  RestaurantMenuModel(
    imageName: 'assets/images/food/sauces.png',
    price: 25,
  ),
  RestaurantMenuModel(
    imageName: 'assets/images/food/sides.png',
    price: 25,
  ),
];
