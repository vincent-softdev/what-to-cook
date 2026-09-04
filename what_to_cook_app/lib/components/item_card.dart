import 'package:flutter/material.dart';
import 'package:what_to_cook_app/common/styles/shadows.dart';
import 'package:what_to_cook_app/models/card_model.dart';

class ItemCard extends StatelessWidget {
  final CardModel inputData;

  const ItemCard({super.key, required this.inputData});

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      elevation: 0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: DecoratedBox(
        decoration: BoxDecoration(boxShadow: [TShadowStyle.verticalShadow]),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 150,
              width: double.infinity,
              child: Image.asset(inputData.imageUrl, fit: BoxFit.cover),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(12, 10, 12, 4),
              child: Text(
                inputData.name,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: Theme.of(context).textTheme.titleLarge,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: Text(
                inputData.description,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: Theme.of(context).textTheme.bodyMedium,
              ),
            ),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.fromLTRB(12, 6, 12, 12),
              child: Text(
                '${inputData.cookingTime} min • \$${inputData.estimatedPrice.toStringAsFixed(2)}',
                style: Theme.of(context).textTheme.labelLarge,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
