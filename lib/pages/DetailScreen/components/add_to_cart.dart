import 'package:culinary_apps/main.dart';
import 'package:flutter/material.dart';

class AddToCartWidget extends StatelessWidget {
  const AddToCartWidget({
    Key? key,
    required this.flatButtonStyle,
  }) : super(key: key);

  final ButtonStyle flatButtonStyle;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: mainPadding,
          vertical: 10,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Container(
              height: 50,
              width: 60,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.green.shade600, width: 3),
                borderRadius: BorderRadius.circular(20),
              ),
              child: IconButton(
                icon: const Icon(Icons.shopping_cart_outlined),
                color: Colors.green.shade500,
                iconSize: 26,
                onPressed: () {},
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 12),
              child: SizedBox(
                height: 50,
                width: MediaQuery.of(context).size.width * 0.5,
                child: ElevatedButton(
                  style: flatButtonStyle,
                  child: const Text(
                    "Add to Cart",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                  onPressed: () {},
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
