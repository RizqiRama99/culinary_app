import 'package:flutter/material.dart';
import 'package:culinary_apps/colors/colors.dart';
import 'package:culinary_apps/main.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.height * 0.125,
      margin: const EdgeInsets.only(bottom: mainPadding * 0.12),
      child: Stack(
        children: [
          Container(
            padding:
                const EdgeInsets.only(left: mainPadding, right: mainPadding),
            height: size.height * 0.20 - 30,
            // ignore: prefer_const_constructors
            decoration: BoxDecoration(
              color: greenPrimary,
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(50),
              ),
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 30,
            child: Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.symmetric(horizontal: mainPadding),
              margin: const EdgeInsets.symmetric(horizontal: mainPadding),
              height: 48,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                children: [
                  Expanded(
                    child: TextField(
                      onChanged: (value) {},
                      decoration: InputDecoration(
                        hintText: "Cari Menu Makanan",
                        hintStyle: TextStyle(
                          color: Colors.grey.withOpacity(0.3),
                        ),
                        enabledBorder: InputBorder.none,
                        focusedBorder: InputBorder.none,
                      ),
                    ),
                  ),
                  Icon(
                    Icons.search_rounded,
                    color: Colors.grey.withOpacity(0.7),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
