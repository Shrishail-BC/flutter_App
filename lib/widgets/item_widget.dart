import 'package:flutter/material.dart';
import '../models/product.dart';

class ItemWidget extends StatelessWidget {
  final Item item;

  const ItemWidget({Key? key, required this.item});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Image.asset(item.image, width: 50, height: 50),
      title: Text(item.name),
      subtitle: Text(item.desc),
      trailing: Text('\$${item.price.toStringAsFixed(2)}'),
    );
  }
}