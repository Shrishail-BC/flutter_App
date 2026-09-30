import 'package:flutter/material.dart';
import '../models/product.dart';

class ItemWidget extends StatelessWidget {
  final Item item;

  const ItemWidget({Key? key, required this.item});

  @override
  Widget build(BuildContext context) {
    return
     Container(
      width: MediaQuery.sizeOf(context).width * 1.0,
      margin: EdgeInsets.all(5),
      padding: EdgeInsets.all(5),
      decoration: BoxDecoration(
        border: Border.all(),
        borderRadius: BorderRadius.circular(8),
        ),
      child:Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        // Padding(padding: EdgeInsetsGeometry.all(5)),
        Image.asset(
          item.image, height: 80,
          ),
          Expanded(
            child:  Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(item.name, 
            style: TextStyle(
              color: Colors.black,
             fontWeight: FontWeight.bold,
             fontSize: 16,
              ),
            ),
            Text(item.desc, 
            style: TextStyle(
              color: Colors.black,
             fontWeight: FontWeight.normal,
            ),),
            Container(
              width: MediaQuery.sizeOf(context).width * 1.0,
              child: Padding(padding: EdgeInsetsDirectional.fromSTEB(
                            10.0, 5.0, 0.0, 0.0),
              child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
              Text('\$${item.price.toStringAsFixed(2)}', 
              style: TextStyle(
                color: Colors.deepPurple,
                fontWeight: FontWeight.bold,
              fontSize: 16,
              ),
            ),
              ElevatedButton(
                onPressed: () {
                // Navigator.pushNamed(context, MyRountes.homeRoute);
                },
              child: Text('BUY', 
              style: TextStyle(
                fontSize: 14, 
                fontWeight: FontWeight.bold, 
                color: Colors.white
                ),
              ),
              style: TextButton.styleFrom(
                backgroundColor: Colors.purple,
              ),
            ),
              ],
            ),
          )
          ),
          ],
          )),
      ],
    ),
    );
    // Card(
    //   elevation: 2,
    //   child: ListTile(
    //   onTap: () {
    //     print('Tapped on ${item.name}');
    //   },
    //   leading: Image.asset(item.image, width: 50, height: 50),
    //   title: Text(item.name),
    //   subtitle: Text(item.desc),
    //   trailing: Text('\$${item.price.toStringAsFixed(2)}', style: TextStyle(color: Colors.deepPurple, fontWeight: FontWeight.bold )),
    // ),
    // );
  }
}