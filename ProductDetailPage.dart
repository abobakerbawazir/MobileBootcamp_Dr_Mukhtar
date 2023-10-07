import 'dart:ui';

import 'package:flutter/material.dart';

import 'ProductModel.dart';

class ProductDetailPage extends StatelessWidget {
  final ProductModel product;

  ProductDetailPage({required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Product Details'),
      ),
       body: Column(
              children: [Image.network("${product.thumbnail}"),
                ListTile(
            //       onTap: () {
            //   Navigator.push(
            //     context,
            //     MaterialPageRoute(
            //       builder: (context) => ProductDetailPage(product: product)
            //     ),
            //   );
            // },
                  title: Column(
                    children: [
                      Text("${product.title}",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),Text("")
                    ],
                  ),
                  subtitle: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text("description : ${product.description} .",style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),),
                      Text('Price: ${product.price}',style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),),
                      Text('Discount Percentage: ${product.discountPercentage}',style: TextStyle(color: Colors.green,fontSize: 17,fontWeight: FontWeight.bold),),
                      Text('Rating: ${product.rating}',style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),),
                      Text('Stock: ${product.stock}',style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),),
                      Text('Brand: ${product.brand}',style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),),
                      Text('Category: ${product.category}',style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),),
                    ],
                  ),
                ),
              ],
            
          ),
       //Column(
      //   crossAxisAlignment: CrossAxisAlignment.start,
      //   children: <Widget>[
      //     Image.network("${product.thumbnail}"),
      //     Text('Title: ${product.title}'),
      //     Text('Description: ${product.description}'),
      //     Text('Price: ${product.price}'),
      //     Text('Discount Percentage: ${product.discountPercentage}'),
      //     Text('Rating: ${product.rating}'),
      //     Text('Stock: ${product.stock}'),
      //     Text('Brand: ${product.brand}'),
      //     Text('Category: ${product.category}'),
      //   ],
      // ),
    );
  }
}
