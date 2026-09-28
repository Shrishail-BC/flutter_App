class Item{
  final int id;
  final String name;  
  final String desc;
  final num price;
  final String color;
  final String image;

  Item({ required this.id, required this.name, required this.desc, required this.price, required this.color, required this.image});
}

final products = [
  Item(id: 1, name: "iPhone 12", desc: "Apple iPhone 12 with A14 Bionic chip", price: 999, color: "#FF0000", image: "assets/images/iphone12.png"),
  Item(id: 2, name: "Samsung Galaxy S21", desc: "Samsung Galaxy S21 with Exynos 2100", price: 899, color: "#FF0000", image: "assets/images/galaxy_s21.png"),
  Item(id: 3, name: "Google Pixel 5", desc: "Google Pixel 5 with Snapdragon 765G", price: 699, color: "#FF0000", image: "assets/images/pixel5.png"),
];