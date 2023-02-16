import 'package:flutter/material.dart';

import './products.dart';

class ProductManager extends StatelessWidget {
  final List<Map<String, dynamic>> products;

  const ProductManager(this.products, {super.key});

  @override
  Widget build(BuildContext context) {
    print('[ProductManager State] build()');
    return Column(
      children: [Expanded(child: Products(products))],
    );
  }
}
