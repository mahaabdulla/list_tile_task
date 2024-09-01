import 'package:flutter/material.dart';
import 'package:list_tile/models/model_prodct.dart';

Widget buildProductTile(Product product) {
  return ListTile(
    contentPadding: const EdgeInsets.all(10),
    leading: SizedBox(
      width: 100,
      height: 300,
      child: Image.network(
        product.image,
        fit: BoxFit.cover,
      ),
    ),
    title: Text(product.title),
    subtitle: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(product.description),
        const SizedBox(height: 8),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Text('\$${product.price}',
                    style: const TextStyle(
                        decoration: TextDecoration.lineThrough)),
                const SizedBox(width: 8),
                Text('\$${product.price - product.descount}',
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.red)),
              ],
            ),
            Column(
              children: [
                ///colots
                ///
                const Text('Colors:'),
                Row(
                  children: [
                    Icon(
                      Icons.square,
                      color: product.color1,
                    ),
                    Icon(
                      Icons.square,
                      color: product.color2,
                    ),
                    Icon(
                      Icons.square,
                      color: product.color3,
                    ),
                  ],
                )
              ],
            ),
          ],
        ),
      ],
    ),
  );
}
