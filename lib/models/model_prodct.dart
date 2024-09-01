import 'dart:ui';

class Product {
  late String title, image, description;
  late Color color1, color2, color3;
  late double price, descount;

  Product(
      {required this.title,
      required this.image,
      required this.description,
      required this.color1,
      required this.color2,
      required this.color3,
      required this.price,
      required this.descount});
}
