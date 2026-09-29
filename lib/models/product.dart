import 'dart:convert';

class PhoneModel {
  static List<Item> items = <Item>[];
  //  static final List<Item> items = [
  //   Item(id: 1, name: "iPhone 12", desc: "Apple iPhone 12 with A14 Bionic chip", price: 999, color: "#FF0000", image: "assets/images/iphone12.png"),
  //   Item(id: 2, name: "Samsung Galaxy S21", desc: "Samsung Galaxy S21 with Exynos 2100", price: 899, color: "#FF0000", image: "assets/images/galaxy_s21.png"),
  //   Item(id: 3, name: "Google Pixel 5", desc: "Google Pixel 5 with Snapdragon 765G", price: 699, color: "#FF0000", image: "assets/images/pixel5.png"),
  // ];
}

class Item {
  final int id;
  final String name;  
  final String desc;
  final num price;
  final String color;
  final String image;

  Item({
    required this.id,
    required this.name,
    required this.desc,
    required this.price,
    required this.color,
    required this.image,
  });

  // factory Item.fromMap(Map<String, dynamic> map){
  //   return Item(
  //     id:map["id"],
  //     name:map["name"],
  //     desc:map["desc"],
  //     price:map["price"],
  //     color:map["color"],
  //     image:map["image"]
  //     );
  // }

  // toMap() =>{
  //   "id":id,
  //   "name":name,
  //   "desc":desc,
  //   "price":price,
  //   "color":color,
  //   "image":image
  // };

  Item copyWith({
    int? id,
    String? name,
    String? desc,
    num? price,
    String? color,
    String? image,
  }) {
    return Item(
      id: id ?? this.id,
      name: name ?? this.name,
      desc: desc ?? this.desc,
      price: price ?? this.price,
      color: color ?? this.color,
      image: image ?? this.image,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'desc': desc,
      'price': price,
      'color': color,
      'image': image,
    };
  }

  factory Item.fromMap(Map<String, dynamic> map) {
    return Item(
      id: map['id'] as int,
      name: map['name'] as String,
      desc: map['desc'] as String,
      price: map['price'] as num,
      color: map['color'] as String,
      image: map['image'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory Item.fromJson(String source) => Item.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'Item(id: $id, name: $name, desc: $desc, price: $price, color: $color, image: $image)';
  }

  @override
  bool operator ==(covariant Item other) {
    if (identical(this, other)) return true;
  
    return 
      other.id == id &&
      other.name == name &&
      other.desc == desc &&
      other.price == price &&
      other.color == color &&
      other.image == image;
  }

  @override
  int get hashCode {
    return id.hashCode ^
      name.hashCode ^
      desc.hashCode ^
      price.hashCode ^
      color.hashCode ^
      image.hashCode;
  }
}
