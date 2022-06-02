class RestaurantsModel {
  String? imageName;
  String? pageName;

  RestaurantsModel({
    this.imageName,
    this.pageName,
  });

 
}
List<RestaurantsModel> getRestaurants = [
      RestaurantsModel(
        imageName: 'assets/images/mac.png',
        pageName: 'RestaurantsMenu',
      ),
      RestaurantsModel(
        imageName: 'assets/images/chickenfila.png',
        pageName: 'RestaurantsMenu',
      ),
      RestaurantsModel(
        imageName: 'assets/images/starbucks.png',
        pageName: 'RestaurantsMenu',
      ),
    ];