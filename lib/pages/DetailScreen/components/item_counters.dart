import 'package:culinary_apps/colors/colors.dart';
import 'package:culinary_apps/main.dart';
import 'package:flutter/material.dart';

class ItemCounter extends StatefulWidget {
  const ItemCounter({Key? key}) : super(key: key);

  @override
  State<ItemCounter> createState() => _ItemCounterState();
}

class _ItemCounterState extends State<ItemCounter> {
  int count = 1;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        SizedBox(
          width: 50,
          height: 50,
          child: OutlinedButton(
            style: OutlinedButton.styleFrom(
              padding: const EdgeInsets.all(0),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
              side: const BorderSide(
                color: Colors.red,
                style: BorderStyle.solid,
                width: 2.5,
              ),
            ),
            onPressed: () {
              if (count > 1) {
                setState(() {
                  count--;
                });
              }
            },
            child: const Icon(
              Icons.remove_outlined,
              color: Colors.red,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: mainPadding / 2),
          child: Text(
            count.toString().padLeft(1, "0"),
            style: Theme.of(context).textTheme.headline6,
          ),
        ),
        SizedBox(
          width: 50,
          height: 50,
          child: OutlinedButton(
            style: OutlinedButton.styleFrom(
              padding: const EdgeInsets.all(0),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
              side: const BorderSide(
                color: Colors.green,
                style: BorderStyle.solid,
                width: 2.5,
              ),
            ),
            onPressed: () {
              setState(() {
                count++;
              });
            },
            child: const Icon(
              Icons.add,
              color: greenPrimary,
            ),
          ),
        ),
      ],
    );
  }
}
