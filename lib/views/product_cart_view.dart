import 'package:flutter/material.dart';

import 'package:list_tile/models/model_prodct.dart';
import 'package:list_tile/widgets/anothre_way.dart';
import 'package:list_tile/widgets/app_drawe.dart';
import 'package:list_tile/widgets/product_widget.dart';

class ProductCardView extends StatelessWidget {
  ProductCardView({super.key});

  final List<Product> plist = [
    Product(
      title: 'Iphone 7 Pro Max',
      image:
          'https://www.samsungplaza.com.np/public/files/F44F8DE4D633B8E-SM-M556_Light-Green.png',
      description: 'New collection of color with good price',
      price: 3000,
      color1: Colors.blue,
      color2: Colors.green,
      color3: Colors.yellow,
      descount: 90,
    ),
    Product(
      title: 'Viov 321',
      image:
          'https://5.imimg.com/data5/SELLER/Default/2023/3/296178163/GX/GL/SD/186724856/vivo-mobile-phone-1000x1000.jpg',
      description:
          'This is a description of the product showing all information about it. '
          'You can add more.',
      price: 5000,
      color1: Colors.orange,
      color2: Colors.purple,
      color3: Colors.pink,
      descount: 190,
    ),
    Product(
      title: 'Galaxy A51',
      image:
          'https://www.samsungplaza.com.np/public/files/A648EA871B657AC-SM-F741_ZFlip6_Blue-Tabletop.png',
      //  image: '  https://img.etimg.com/photo/msid-98898306/iqoo-neo-6-5g.jpg',
      description: 'New collection of color with good price',
      price: 4000,
      color1: Colors.blue,
      color2: Colors.green,
      color3: Colors.yellow,
      descount: 110,
    ),
    Product(
      title: 'Galxy Max',
      image:
          'https://tiimg.tistatic.com/fp/1/007/574/vivo-mobile-phone-7-38mm-ultra-smooth-body-170g-light-2-5d-adjusted-outline-for-a-great-hold-703.jpg',
      description: 'New collection of color with good price',
      price: 2500,
      color1: Colors.orange,
      color2: Colors.black,
      color3: Colors.grey,
      descount: 200,
    ),
    Product(
      title: 'Iphone 7 Pro Max',
      image:
          'https://www.samsungplaza.com.np/public/files/EF2635BDD550447-SM-F956_ZFold6_Gray.png',
      description:
          'This is a description of the product showing all information about it. '
          'You can add more.',
      price: 2000,
      color1: Colors.blue,
      color2: Colors.purple,
      color3: Colors.pink,
      descount: 120,
    ),
    Product(
      title: 'Iphone 7 Pro Max',
      image:
          'https://www.samsungplaza.com.np/public/files/437D725739BA59F-SM-F956_ZFold6_Openback.png',
      description: 'New collection of color with good price',
      price: 3000,
      color1: Colors.blue,
      color2: Colors.green,
      color3: Colors.yellow,
      descount: 90,
    ),
    Product(
      title: 'Iphone 7 Pro Max',
      image:
          'https://www.samsungplaza.com.np/public/files/51B8F8CBA86610E-A546E-Green.png',
      description: 'This is a description ',
      price: 1900,
      color1: Colors.orange,
      color2: Colors.purple,
      color3: Colors.pink,
      descount: 60,
    ),
    Product(
      title: 'Iphone 7 Pro Max',
      image:
          'https://www.samsungplaza.com.np/public/files/F44F8DE4D633B8E-SM-M556_Light-Green.png',
      description: 'New collection of color with good price',
      price: 200,
      color1: Colors.red,
      color2: Colors.black,
      color3: Colors.pink,
      descount: 180,
    ),
    Product(
      title: 'Iphone 7 Pro Max',
      image:
          'https://www.samsungplaza.com.np/public/files/A648EA871B657AC-SM-F741_ZFlip6_Blue-Tabletop.png',
      description: 'New collection of color with good price',
      price: 2300,
      color1: Colors.blue,
      color2: Colors.purple,
      color3: Colors.pink,
      descount: 60,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // coustom appDawer
      drawer: AppDrawer(),
      appBar: AppBar(
        title: const Text('Products'),
        backgroundColor: const Color.fromARGB(255, 104, 180, 243),
      ),
      body: ListView(
        children:
            // plist.map((product) => buildProductTile(product)).toList(),

            //anoter way  to make the size of widget fit with list tile
            plist.map((product) => rowListTile(product)).toList(),
      ),
    );
  }
}
