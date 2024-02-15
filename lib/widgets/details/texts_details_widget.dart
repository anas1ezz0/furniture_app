import 'package:flutter/widgets.dart';
import 'package:furniture_app/models/product_model.dart';

class TextsDetailsWidget extends StatelessWidget {
  const TextsDetailsWidget({
    super.key,
    required this.product,
  });
  final ProductsModel product;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          product.category!,
          style: const TextStyle(fontSize: 18),
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          product.title!,
          style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        const SizedBox(
          height: 15,
        ),
        Text(
          // ' price\n\$ 5000',
          "\$${product.price!.toString()} ",
          style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        const SizedBox(
          height: 18,
        ),
        const Text(
          'Available colors',
          style: TextStyle(fontSize: 18),
        ),
        const SizedBox(
          height: 5,
        ),
      ],
    );
  }
}
