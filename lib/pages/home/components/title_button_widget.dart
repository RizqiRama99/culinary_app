import 'package:flutter/material.dart';

import 'package:culinary_apps/main.dart';

class TitlewithButtonSection extends StatelessWidget {
  const TitlewithButtonSection(
      {Key? key, required this.flatButtonStyle, required this.title})
      : super(key: key);

  final ButtonStyle flatButtonStyle;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: mainPadding,
        vertical: 8,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          TitleSection(
            title: title,
          ),
          ElevatedButton(
            onPressed: () {},
            style: flatButtonStyle,
            child: const Text("More"),
          )
        ],
      ),
    );
  }
}

class TitleSection extends StatelessWidget {
  const TitleSection({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 28,
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Text(
              title,
              style: const TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 85, 161, 14)),
            ),
          )
        ],
      ),
    );
  }
}
