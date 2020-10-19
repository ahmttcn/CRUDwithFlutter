import 'package:flutter/material.dart';
import 'package:sqflite_demo/models/product.dart';

class ProductDetail extends StatefulWidget {
  Product product;
  ProductDetail(this.product);

  @override
  State<StatefulWidget> createState() {
    return _ProductDetailState(product);
  }
}

enum Options { delete, update }

class _ProductDetailState extends State {
  Product product;
  _ProductDetailState(this.product);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Ürün detayı: ${product.name}"),
        actions: <Widget>[
          PopupMenuButton<Options>(
            color: Colors.black12,
            itemBuilder: (BuildContext context) => <PopupMenuEntry<Options>>[
              PopupMenuItem<Options>(
                value: Options.delete,
                child: Row(
                  children: [Icon(Icons.delete), Text("Sil")],
                ),
              ),
              PopupMenuItem<Options>(
                  value: Options.update, child: Text("Güncelle")),
            ],
          )
        ],
      ),
      body: buildProductDetail(),
    );
  }

  buildProductDetail() {}
}
