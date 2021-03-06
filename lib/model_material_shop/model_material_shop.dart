class MaterialShop {
  final String id;
  final String title;
  final String description;
  final double price;
  final String imageUrl;
  final String country;

  MaterialShop(
      {required this.country,
      required this.id,
      required this.title,
      required this.description,
      required this.price,
      required this.imageUrl});
}
