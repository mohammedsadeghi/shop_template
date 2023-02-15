import 'package:flutter/material.dart';

class ProductControl extends StatelessWidget {
  final Function addProduct;

  const ProductControl(this.addProduct, {super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
          backgroundColor:
              MaterialStatePropertyAll(Theme.of(context).primaryColor)),
      onPressed: () {
        addProduct({'title': 'Chocolate', 'image': 'assets/food.jpg'});
      },
      child: const Text('Add Product'),
    );
  }
}
