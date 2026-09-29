import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../widgets/drawer.dart';
import '../models/product.dart';
import '../widgets/item_widget.dart';
import 'dart:convert';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

@override
  void initState() {  
    super.initState();
    loadData();
  }

  loadData() async {
    await Future.delayed(Duration(seconds: 2));
    final data = await rootBundle.loadString("assets/files/samples.json");
    final decodedDate =jsonDecode(data);
    var productData= decodedDate["products"];
    PhoneModel.items = productData
    .map<Item>((item) => Item.fromMap(item))
    .toList();
     setState(() {});
  }

  newMethod(String data) => jsonDecode(data);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Dashboard'),
        ),
        body: Padding(padding: const EdgeInsets.all(2.0),
        child: (PhoneModel.items != null && PhoneModel.items.isNotEmpty) ? ListView.builder(
          itemCount: PhoneModel.items.length,
          itemBuilder: (context, index) {
            final item = PhoneModel.items[index];
            return ItemWidget(item: PhoneModel.items[index],
            );
          },
        ) : Center(
          child: CircularProgressIndicator(),
        )
        ),
        drawer: Mydrawer(),
      );
  }
}

