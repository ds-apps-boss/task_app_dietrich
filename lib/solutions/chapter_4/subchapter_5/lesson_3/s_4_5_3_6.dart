import 'package:flutter/material.dart';


class Product {
  final String name;
  final double price;

  const Product({
    required this.name,
    required this.price, 
  });
}

class S4536 extends StatelessWidget {
  const S4536({super.key});

  
  @override
  Widget build(BuildContext context) {

    final List<Product> products =[
      const Product(name: "BugFix", price: 123.45),
      const Product(name: "Pi-Rechner", price: 3.14),
      const Product(name: "Zero-Divider", price: 0.01),
      const Product(name: "Null-Pointer Exception", price: 3222.51),
      const Product(name: "RND-Generator", price: 94.50),
    ];

    
    return ListView.builder(
      shrinkWrap: true,
      //physics: true ? const NeverScrollableScrollPhysics() :null,
      itemCount: products.length,
      itemBuilder: (context, index) {
        final product = products[index];
        return ListTile(
          leading: const Icon(Icons.shopping_cart),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(product.name),
              Text("${product.price.toStringAsFixed(2)} €",),
            ],
          )
          //title: Text(product.name),
          //subtitle: Text(product.price.toStringAsFixed(2)),
        );
      }, 
    );
  }
}
