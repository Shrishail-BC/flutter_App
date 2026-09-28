import 'package:flutter/material.dart';
import '../widgets/drawer.dart';
import '../models/product.dart';
import '../widgets/item_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Dashboard'),
        ),
        body: ListView.builder(
          itemCount: PhoneModel.items.length,
          itemBuilder: (context, index) {
            final item = PhoneModel.items[index];
            return ItemWidget(item: PhoneModel.items[index],
            );
          },
        ),
        drawer: Mydrawer(),
      );
  }
}