import 'package:flutter/material.dart';
import 'package:my_app/models/product.dart';

class HomeDetailsPage extends StatelessWidget {
   final Item details;
  const HomeDetailsPage({super.key, required this.details});


  @override
  Widget build(BuildContext context) {
    return 
    Scaffold(
        appBar: AppBar(
          title: Text('Details'),
        ),
        body: Padding(padding: const EdgeInsets.all(2.0),
        child:Container(
          width: MediaQuery.sizeOf(context).width * 1.0,
          margin: EdgeInsets.all(5),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(details.image, height: 200,),
          Text(details.name, style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
          Text(details.desc, style: TextStyle(fontSize: 16),),
          Text('\$${details.price.toStringAsFixed(2)}', style: TextStyle(fontSize: 18, color: Colors.deepPurple),),
        ],
      ),
      ),
      ),
    );
  }
}