import 'package:flutter/material.dart';
import 'package:what_to_cook_app/models/card_model.dart';

class ItemDetail extends StatelessWidget {
  final CardModel itemDetail;

  const ItemDetail({super.key, required this.itemDetail});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(itemDetail.name)),
      body: Center(child: Text(itemDetail.description)),
    );
  }
}
