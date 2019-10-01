import 'package:flutter/material.dart';

class Product_Controle extends StatelessWidget {
  final Function addProducts;
  Product_Controle(this.addProducts);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return RaisedButton(
      color: Theme.of(context).primaryColor,
      onPressed: () {
        addProducts({'title': 'Choklate', 'image': 'Assets/food.jpg'});
      },
      child: Text('Add Product'),
    );
  }
}
