import 'package:flutter/material.dart';

class ProductCreatePage extends StatefulWidget {
  final Function addProduct;

  const ProductCreatePage(this.addProduct, {super.key});

  @override
  State<StatefulWidget> createState() {
    return _ProductCreatePageState();
  }
}

class _ProductCreatePageState extends State<ProductCreatePage> {
  late String titleValue;
  late String descriptionValue;
  late double priceValue;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10.0),
      child: ListView(
        children: <Widget>[
          TextField(
            decoration: const InputDecoration(labelText: 'Product Title'),
            onChanged: (String value) {
              setState(() {
                titleValue = value;
              });
            },
          ),
          TextField(
            maxLines: 4,
            decoration: const InputDecoration(labelText: 'Product Description'),
            onChanged: (String value) {
              setState(() {
                descriptionValue = value;
              });
            },
          ),
          TextField(
            keyboardType: TextInputType.number,
            decoration: const InputDecoration(labelText: 'Product Price'),
            onChanged: (String value) {
              setState(() {
                priceValue = double.parse(value);
              });
            },
          ),
          const SizedBox(
            height: 10.0,
          ),
          ElevatedButton(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.resolveWith<Color?>(
                (Set<MaterialState> states) {
                  if (states.contains(MaterialState.pressed)) {
                    return Theme.of(context)
                        .colorScheme
                        .primary
                        .withOpacity(0.5);
                  }
                  return null; // Use the component's default.
                },
              ),
            ),
            onPressed: () {
              final Map<String, dynamic> product = {
                'title': titleValue,
                'description': descriptionValue,
                'price': priceValue,
                'image': 'assets/food.jpg'
              };
              widget.addProduct(product);
              Navigator.pushReplacementNamed(context, '/');
            },
            child: const Text('Save'),
          )
        ],
      ),
    );
  }
}
