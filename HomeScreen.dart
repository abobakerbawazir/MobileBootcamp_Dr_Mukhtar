import 'package:flutter/material.dart';

import 'ProductController.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});
  ProductController productController = ProductController();

  @override
  Widget build(BuildContext context) {
    productController.getAllProducts();
    return Scaffold(
      appBar: AppBar(
        title: Text('Product List'),
      ),
      drawer: Drawer(
          child: Column(
        children: [
          UserAccountsDrawerHeader(
            currentAccountPicture: CircleAvatar(
              backgroundImage: AssetImage("assets/images/Abobaker.jpg"),
            ),
            accountEmail: Text("Abobaker Ba wazir@gmail.com"),
            accountName: Text("Abobaker Ba wazir"),
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text("Home Page"),
            onTap: () {
              Navigator.pushNamed(context, "/home");
            },
          ),
          ListTile(
            leading: Icon(Icons.lock),
            title: Text("Login"),
            onTap: () {
              Navigator.pushNamed(context, "/login");
            },
          ),
        ],
      )),
      body: ListView.builder(
        itemCount: productController.products.length,
        itemBuilder: (context, index) {
          final product = productController.products[index];
          // ProductModel product = productController.products[index];
          return Column(
            children: [
              ListTile(
                onTap: () {
                  Navigator.pushNamed(context, "/details",
                      arguments: productController.products[index]);
                },
                leading: Container(
                    width: 100,
                    height: 100,
                    child: Image.network(
                        "${productController.products[index].thumbnail}"),),
                title: Column(crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("${productController.products[index].title} ",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                  ],
                ),
                subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text("${productController.products[index].description}"),
                    Text('Price: ${productController.products[index].price}'),
                    Text(
                        'Discount Percentage: ${productController.products[index].discountPercentage}',style: TextStyle(color: Colors.green),),
                    Text('Rating: ${productController.products[index].rating}'),
                    Text('Stock: ${productController.products[index].stock}'),
                    Text('Brand: ${productController.products[index].brand}'),
                    Text(
                        'Category: ${productController.products[index].category}'),
                  ],
                ),
              ),Container(
                height: 1,color: Colors.black,
              )
            ],
          );
        },
      ),
    );
  }
}
