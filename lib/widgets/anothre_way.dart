import 'package:flutter/material.dart';
import 'package:list_tile/models/model_prodct.dart';

Widget rowListTile(Product p) {
  return Container(
    width: double.infinity,
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: EdgeInsets.all(5),
          width: 100,
          height: 150,
          child: Image.network(
            p.image,
            fit: BoxFit.cover,
          ),
        ),
        Expanded(
          child: ListTile(
            title: Text(
              '${p.title}',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '${p.description}',
                  style: TextStyle(fontSize: 14),
                  maxLines: null,
                ),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '${p.price}\$',
                          style: TextStyle(
                            decoration: TextDecoration.lineThrough,
                          ),
                        ),
                        Text(
                          '${p.descount}\$',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.red,
                            fontSize: 20,
                          ),
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Colors'),
                        Row(
                          children: [
                            Icon(Icons.square, color: p.color1),
                            Icon(Icons.square, color: p.color2),
                            Icon(Icons.square, color: p.color3),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    ),
  );
}
