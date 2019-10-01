import 'package:flutter/material.dart';
import './products.dart';
import './product_control.dart';

class ProductManager extends StatefulWidget {
  final Map<String, String> startingProduct;
  ProductManager({this.startingProduct}) {
    print('[productManager] Constructor');
  }
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    print('[productManager] createState');
    return _ProductManagerState();
  }
}

class _ProductManagerState extends State<ProductManager> {
  final List<Map<String, String>> _products = [];
  @override
  void initState() {
    // TODO: implement initState
    if (widget.startingProduct != null) {
      print('[productManager] initState');
      _products.add(widget.startingProduct);
    }
    super.initState();
  }

  @override
  void didUpdateWidget(ProductManager oldWidget) {
    // TODO: implement didUpdateWidget
    print('[productManager] didUpdateWidget');
    super.didUpdateWidget(oldWidget);
  }

  void _addProducts(Map<String, String> product) {
    setState(() {
      _products.add(product);
    });
  }

  @override
  Widget build(BuildContext context) {
    print('[productManager] build');
    // TODO: implement build
    return Column(
      children: [
        Container(
          margin: EdgeInsets.all(10.0),
          child: Product_Controle(_addProducts),
        ),
        Expanded(child: Products(_products))
      ],
    );
  }
}
