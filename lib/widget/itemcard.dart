import 'package:flutter/material.dart';
import 'package:strategic/widget/product.dart';
import '../app/const/constant.dart';

class ItemCard extends StatelessWidget {
  final Product  product;
  final Function press;
  const  ItemCard({
    Key? key,
    required this.product,
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return GestureDetector(
      onTap: ()=> press,
      child: Expanded(
        child: Column(

          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            Container(
              padding: EdgeInsets.all(kDefaultPadding),
              height: 120,
              width: 140,
              decoration: BoxDecoration(
                color: product.color,
                borderRadius: BorderRadius.circular(16),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: kDefaultPadding / 4),
              child: Text(product.title,
                style: const TextStyle(color: kLightColor),
              ),
            ),
            Text('\$${product.price}',style: const TextStyle(fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}