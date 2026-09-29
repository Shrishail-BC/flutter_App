import 'package:flutter/material.dart';
import '../models/product.dart';

class ItemWidget extends StatelessWidget {
  final Item item;

  const ItemWidget({Key? key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
    child: ListTile(
      onTap: () {
        print('Tapped on ${item.name}');
      },
      leading: Image.asset(item.image, width: 50, height: 50),
      title: Text(item.name),
      subtitle: Text(item.desc),
      trailing: Text('\$${item.price.toStringAsFixed(2)}', style: TextStyle(color: Colors.deepPurple, fontWeight: FontWeight.bold )),
    ),
    );
  }
}