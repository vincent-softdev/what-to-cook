import 'package:flutter/material.dart';
import 'package:what_to_cook_app/common/styles/shadows.dart';
import 'package:what_to_cook_app/models/card_model.dart';

class ItemCard extends StatelessWidget {
  final CardModel inputData;

  const ItemCard({super.key, required this.inputData});

  @override
  Widget build(BuildContext context) {
    return Card(
      // Clips the image and content to the card's rounded corners.
      clipBehavior: Clip.antiAlias,
      // The custom BoxShadow below handles the card's shadow.
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
              // BoxFit.cover fills the image area while preserving its ratio.
              // Parts of the image may be cropped to avoid distortion.
              child: Image.asset(inputData.imageUrl, fit: BoxFit.cover),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(12, 10, 12, 4),
              child: Text(
                inputData.name,
                // Prevents a long recipe name from changing the card height.
                maxLines: 1,
                // Shows ... when the name is longer than the available width.
                overflow: TextOverflow.ellipsis,
                style: Theme.of(context).textTheme.titleLarge,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: Text(
                inputData.description,
                // The description is limited so cards stay the same height.
                maxLines: 2,
                // Truncates extra text with ... instead of overflowing.
                overflow: TextOverflow.ellipsis,
                style: Theme.of(context).textTheme.bodyMedium,
              ),
            ),
            // Uses the remaining space so the time and price stay at the bottom.
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
